.class public Lorg/telegram/ui/Components/voip/VoipCoverEmoji;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allowAnimations:Z

.field private alpha:I

.field private diffX:I

.field private diffXAnimator:Landroid/animation/ValueAnimator;

.field private emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private fromRandomX:I

.field private fromRandomY:I

.field private height:I

.field private isShown:Z

.field private final parent:Landroid/view/View;

.field private posX:I

.field private posY:I

.field private positionAnimator:Landroid/animation/ValueAnimator;

.field private randomX:I

.field private randomY:I

.field private scale:F

.field private final size:I

.field private toRandomX:I

.field private toRandomY:I

.field private width:I


# direct methods
.method public static synthetic $r8$lambda$miXq0gBKf7xgbCSyjE5Wab9At-g(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->lambda$show$2(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tO9teCpBJEIPQXwOBCOBKfQ3DjI(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->lambda$show$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxSsd-Pi5ywC15U_CG3iukpYj5I(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->lambda$show$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wHt6k9-uscPhbPWg_LHAc3R59JM(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->lambda$new$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->alpha:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->scale:F

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->parent:Landroid/view/View;

    iput p3, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->size:I

    const/16 v1, 0x200

    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->allowAnimations:Z

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v2

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 v1, 0xd

    invoke-direct {p1, p2, v0, p3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v2, v3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 p3, -0x1000000

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget p3, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->alpha:I

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->positionAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->toRandomX:I

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->fromRandomX:I

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->toRandomY:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->fromRandomY:I

    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/high16 p3, 0x41800000    # 16.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->toRandomX:I

    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->toRandomY:I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->positionAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->positionAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$1;-><init>(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->positionAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->fromRandomX:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->toRandomX:I

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->toRandomX:I

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->fromRandomY:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->toRandomY:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->toRandomY:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->positionAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private getCenterX()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->width:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->fromRandomX:I

    int-to-float v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->toRandomX:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->randomX:I

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->fromRandomY:I

    int-to-float v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->toRandomY:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float v0, v0, p2

    add-float/2addr v1, v0

    float-to-int p2, v1

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->randomY:I

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$show$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->posX:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->getCenterX()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->diffX:I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$show$2(IILandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->scale:F

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->diffXAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/4 v0, 0x0

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->diffXAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->diffXAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p2

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->diffXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->alpha:I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private show()V
    .locals 12

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->isShown:Z

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->posX:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->getCenterX()I

    move-result v1

    const/16 v2, 0xc

    if-le v0, v1, :cond_3

    int-to-float v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_3
    int-to-float v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->diffX:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v8, 0x3fe47ae147ae147bL    # 0.64

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3fd5c28f5c28f5c3L    # 0.34

    const-wide v6, 0x3ff5c28f5c28f5c3L    # 1.36

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$$ExternalSyntheticLambda1;

    const/16 v3, 0x15e

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/16 v3, 0xb4

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    const/16 v5, 0xff

    filled-new-array {v0, v5, v5}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/VoipCoverEmoji;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->positionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->positionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->positionAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->scale:F

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->posX:I

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->diffX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->posY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->randomX:I

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->randomY:I

    iget v3, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->size:I

    add-int v4, v1, v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->alpha:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onLayout(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->width:I

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->height:I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPosition(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->posX:I

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->posY:I

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoipCoverEmoji;->show()V

    return-void
.end method
