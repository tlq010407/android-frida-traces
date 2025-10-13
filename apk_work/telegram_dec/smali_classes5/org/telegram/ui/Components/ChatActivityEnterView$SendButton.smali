.class public abstract Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendButton"
.end annotation


# instance fields
.field private final animatedPriceVisible:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field public final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private bounceCountAnimator:Landroid/animation/ValueAnimator;

.field public center:Z

.field private circlePadX:F

.field private circlePadY:F

.field private circleSize:I

.field private final count:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private countBounceScale:F

.field private final countClearPaint:Landroid/graphics/Paint;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private drawableColor:I

.field private drawableInverse:Landroid/graphics/drawable/Drawable;

.field private final emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private inactiveDrawable:Landroid/graphics/drawable/Drawable;

.field private infiniteLoading:Z

.field private final loadingAnimatedProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final loadingAnimatedShown:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final loadingInterpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field private final loadingPaint:Landroid/graphics/Paint;

.field private loadingProgress:F

.field private loadingShown:Z

.field private messagesCount:I

.field public final open:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final path:Landroid/graphics/Path;

.field private final priceText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field public resId:I

.field public final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final spans:[Lorg/telegram/ui/Components/ColoredImageSpan;

.field private starsPrice:J


# direct methods
.method public static synthetic $r8$lambda$Fv3wnbGQp6oku3gypqZkZ2Lw4Zs(Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->lambda$bounceCount$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, v7

    move-object v1, p0

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->animatedPriceVisible:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->countClearPaint:Landroid/graphics/Paint;

    const/4 v10, -0x1

    iput v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circleSize:I

    new-array v0, v7, [Lorg/telegram/ui/Components/ColoredImageSpan;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->spans:[Lorg/telegram/ui/Components/ColoredImageSpan;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x1a4

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->open:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingInterpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingAnimatedShown:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x1f4

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingAnimatedProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingPaint:Landroid/graphics/Paint;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v1, v7, v7, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->count:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->countBounceScale:F

    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->resId:I

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->priceText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p3, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const/4 v2, 0x5

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableInverse:Landroid/graphics/drawable/Drawable;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const-string p1, "fonts/num.otf"

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x11

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    return-void
.end method

.method static synthetic access$16902(Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->countBounceScale:F

    return p1
.end method

.method private synthetic lambda$bounceCount$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->countBounceScale:F

    return-void
.end method


# virtual methods
.method public bounceCount()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->bounceCountAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->bounceCountAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->bounceCountAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->bounceCountAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->bounceCountAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->bounceCountAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public copyTo(Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;)V
    .locals 3

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->count:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->count:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->countBounceScale:F

    iput v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->countBounceScale:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEmoji(Landroid/graphics/drawable/Drawable;)V

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->starsPrice:J

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->messagesCount:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setStarsPrice(JI)V

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->open:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->open:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(F)V

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->animatedPriceVisible:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->animatedPriceVisible:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(F)V

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circleSize:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCircleSize(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadX:F

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadY:F

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setCirclePadding(FF)V

    return-void
.end method

.method public getCircleSize()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circleSize:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFillColor()I
    .locals 2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelSend:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    return v0
.end method

.method public height()I
    .locals 1

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->height(I)I

    move-result v0

    return v0
.end method

.method public height(I)I
    .locals 4

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->starsPrice:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadY:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->getCircleSize()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadY:F

    add-float/2addr v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public invalidate(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public isInScheduleMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isInactive()Z
.end method

.method public isOpen()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->starsPrice:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->updateColors()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->isInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->center:Z

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v3, :cond_1

    :goto_2
    move v11, v1

    move v12, v2

    goto :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->isInScheduleMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_2

    :cond_2
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingAnimatedShown:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingShown:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v13

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->open:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->isOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->animatedPriceVisible:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-wide v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->starsPrice:J

    const-wide/16 v5, 0x0

    cmp-long v15, v3, v5

    if-lez v15, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v15

    cmpg-float v2, v1, v9

    if-gez v2, :cond_4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v11

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v12

    invoke-virtual {v7, v11, v12, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadX:F

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v2, v3, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadY:F

    sub-float/2addr v2, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->getCircleSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v16, 0x41c00000    # 24.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v2, v3, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->getCircleSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->priceText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v2, v3, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->getCircleSize()I

    move-result v3

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3, v4, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    div-float v4, v2, v10

    sub-float v4, v6, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setPivotY(F)V

    const/high16 v17, 0x437f0000    # 255.0f

    const/4 v14, 0x0

    cmpl-float v1, v1, v14

    if-lez v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v10

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v2, v6, v2

    div-float/2addr v3, v10

    sub-float v10, v5, v3

    add-float/2addr v3, v5

    invoke-virtual {v9, v2, v10, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v9, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    cmpl-float v1, v13, v14

    if-lez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingPaint:Landroid/graphics/Paint;

    mul-float v2, v13, v17

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const v1, 0x410a8f5c    # 8.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v4, v1

    sub-float v3, v5, v1

    add-float v14, v4, v1

    add-float/2addr v1, v5

    invoke-virtual {v9, v2, v3, v14, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->infiniteLoading:Z

    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v19, 0x1518

    rem-long v1, v1, v19

    const-wide/16 v19, 0x5f0

    move v14, v11

    mul-long v10, v1, v19

    long-to-float v3, v10

    const v9, 0x45a8c000    # 5400.0f

    div-float/2addr v3, v9

    const/high16 v9, 0x41a00000    # 20.0f

    sub-float v10, v3, v9

    const/4 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/4 v9, 0x0

    :goto_5
    const/4 v11, 0x4

    if-ge v9, v11, :cond_5

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingInterpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    move/from16 v18, v4

    mul-int/lit16 v4, v9, 0x546

    move/from16 v20, v5

    move/from16 v19, v6

    int-to-long v5, v4

    sub-long v5, v1, v5

    long-to-float v5, v5

    const v6, 0x4426c000    # 667.0f

    div-float/2addr v5, v6

    invoke-virtual {v11, v5}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v5

    const/high16 v11, 0x437a0000    # 250.0f

    mul-float v5, v5, v11

    add-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingInterpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    add-int/lit16 v4, v4, 0x29b

    move/from16 v21, v12

    int-to-long v11, v4

    sub-long v11, v1, v11

    long-to-float v4, v11

    div-float/2addr v4, v6

    invoke-virtual {v5, v4}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v5, 0x437a0000    # 250.0f

    mul-float v4, v4, v5

    add-float/2addr v10, v4

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v18

    move/from16 v6, v19

    move/from16 v5, v20

    move/from16 v12, v21

    goto :goto_5

    :cond_5
    move/from16 v18, v4

    move/from16 v20, v5

    move/from16 v19, v6

    move/from16 v21, v12

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v4, v3, v10

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move v3, v10

    move/from16 v10, v18

    move/from16 v11, v20

    move/from16 v12, v19

    :goto_6
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_6
    move v10, v4

    move v14, v11

    move/from16 v21, v12

    move v11, v5

    move v12, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    rem-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42f00000    # 120.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    add-float/2addr v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingAnimatedProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingProgress:F

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    mul-float v4, v1, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v9

    goto :goto_6

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v8, v1, v1, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_8
    const/4 v1, 0x0

    goto :goto_9

    :cond_7
    move v10, v4

    move v14, v11

    move/from16 v21, v12

    move v11, v5

    move v12, v6

    goto :goto_8

    :goto_9
    cmpl-float v2, v15, v1

    if-lez v2, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->priceText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->priceText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v5, v3

    int-to-float v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v4, v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->priceText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float v2, v15, v17

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v9, v3, v13

    mul-float v2, v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->priceText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a

    :cond_8
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableInverse:Landroid/graphics/drawable/Drawable;

    sub-float v9, v3, v13

    mul-float v9, v9, v17

    sub-float v2, v3, v15

    mul-float v9, v9, v2

    float-to-int v2, v9

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circleSize:I

    if-lez v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableInverse:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v4, v10, v2

    float-to-int v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableInverse:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float v5, v11, v4

    float-to-int v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableInverse:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v5, v10

    float-to-int v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableInverse:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float v3, v11, v6

    float-to-int v3, v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_b

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableInverse:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int v11, v14, v2

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int v2, v21, v2

    move v3, v14

    move/from16 v4, v21

    invoke-virtual {v1, v3, v4, v11, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableInverse:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    cmpl-float v2, v13, v1

    if-lez v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    :cond_b
    move v12, v6

    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->count:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isNotEmpty()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v9, v2, v15

    mul-float v1, v1, v9

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->count:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadX:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadY:F

    sub-float/2addr v5, v6

    sub-float/2addr v5, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->count:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sub-float v7, v4, v3

    float-to-int v7, v7

    sub-float v9, v5, v3

    float-to-int v9, v9

    add-float v10, v4, v3

    float-to-int v10, v10

    add-float v11, v5, v3

    float-to-int v11, v11

    invoke-virtual {v6, v7, v9, v10, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_c

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v6, v7

    add-float/2addr v6, v3

    mul-float v6, v6, v1

    iget v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->countBounceScale:F

    mul-float v6, v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->countClearPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    mul-float v3, v3, v1

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->countBounceScale:F

    mul-float v3, v3, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->count:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float v4, v1, v17

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->count:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v3

    if-gez v4, :cond_d

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->getCircleSize()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadX:F

    sub-float/2addr v4, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v12, v5

    invoke-static {v4, v5, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->getCircleSize()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadY:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v6, v2

    int-to-float v2, v6

    invoke-static {v5, v2, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sub-int v6, v4, v3

    sub-int v7, v2, v3

    add-int/2addr v4, v3

    add-int/2addr v2, v3

    invoke-virtual {v5, v6, v7, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v9, v3, v1

    mul-float v9, v9, v17

    float-to-int v1, v9

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->height()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    return v2

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCirclePadding(FF)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadX:F

    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadY:F

    return-void
.end method

.method public setCircleSize(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circleSize:I

    return-void
.end method

.method public setCount(IZ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->count:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v1, ""

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEffect(J)V
    .locals 1

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getEffect(J)Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEmoji(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEmoji(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setLoading(ZF)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingShown:Z

    const/4 v1, 0x0

    const/high16 v2, -0x3fc00000    # -3.0f

    const/4 v3, 0x1

    const v4, 0x3c23d70a    # 0.01f

    if-ne v0, p1, :cond_2

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingProgress:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->infiniteLoading:Z

    sub-float v5, p2, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-ne v0, v5, :cond_2

    return-void

    :cond_2
    sub-float v0, p2, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->infiniteLoading:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingShown:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingAnimatedProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingAnimatedShown:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_5

    const-wide/16 v2, 0x28a

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->setDelay(J)V

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingShown:Z

    if-nez p1, :cond_6

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_6
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->loadingProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setResourceId(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->resId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->resId:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableInverse:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setStarsPrice(JI)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setStarsPrice(JIZ)V

    return-void
.end method

.method public setStarsPrice(JIZ)V
    .locals 6

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->starsPrice:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->messagesCount:I

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->starsPrice:J

    iput p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->messagesCount:I

    const/4 p3, 0x1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->priceText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2b50\ufe0f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->messagesCount:I

    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    mul-long p1, p1, v4

    const/16 v4, 0x2c

    invoke-static {p1, p2, v4}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->spans:[Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v2, p1, p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->animatedPriceVisible:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->starsPrice:J

    cmp-long p2, v2, v0

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedFloat;->force(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method

.method public abstract shouldDrawBackground()Z
.end method

.method public updateColors()V
    .locals 7

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelSend:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableColor:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableColor:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->inactiveDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v6, 0xb4

    invoke-static {v6, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->drawableInverse:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoicePressed:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->shouldDrawBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->getFillColor()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    const/16 v2, 0x4b

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    goto :goto_0

    :goto_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->count:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->priceText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

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

.method public width()I
    .locals 1

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->width(I)I

    move-result v0

    return v0
.end method

.method public width(I)I
    .locals 7

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->isOpen()Z

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->starsPrice:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadX:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->getCircleSize()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->circlePadX:F

    add-float/2addr v1, v2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->priceText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v3

    add-float/2addr v2, v3

    mul-float v0, v0, p1

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
