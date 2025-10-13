.class public Lorg/telegram/ui/Components/spoilers/SpoilersTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;


# instance fields
.field public allowClickSpoilers:Z

.field private animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

.field public cacheType:I

.field private clearLinkOnLongPress:Z

.field private clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

.field protected disablePaddingInLinks:Z

.field private disablePaddingsOffset:Z

.field private disablePaddingsOffsetX:Z

.field private disablePaddingsOffsetY:Z

.field private isSpoilersRevealed:Z

.field private lastLayout:Landroid/text/Layout;

.field private lastTextLength:I

.field private final links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field protected onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

.field protected onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

.field private path:Landroid/graphics/Path;

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field protected spoilers:Ljava/util/List;

.field private spoilersPool:Ljava/util/Stack;

.field private useAlphaForEmoji:Z

.field private xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$72CtBnIzp_PVVNlwN_tlhPC9zjM(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;ZLorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lambda$new$2(ZLorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$CdeZ2FFq2oJpD16Kbv_Kk7Oo5v8(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$NPeLUXgd-xoyt4INz4etcRGmgxA(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lambda$dispatchTouchEvent$3(Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eSUj1oM8nCmrR4AeTELm6d34Aqg(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilersPool:Ljava/util/Stack;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->allowClickSpoilers:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->cacheType:I

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->useAlphaForEmoji:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->clearLinkOnLongPress:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->disablePaddingInLinks:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lastLayout:Landroid/text/Layout;

    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iput-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;Z)V

    invoke-direct {p1, p0, p3, v0}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;-><init>(Landroid/view/View;Ljava/util/List;Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    return-void
.end method

.method private invalidateSpoilers()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilersPool:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->isSpoilersRevealed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/widget/TextView;Ljava/util/Stack;Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$3(Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-ne v1, p1, :cond_0

    invoke-interface {v0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;->run(Landroid/text/style/ClickableSpan;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->isSpoilersRevealed:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->invalidateSpoilers()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$2(ZLorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->isSpoilersRevealed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v0, p3, p4, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public clearLinks()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->hit(II)Landroid/text/style/ClickableSpan;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v3, v2, v4, v5, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->overrideLinkColor()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    iget-object v5, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->disablePaddingInLinks:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    :goto_0
    invoke-virtual {v5, v0, v4, v6}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    invoke-virtual {v0, v4, p1, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v3, v2}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    if-ne v0, v2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;->run(Landroid/text/style/ClickableSpan;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    check-cast p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_3
    :goto_1
    iput-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return v1

    :cond_4
    iput-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    iput-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->allowClickSpoilers:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getStaticTextLayout()Landroid/text/Layout;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method

.method public hit(II)Landroid/text/style/ClickableSpan;
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    int-to-float p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    cmpg-float v5, v4, p1

    if-gtz v5, :cond_1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    add-float/2addr v4, v2

    cmpl-float p1, v4, p1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_1

    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-class p2, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v3, v3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    array-length p2, p1

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1

    :cond_1
    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->updateAnimatedEmoji(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->disablePaddingsOffset:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->disablePaddingsOffsetX:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    int-to-float v1, v12

    :goto_0
    iget-boolean v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->disablePaddingsOffsetY:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v2, v13

    :goto_1
    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v12

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v13

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v12

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v13

    int-to-float v7, v2

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-boolean v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->useAlphaForEmoji:Z

    sput-boolean v1, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v14, 0x1

    sput-boolean v14, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v11, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v11, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->updateAnimatedEmoji(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v12

    int-to-float v2, v13

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v7, v1

    iget-object v10, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRippleProgress()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto :goto_4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :goto_4
    int-to-float v1, v12

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v13, v2

    int-to-float v2, v13

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_9
    if-eqz v8, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->xRefPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_a

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->xRefPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->xRefPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->invalidateSpoilers()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->invalidateSpoilers()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->invalidateSpoilers()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->updateAnimatedEmoji(Z)V

    return-void
.end method

.method public overrideLinkColor()I
    .locals 2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    return v0
.end method

.method public setClearLinkOnLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->clearLinkOnLongPress:Z

    return-void
.end method

.method public setDisablePaddingsOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->disablePaddingsOffset:Z

    return-void
.end method

.method public setDisablePaddingsOffsetX(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->disablePaddingsOffsetX:Z

    return-void
.end method

.method public setDisablePaddingsOffsetY(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->disablePaddingsOffsetY:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->isSpoilersRevealed:Z

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setUseAlphaForEmoji(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->useAlphaForEmoji:Z

    return-void
.end method

.method public updateAnimatedEmoji(Z)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lastLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-ne p1, v2, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lastTextLength:I

    if-eq p1, v1, :cond_3

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->cacheType:I

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/Layout;

    aput-object v3, v4, v0

    invoke-static {p1, p0, v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lastLayout:Landroid/text/Layout;

    iput v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lastTextLength:I

    :cond_3
    return-void
.end method
