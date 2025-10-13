.class public Lorg/telegram/ui/Stories/recorder/HintView2;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private arrowHalfWidth:F

.field private arrowHeight:F

.field private arrowX:F

.field private arrowY:F

.field protected final backgroundPaint:Landroid/graphics/Paint;

.field private blurAlpha:F

.field private blurBackgroundPaint:Landroid/graphics/Paint;

.field private blurBitmapHeight:I

.field private blurBitmapMatrix:Landroid/graphics/Matrix;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurBitmapWidth:I

.field private blurCutPaint:Landroid/graphics/Paint;

.field private blurPos:[I

.field private blurScale:F

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private bounceAnimator:Landroid/animation/ValueAnimator;

.field private bounceT:F

.field private bounceX:F

.field private bounceY:F

.field private final bounds:Landroid/graphics/RectF;

.field private final boundsWithArrow:Landroid/graphics/Rect;

.field private closeButton:Z

.field private closeButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private closeButtonMargin:F

.field private cutSelectorPaint:Landroid/graphics/Paint;

.field private direction:I

.field private drawingMyBlur:Z

.field private duration:J

.field private emojiGroupedSpans:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private firstDraw:Z

.field private flicker:Z

.field private final flickerBounds:Landroid/graphics/RectF;

.field private flickerFillPaint:Landroid/graphics/Paint;

.field private flickerGradient:Landroid/graphics/LinearGradient;

.field private flickerGradientMatrix:Landroid/graphics/Matrix;

.field private flickerStart:J

.field private flickerStrokeGradient:Landroid/graphics/LinearGradient;

.field private flickerStrokePaint:Landroid/graphics/Paint;

.field private flickerStrokePath:Landroid/graphics/Path;

.field private flickerStrokePathExtrude:F

.field private hideByTouch:Z

.field private final hideRunnable:Ljava/lang/Runnable;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconHeight:I

.field private iconLeft:Z

.field private iconMargin:I

.field private iconTx:F

.field private iconTy:F

.field private iconWidth:I

.field private final innerPadding:Landroid/graphics/RectF;

.field private joint:F

.field private jointTranslate:F

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private multiline:Z

.field private onHidden:Ljava/lang/Runnable;

.field private onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

.field private onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

.field private final oval:Landroid/graphics/RectF;

.field protected final path:Landroid/graphics/Path;

.field private pathLastHeight:F

.field private pathLastWidth:F

.field private pathSet:Z

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field private repeatedBounce:Z

.field private roundWithCornerEffect:Z

.field protected rounding:F

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;

.field private show:Lorg/telegram/ui/Components/AnimatedFloat;

.field private shown:Z

.field private textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private textLayout:Landroid/text/StaticLayout;

.field private textLayoutAlignment:Landroid/text/Layout$Alignment;

.field private textLayoutHeight:F

.field private textLayoutLeft:F

.field private textLayoutWidth:F

.field private textMaxWidth:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textToSet:Ljava/lang/CharSequence;

.field private textX:F

.field private textY:F

.field private useAlpha:Z

.field private useBlur:Z

.field private useScale:Z

.field private useTranslate:Z


# direct methods
.method public static synthetic $r8$lambda$0IZABtOzfrzV7NBlaoQitKaNB4s(Lorg/telegram/ui/Stories/recorder/HintView2;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->lambda$prepareBlur$2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9lgvRZSWEH0um4SaBiZaWZyB7RE(Lorg/telegram/ui/Stories/recorder/HintView2;Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->lambda$checkTouchLinks$1(Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S8l_qTzn3a03Df9gBMeg2Ixwg20(Lorg/telegram/ui/Stories/recorder/HintView2;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->lambda$bounceShow$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12

    .line 0
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    const-wide/16 v0, 0xdac

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useTranslate:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useAlpha:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useBlur:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->roundWithCornerEffect:Z

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v2, v4, v6, v3, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonMargin:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41400000    # 12.0f

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurScale:F

    const/high16 v4, 0x3e800000    # 0.25f

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurAlpha:F

    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutAlignment:Landroid/text/Layout$Alignment;

    new-instance v4, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideByTouch:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->repeatedBounce:Z

    new-instance v4, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v11, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x15e

    invoke-direct {v4, p0, v5, v6, v11}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconMargin:I

    new-instance v4, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda51;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    new-instance v4, Lorg/telegram/ui/Components/ButtonBounce;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-direct {v4, p0, v2, v5}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;FF)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->boundsWithArrow:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerBounds:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->oval:Landroid/graphics/RectF;

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const p2, -0x19d7d7d8

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/CornerPathEffect;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {p2, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v5, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v5, p1, p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x140

    const v6, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextSize(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/HintView2;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->cutSelectorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Stories/recorder/HintView2;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    return p1
.end method

.method private bounceShow()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->repeatedBounce:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/HintView2$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/HintView2$2;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkTouchLinks(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hitLink(II)Landroid/text/style/ClickableSpan;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v3, v0, v2, v4, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    new-instance p1, Landroid/text/SpannableString;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v2, p1, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v3, v0}, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->pause()V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->unpause()V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v3

    if-ne v3, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;->run(Landroid/text/style/ClickableSpan;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    check-cast p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return v1

    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->unpause()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private checkTouchTap(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->containsTouch(Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceX:F

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceY:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_0

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/drawable/WrappedDrawableApi21$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/drawable/Drawable;FF)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x10100a7

    const v1, 0x101009e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideByTouch:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    new-array v0, v1, [I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return v3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    new-array v0, v1, [I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    return v3

    :cond_7
    return v1
.end method

.method public static cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I
    .locals 10

    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    if-ltz v1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x0

    const/4 v9, -0x1

    :goto_0
    if-ge v8, v0, :cond_5

    :goto_1
    if-lez v1, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    add-int/2addr v1, v9

    goto :goto_1

    :cond_1
    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->measureCorrectly(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p0, v1, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->measureCorrectly(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v6

    cmpl-float v4, v5, v4

    if-nez v4, :cond_2

    cmpl-float v4, v6, v7

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    cmpg-float v4, v5, v6

    if-gez v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    const/4 v9, -0x1

    :goto_2
    if-lez v1, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v1, v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move v4, v5

    move v7, v6

    goto :goto_0

    :cond_5
    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private fillPath(Landroid/graphics/Path;FFFLandroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 9

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p2, v1

    div-float v3, p3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    if-ne v4, v5, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->roundWithCornerEffect:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v4, v7

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    invoke-static {v2, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float/2addr v4, v7

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    invoke-static {v2, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    :goto_0
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    add-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v2, v4, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v2, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float p3, v3, p3

    sub-float v4, v3, v0

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float/2addr v4, v7

    add-float v8, p3, v0

    add-float/2addr v8, v7

    invoke-static {v2, v4, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v4, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v7, v8

    add-float/2addr v7, p2

    invoke-virtual {p5, v4, p3, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr v4, v7

    sub-float/2addr v4, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr p2, v7

    int-to-float p2, p2

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr p2, v7

    invoke-virtual {p5, v4, p3, p2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_4

    :cond_3
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->roundWithCornerEffect:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float/2addr v4, v7

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    :goto_2
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v3, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float p2, v2, p2

    sub-float v4, v2, v0

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float/2addr v4, v7

    add-float v8, p2, v0

    add-float/2addr v8, v7

    invoke-static {v3, v4, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne v4, v6, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v4, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr v7, v8

    add-float/2addr v7, p3

    invoke-virtual {p5, p2, v4, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr v4, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    sub-float/2addr v4, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr p3, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr p3, v7

    invoke-virtual {p5, p2, v4, v2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_3
    move v2, v3

    :goto_4
    neg-float p2, p4

    invoke-virtual {p5, p2, p2}, Landroid/graphics/RectF;->inset(FF)V

    if-eqz p6, :cond_6

    iget p2, p5, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iget p3, p5, Landroid/graphics/RectF;->top:F

    float-to-int p3, p3

    iget p4, p5, Landroid/graphics/RectF;->right:F

    float-to-int p4, p4

    iget v3, p5, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p6, p2, p3, p4, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->roundWithCornerEffect:Z

    const/high16 p3, 0x42b40000    # 90.0f

    if-eqz p2, :cond_7

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget p4, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->oval:Landroid/graphics/RectF;

    iget p4, p5, Landroid/graphics/RectF;->left:F

    iget v3, p5, Landroid/graphics/RectF;->bottom:F

    mul-float v4, v0, v1

    sub-float v7, v3, v4

    add-float/2addr v4, p4

    invoke-virtual {p2, p4, v7, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->oval:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p3, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_5
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const/high16 p4, 0x3f800000    # 1.0f

    if-nez p2, :cond_8

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v3, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v3, v2

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr p2, v3

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr p2, v3

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v3, v2, v3

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v3, v2, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    if-eqz p6, :cond_8

    iget p2, p6, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, p6, Landroid/graphics/Rect;->left:I

    :cond_8
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->roundWithCornerEffect:Z

    if-eqz p2, :cond_9

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget v3, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_6

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->oval:Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/RectF;->left:F

    iget v4, p5, Landroid/graphics/RectF;->top:F

    mul-float v7, v0, v1

    add-float v8, v3, v7

    add-float/2addr v7, v4

    invoke-virtual {p2, v3, v4, v8, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->oval:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p1, p2, v3, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_6
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne p2, v6, :cond_a

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float p2, v2, p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    iget v3, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float p2, v2, p2

    iget v3, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sub-float p2, v2, p2

    iget v3, p5, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    iget p2, p5, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr p2, v3

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v2

    iget v3, p5, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr p2, v2

    iget v3, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr p2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p2, v3

    iget v3, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    if-eqz p6, :cond_a

    iget p2, p6, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    sub-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, p6, Landroid/graphics/Rect;->top:I

    :cond_a
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->roundWithCornerEffect:Z

    if-eqz p2, :cond_b

    iget p2, p5, Landroid/graphics/RectF;->right:F

    iget v3, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->oval:Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/RectF;->right:F

    mul-float v4, v0, v1

    sub-float v7, v3, v4

    iget v8, p5, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v8

    invoke-virtual {p2, v7, v8, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->oval:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, p2, v3, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_7
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const/4 v3, 0x2

    if-ne p2, v3, :cond_c

    iget p2, p5, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v3, v2, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p5, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float v3, v2, v3

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p5, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr p2, v3

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p5, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr p2, v3

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p5, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v3, v2

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p5, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr v3, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    if-eqz p6, :cond_c

    iget p2, p6, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, p6, Landroid/graphics/Rect;->right:I

    :cond_c
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->roundWithCornerEffect:Z

    if-eqz p2, :cond_d

    iget p2, p5, Landroid/graphics/RectF;->right:F

    iget p3, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8

    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->oval:Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/RectF;->right:F

    mul-float v0, v0, v1

    sub-float v4, v3, v0

    iget v7, p5, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v7, v0

    invoke-virtual {p2, v4, v0, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->oval:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_8
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne p2, v5, :cond_e

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr p2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iget p3, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    add-float/2addr p2, v2

    iget p3, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v2

    iget p3, p5, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    iget p2, p5, Landroid/graphics/RectF;->bottom:F

    iget p3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr p2, p3

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sub-float p2, v2, p2

    iget p3, p5, Landroid/graphics/RectF;->bottom:F

    iget p4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float p2, v2, p2

    iget p3, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    sub-float/2addr v2, p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v2, p2

    iget p2, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    if-eqz p6, :cond_e

    iget p2, p6, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget p3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p6, Landroid/graphics/Rect;->bottom:I

    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    iput-boolean v6, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    return-void
.end method

.method private getTextMaxWidth()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    float-to-int v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    if-lez v1, :cond_0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private hitLink(II)Landroid/text/style/ClickableSpan;
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    int-to-float p1, p1

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    int-to-float p1, p1

    invoke-virtual {v2, v0, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v4, v3, p1

    if-gtz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    add-float/2addr v3, v0

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_1

    new-instance p1, Landroid/text/SpannableString;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-class p2, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v2, v2, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

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

.method private synthetic lambda$bounceShow$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkTouchLinks$1(Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-ne v1, p1, :cond_0

    invoke-interface {v0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;->run(Landroid/text/style/ClickableSpan;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareBlur$2(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->drawingMyBlur:Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapHeight:I

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapShader:Landroid/graphics/BitmapShader;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3df5c28f    # 0.12f

    goto :goto_0

    :cond_0
    const v1, -0x425c28f6    # -0.08f

    :goto_0
    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBackgroundPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurCutPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurCutPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method private makeLayout(Ljava/lang/CharSequence;I)V
    .locals 10

    const/4 v0, 0x1

    new-instance v9, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutAlignment:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v9

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v9, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    int-to-float p1, p2

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    sub-float/2addr v3, p1

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutWidth:F

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutHeight:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutLeft:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->emojiGroupedSpans:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    new-array v0, v0, [Landroid/text/Layout;

    aput-object p2, v0, v1

    invoke-static {v1, p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->emojiGroupedSpans:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method public static measureCorrectly(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    if-nez v6, :cond_0

    return v8

    :cond_0
    instance-of v0, v6, Landroid/text/Spanned;

    if-nez v0, :cond_1

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_1
    move-object v9, v6

    check-cast v9, Landroid/text/Spanned;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Lorg/telegram/ui/Components/TypefaceSpan;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v9, v10, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v9, v10, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-interface {v9, v10, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Lorg/telegram/ui/Components/ColoredImageSpan;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-interface {v9, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v9, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    int-to-float v2, v2

    iget v3, v3, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    int-to-float v3, v3

    invoke-virtual {v7, v9, v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_1
    array-length v0, v13

    if-ge v14, v0, :cond_3

    aget-object v0, v13, v14

    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    int-to-float v4, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v16

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v3, v15

    move/from16 v17, v4

    move v4, v5

    move v10, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ColoredImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v9, v15, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v4, v17, v0

    float-to-int v2, v4

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_2
    array-length v0, v12

    if-ge v10, v0, :cond_4

    aget-object v0, v12, v10

    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    int-to-float v15, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v3, v13

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v9, v13, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v15, v0

    float-to-int v2, v15

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    if-eqz v11, :cond_a

    array-length v0, v11

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_3
    array-length v1, v11

    if-ge v10, v1, :cond_8

    aget-object v1, v11, v10

    invoke-interface {v9, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    aget-object v3, v11, v10

    invoke-interface {v9, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v4, v1, v0

    if-lez v4, :cond_6

    invoke-virtual {v7, v9, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    add-float/2addr v8, v0

    :cond_6
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v3, v0, v1

    if-lez v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    aget-object v4, v11, v10

    invoke-virtual {v4}, Lorg/telegram/ui/Components/TypefaceSpan;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v7, v9, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    add-float/2addr v8, v1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v3, v1, v0

    if-lez v3, :cond_9

    invoke-virtual {v7, v9, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    add-float/2addr v8, v0

    :cond_9
    int-to-float v0, v2

    add-float/2addr v8, v0

    return v8

    :cond_a
    :goto_4
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private prepareBlur()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useBlur:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->drawingMyBlur:Z

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/HintView2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurScale:F

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    return-void
.end method

.method private updateBlurBounds()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useBlur:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurPos:[I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurPos:[I

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurPos:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurPos:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    div-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public containsTouch(Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, p3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->drawingMyBlur:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v0, :cond_1

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    const/4 v2, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v9

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    if-eqz v0, :cond_3

    iput-boolean v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->firstDraw:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_3
    const/4 v10, 0x0

    cmpg-float v0, v9, v10

    if-gtz v0, :cond_4

    return-void

    :cond_4
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v0, :cond_5

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutWidth:F

    goto :goto_1

    :cond_5
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v0

    :goto_1
    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v1, :cond_6

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutHeight:F

    goto :goto_2

    :cond_6
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v1

    :goto_2
    iget-boolean v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    const v14, 0x7dffffff

    if-eqz v2, :cond_8

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_mini_close_tooltip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v14, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    iget v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonMargin:F

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_8
    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconWidth:I

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconHeight:I

    int-to-float v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_9
    move v11, v0

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v11

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float v12, v2, v3

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v13, v2, v0

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    if-eqz v0, :cond_a

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastWidth:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_a

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastHeight:F

    sub-float v0, v13, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    :cond_a
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iput v12, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastWidth:F

    iput v13, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastHeight:F

    iget-object v5, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->boundsWithArrow:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v2, v12

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->fillPath(Landroid/graphics/Path;FFFLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->flicker:Z

    if-eqz v0, :cond_b

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePath:Landroid/graphics/Path;

    iget v4, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePathExtrude:F

    iget-object v5, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerBounds:Landroid/graphics/RectF;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v2, v12

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->fillPath(Landroid/graphics/Path;FFFLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    :cond_b
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->useAlpha:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_c

    move/from16 v17, v9

    goto :goto_3

    :cond_c
    const/high16 v17, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    cmpg-float v0, v9, v1

    if-gez v0, :cond_d

    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale:Z

    if-eqz v0, :cond_d

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v0, v1, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    invoke-virtual {v15, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_d
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v2, 0x3ccccccd    # 0.025f

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_e

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowX:F

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowY:F

    invoke-virtual {v15, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_e
    iget v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    const/4 v2, -0x1

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_12

    if-ne v0, v8, :cond_f

    goto :goto_5

    :cond_f
    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_4

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    :goto_4
    iget v4, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    sub-float/2addr v4, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v4, v4, v0

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-nez v0, :cond_11

    const/4 v8, -0x1

    :cond_11
    int-to-float v0, v8

    mul-float v4, v4, v0

    invoke-virtual {v15, v4, v10}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_12
    :goto_5
    if-ne v0, v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_6

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    :goto_6
    iget v4, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceT:F

    sub-float/2addr v4, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v4, v4, v0

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    if-ne v0, v8, :cond_14

    const/4 v8, -0x1

    :cond_14
    int-to-float v0, v8

    mul-float v4, v4, v0

    invoke-virtual {v15, v10, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_15
    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->updateBlurBounds()V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    neg-float v3, v3

    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v18, 0x437f0000    # 255.0f

    if-eqz v2, :cond_16

    iget-boolean v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->useBlur:Z

    if-eqz v3, :cond_16

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->blurAlpha:F

    sub-float/2addr v1, v3

    mul-float v1, v1, v17

    mul-float v3, v17, v18

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8

    :cond_16
    move/from16 v1, v17

    :goto_8
    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->drawBgPath(Landroid/graphics/Canvas;)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    mul-float v1, v17, v18

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->boundsWithArrow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_17
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    add-float/2addr v1, v3

    const/high16 v19, 0x40000000    # 2.0f

    div-float v8, v1, v19

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-boolean v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconLeft:Z

    if-eqz v3, :cond_18

    iget v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTx:F

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget v0, v2, Landroid/graphics/RectF;->left:F

    div-float v0, v0, v19

    add-float/2addr v3, v0

    float-to-int v0, v3

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTy:F

    add-float/2addr v2, v8

    iget v4, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconHeight:I

    int-to-float v4, v4

    div-float v4, v4, v19

    sub-float v5, v2, v4

    float-to-int v5, v5

    iget v6, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconWidth:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v0, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconWidth:I

    iget v1, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v10, v0

    goto :goto_9

    :cond_18
    iget v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTx:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    iget v0, v2, Landroid/graphics/RectF;->right:F

    div-float v0, v0, v19

    sub-float/2addr v3, v0

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconWidth:I

    int-to-float v0, v0

    sub-float v0, v3, v0

    float-to-int v0, v0

    iget v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTy:F

    add-float/2addr v2, v8

    iget v4, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->iconHeight:I

    int-to-float v4, v4

    div-float v4, v4, v19

    sub-float v5, v2, v4

    float-to-int v5, v5

    float-to-int v3, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v0, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_9
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    mul-float v1, v17, v18

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_19
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v0, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v0, v17, v18

    float-to-int v5, v0

    const/4 v2, 0x0

    const/16 v6, 0x1f

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v0

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v0

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutLeft:F

    sub-float/2addr v10, v0

    iput v10, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textX:F

    iget v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutHeight:F

    div-float v0, v0, v19

    sub-float/2addr v8, v0

    iput v8, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textY:F

    invoke-virtual {v15, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_1a
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v15}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object v9, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    iget-object v10, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->emojiGroupedSpans:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v0, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    move-object/from16 v8, p1

    const v2, 0x7dffffff

    move v14, v1

    move-object v1, v15

    move v15, v0

    invoke-static/range {v8 .. v16}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    :cond_1b
    move-object v1, v15

    const v2, 0x7dffffff

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-boolean v4, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v0, 0x0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    :cond_1c
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v3

    iget-object v4, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v4

    float-to-int v5, v10

    iget v6, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutHeight:F

    div-float v6, v6, v19

    sub-float v9, v8, v6

    float-to-int v9, v9

    add-float/2addr v3, v4

    add-float/2addr v3, v11

    float-to-int v3, v3

    add-float/2addr v8, v6

    float-to-int v4, v8

    invoke-virtual {v0, v5, v9, v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float v3, v17, v18

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_a
    iget-boolean v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    if-eqz v0, :cond_1e

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_mini_close_tooltip:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1d
    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v2, v17, v18

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const v4, 0x3f28f5c3    # 0.66f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v5, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v19

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v5, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget-object v8, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    mul-float v8, v8, v4

    sub-float/2addr v6, v8

    float-to-int v4, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v19

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawBgPath(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurCutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flicker:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v1, v0

    int-to-float v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStart:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xfa0

    rem-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x457a0000    # 4000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathLastWidth:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v3, v3, v4

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerGradientMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokeGradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->show:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->emojiGroupedSpans:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextMaxWidth()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    if-eq v0, p2, :cond_4

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->makeLayout(Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideByTouch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    if-nez v0, :cond_2

    :cond_1
    return v1

    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->checkTouchLinks(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->checkTouchTap(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAnimatedTextHacks(ZZZ)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    return-object p0
.end method

.method public setArrowSize(FF)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHalfWidth:F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->arrowHeight:F

    return-object p0
.end method

.method public setBgColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public setBounce(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->repeatedBounce:Z

    return-object p0
.end method

.method public setCloseButton(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 4

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    if-eqz v3, :cond_0

    const/high16 v0, 0x41700000    # 15.0f

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    return-object p0
.end method

.method public setDirection(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->direction:I

    return-object p0
.end method

.method public setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    return-object p0
.end method

.method public setFlicker(FI)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flicker:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStart:J

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePath:Landroid/graphics/Path;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePathExtrude:F

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerFillPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v7, v4

    const/4 v12, 0x0

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    filled-new-array {v4, v5, v6}, [I

    move-result-object v9

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x3

    new-array v10, v14, [F

    fill-array-data v10, :array_0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v4, v2

    move-object/from16 v11, v22

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokeGradient:Landroid/graphics/LinearGradient;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-static {v1, v13}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    filled-new-array {v4, v5, v1}, [I

    move-result-object v20

    new-array v1, v14, [F

    fill-array-data v1, :array_1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object v15, v2

    move/from16 v18, v3

    move-object/from16 v21, v1

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerGradient:Landroid/graphics/LinearGradient;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerGradientMatrix:Landroid/graphics/Matrix;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerFillPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/HintView2;->flickerStrokePaint:Landroid/graphics/Paint;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setHideByTouch(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideByTouch:Z

    return-object p0
.end method

.method public setIcon(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 4

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x42080000    # 34.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {v0, p1, v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIcon(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconWidth:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconLeft:Z

    :cond_2
    return-object p0
.end method

.method public setIconMargin(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconMargin:I

    return-object p0
.end method

.method public setIconTranslate(FF)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTx:F

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->iconTy:F

    return-object p0
.end method

.method public setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p3

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p0
.end method

.method public setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    return-object p0
.end method

.method public setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->pathSet:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->joint:F

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->jointTranslate:F

    return-object p0
.end method

.method public setMaxWidth(F)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    return-object p0
.end method

.method public setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textMaxWidth:I

    return-object p0
.end method

.method public setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 5

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    const/high16 v0, 0x40c00000    # 6.0f

    const/high16 v1, 0x41700000    # 15.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    :goto_0
    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButtonMargin:F

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->innerPadding:Landroid/graphics/RectF;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->closeButton:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x41300000    # 11.0f

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_0

    :goto_2
    return-object p0
.end method

.method public setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->roundWithCornerEffect:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {v0, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->cutSelectorPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->roundWithCornerEffect:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {v0, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->blurCutPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->roundWithCornerEffect:Z

    if-eqz v0, :cond_3

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {v1, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_4
    return-object p0
.end method

.method public setRoundingWithCornerEffect(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->roundWithCornerEffect:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {p1, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-object p0
.end method

.method public setSelectorColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 4

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->cutSelectorPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/CornerPathEffect;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->rounding:F

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v0, v0, [[I

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    const/4 v3, 0x0

    aput-object v2, v0, v3

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance p1, Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/HintView2$1;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0}, Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gez v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->multiline:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextMaxWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->makeLayout(Ljava/lang/CharSequence;I)V

    :goto_0
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gez v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textToSet:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :goto_1
    return-object p0
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textLayoutAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setTextColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setTextSize(F)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-object p0
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method

.method public show()Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 5

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->prepareBlur()V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->bounceShow()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->onHidden:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-object p0
.end method

.method public show(Z)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :goto_0
    return-void
.end method

.method public shown()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->shown:Z

    return v0
.end method

.method public unpause()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public useScale(Z)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale:Z

    return-object p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2;->icon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
