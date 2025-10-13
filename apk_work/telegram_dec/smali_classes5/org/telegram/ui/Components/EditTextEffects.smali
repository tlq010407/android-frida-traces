.class public abstract Lorg/telegram/ui/Components/EditTextEffects;
.super Landroid/widget/EditText;
.source "SourceFile"


# static fields
.field private static final SPOILER_TIMEOUT:I = 0x2710

.field private static allowHackingTextCanvasCache:Ljava/lang/Boolean;


# instance fields
.field private animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

.field private animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

.field private clipToPadding:Z

.field public drawAnimatedEmojiDrawables:Z

.field private editedWhileQuoteUpdating:Z

.field private emojiColor:Ljava/lang/Integer;

.field private isSpoilersRevealed:Z

.field private lastLayout:Landroid/text/Layout;

.field private lastRippleX:F

.field private lastRippleY:F

.field private lastText2Length:I

.field private lastTextColor:I

.field private lastTextLength:I

.field protected offsetY:F

.field private path:Landroid/graphics/Path;

.field private postedSpoilerTimeout:Z

.field private quoteBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/QuoteSpan$Block;",
            ">;"
        }
    .end annotation
.end field

.field private quoteBlocksUpdating:Z

.field public quoteColor:I

.field private quoteUpdateLayout:[Z

.field private quoteUpdatesTries:I

.field private rect:Landroid/graphics/Rect;

.field private selEnd:I

.field private selStart:I

.field private shouldRevealSpoilersByTouch:Z

.field private spoilerTimeout:Ljava/lang/Runnable;

.field private spoilers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private spoilersPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field public suppressOnTextChanged:Z

.field public wrapCanvasToFixClipping:Z

.field private wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;


# direct methods
.method public static synthetic $r8$lambda$Mr8g986c7ulKaH_j9cCjCLu1E2U(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$PG0FT9UlxiO_xY401FvQP5zT-GE(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$RVffId4-i68zranUuatcfhjq0MA(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$onSpoilerClicked$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$amFFLFztaEX-Op2BCKkjMAClDxo(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$onSpoilerClicked$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$f7jJh6W-p0lSbx-4YdQGj74mFak(Lorg/telegram/ui/Components/EditTextEffects;Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextEffects;->onSpoilerClicked(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$gWN9XvAFPayE7H2iD90Lm-pT3K8(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$kqvSDVwACWblXIwftnwb2EXWd3c(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$dispatchTouchEvent$5()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    new-instance p1, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    invoke-static {}, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvas()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrapCanvasToFixClipping:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    new-instance v1, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;-><init>(Landroid/view/View;Ljava/util/List;Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    :cond_0
    return-void
.end method

.method public static allowHackingTextCanvas()Z
    .locals 3

    sget-object v0, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvasCache:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "honor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediapad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvasCache:Ljava/lang/Boolean;

    :cond_3
    sget-object v0, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvasCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private checkSpoilerTimeout()V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Landroid/text/Spannable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v4, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v0, v3, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/TextStyleSpan;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v6}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    if-le v7, v6, :cond_1

    iget v9, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    if-lt v8, v9, :cond_3

    :cond_1
    if-le v6, v7, :cond_2

    if-lt v6, v8, :cond_3

    :cond_2
    iget v6, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    if-le v6, v7, :cond_4

    if-ge v6, v8, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$5()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    new-instance v1, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleX:F

    iget v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleY:F

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v0, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFFZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onSpoilerClicked$3()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->checkSpoilerTimeout()V

    return-void
.end method

.method private synthetic lambda$onSpoilerClicked$4()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onSpoilerClicked(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleX:F

    iput p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1, p2, p3, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/QuoteSpan;->onTouch(Landroid/view/MotionEvent;ILjava/util/ArrayList;Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method protected emojiCacheType()I
    .locals 1

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v0

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    return v0
.end method

.method public getTextToUse()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/QuoteSpan;->stripNewlineHacks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidateEffects()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/TextStyleSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/TextStyleSpan;

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/TextStyleSpan;->setSpoilerRevealed(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    return-void
.end method

.method public invalidateQuotes(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocksUpdating:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->editedWhileQuoteUpdating:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastText2Length:I

    if-eq p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x2

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    iput v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastText2Length:I

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    if-lez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    if-nez p1, :cond_5

    new-array p1, v1, [Z

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    aput-boolean v2, p1, v2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->editedWhileQuoteUpdating:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocksUpdating:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    invoke-static {p0, p1, v0, v3}, Lorg/telegram/ui/Components/QuoteSpan;->updateQuoteBlocks(Landroid/view/View;Landroid/text/Layout;Ljava/util/ArrayList;[Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->editedWhileQuoteUpdating:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    invoke-static {p0, p1, v0, v3}, Lorg/telegram/ui/Components/QuoteSpan;->updateQuoteBlocks(Landroid/view/View;Landroid/text/Layout;Ljava/util/ArrayList;[Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    :cond_6
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocksUpdating:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->editedWhileQuoteUpdating:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->resetFontMetricsCache()V

    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :cond_9
    :goto_2
    iput v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastText2Length:I

    :cond_a
    return-void
.end method

.method protected invalidateSpoilers()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->recordPositions(Z)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/widget/TextView;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->recordPositions(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->clipToPadding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/QuoteSpan$Block;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/QuoteSpan$Block;->draw(Landroid/graphics/Canvas;FIIFLandroid/text/TextPaint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrapCanvasToFixClipping:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    if-nez v1, :cond_3

    new-instance v1, Lorg/telegram/ui/Components/NoClipCanvas;

    invoke-direct {v1}, Lorg/telegram/ui/Components/NoClipCanvas;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    iput-object p1, v1, Lorg/telegram/ui/Components/NoClipCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-super {p0, v1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    :goto_2
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v7, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v1

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v8, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v9, v1

    iget-object v12, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v12}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrapCanvasToFixClipping:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    if-nez v1, :cond_7

    new-instance v1, Lorg/telegram/ui/Components/NoClipCanvas;

    invoke-direct {v1}, Lorg/telegram/ui/Components/NoClipCanvas;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    iput-object p1, v1, Lorg/telegram/ui/Components/NoClipCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-super {p0, v1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_a

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_b

    :cond_a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_9

    if-lt v5, v4, :cond_9

    :cond_b
    iget-boolean v2, v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->insideQuote:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    :goto_5
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    iput p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->checkSpoilerTimeout()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateEffects()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateEffects()V

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    instance-of p1, p1, Landroid/text/Spannable;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int/2addr p4, p3

    iget p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    add-int/2addr p3, p4

    iput p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    iget p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    add-int/2addr p3, p4

    iput p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    int-to-float p2, p2

    int-to-float p1, p1

    invoke-direct {p0, v1, p2, p1}, Lorg/telegram/ui/Components/EditTextEffects;->onSpoilerClicked(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public recycleEmojis()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected resetFontMetricsCache()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->clipToPadding:Z

    return-void
.end method

.method public setEmojiColor(Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->emojiColor:Ljava/lang/Integer;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextColor:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOffsetY(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShouldRevealSpoilersByTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    return-void
.end method

.method public setSpoilersRevealed(ZZ)V
    .locals 7

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/TextStyleSpan;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/TextStyleSpan;->setSpoilerRevealed(Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    sget-object p1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/EditText;->setSelection(II)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextColor:I

    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->emojiColor:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public updateAnimatedEmoji(Z)V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-ne p1, v2, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextLength:I

    if-eq p1, v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->emojiCacheType()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/Layout;

    aput-object v3, v4, v0

    invoke-static {p1, p0, v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    iput v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextLength:I

    :cond_4
    return-void
.end method
