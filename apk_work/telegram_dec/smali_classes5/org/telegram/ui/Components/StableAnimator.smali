.class public Lorg/telegram/ui/Components/StableAnimator;
.super Landroid/animation/TimeAnimator;
.source "SourceFile"


# instance fields
.field private animatedValue:Ljava/lang/Object;

.field private floatValues:[F

.field private times:I

.field private totalTimes:I

.field private updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$JW24i3o97W-zNdDy57JetywWaRA(Lorg/telegram/ui/Components/StableAnimator;Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/StableAnimator;->lambda$start$0(Landroid/animation/TimeAnimator;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/animation/TimeAnimator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/StableAnimator;->times:I

    iput v0, p0, Lorg/telegram/ui/Components/StableAnimator;->totalTimes:I

    return-void
.end method

.method private synthetic lambda$start$0(Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    iget p1, p0, Lorg/telegram/ui/Components/StableAnimator;->times:I

    if-lez p1, :cond_0

    iget p2, p0, Lorg/telegram/ui/Components/StableAnimator;->totalTimes:I

    if-lez p2, :cond_0

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/StableAnimator;->times:I

    iget-object p4, p0, Lorg/telegram/ui/Components/StableAnimator;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/ui/Components/StableAnimator;->floatValues:[F

    if-eqz p4, :cond_0

    array-length p4, p4

    const/4 p5, 0x2

    if-ne p4, p5, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/animation/Animator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p2

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p4, p1

    invoke-interface {p2, p4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/StableAnimator;->floatValues:[F

    const/4 p4, 0x0

    aget p4, p2, p4

    aget p2, p2, p3

    sub-float/2addr p2, p4

    mul-float p2, p2, p1

    add-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StableAnimator;->animatedValue:Ljava/lang/Object;

    iget-object p1, p0, Lorg/telegram/ui/Components/StableAnimator;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {p1, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StableAnimator;->end()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs ofFloat([F)Lorg/telegram/ui/Components/StableAnimator;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/StableAnimator;

    invoke-direct {v0}, Lorg/telegram/ui/Components/StableAnimator;-><init>()V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/StableAnimator;->setFloatValues([F)V

    return-object v0
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StableAnimator;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public end()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/StableAnimator;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-super {p0}, Landroid/animation/TimeAnimator;->end()V

    return-void
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StableAnimator;->animatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setFloatValues([F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/TimeAnimator;->setFloatValues([F)V

    iput-object p1, p0, Lorg/telegram/ui/Components/StableAnimator;->floatValues:[F

    return-void
.end method

.method public start()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/StableAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StableAnimator$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StableAnimator;)V

    invoke-virtual {p0, v0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshTime:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/StableAnimator;->times:I

    iput v0, p0, Lorg/telegram/ui/Components/StableAnimator;->totalTimes:I

    invoke-super {p0}, Landroid/animation/TimeAnimator;->start()V

    return-void
.end method
