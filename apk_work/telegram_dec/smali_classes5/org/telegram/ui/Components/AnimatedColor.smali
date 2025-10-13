.class public Lorg/telegram/ui/Components/AnimatedColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private firstSet:Z

.field private invalidate:Ljava/lang/Runnable;

.field private parent:Landroid/view/View;

.field private startValue:I

.field private targetValue:I

.field private transition:Z

.field private transitionDelay:J

.field private transitionDuration:J

.field private transitionInterpolator:Landroid/animation/TimeInterpolator;

.field private transitionStart:J

.field private value:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->parent:Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->parent:Landroid/view/View;

    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDelay:J

    iput-wide p4, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDuration:J

    iput-object p6, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->parent:Landroid/view/View;

    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDuration:J

    iput-object p4, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;JLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->invalidate:Ljava/lang/Runnable;

    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDuration:J

    iput-object p4, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->firstSet:Z

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->value:I

    return v0
.end method

.method public set(I)I
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    move-result p1

    return p1
.end method

.method public set(IZ)I
    .locals 7

    .line 0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDuration:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedColor;->firstSet:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedColor;->targetValue:I

    if-eq p2, p1, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedColor;->transition:Z

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->targetValue:I

    iget p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->value:I

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->startValue:I

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionStart:J

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->targetValue:I

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->value:I

    iput-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedColor;->transition:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedColor;->firstSet:Z

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->transition:Z

    if-eqz p1, :cond_7

    iget-wide p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionStart:J

    sub-long p1, v0, p1

    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDelay:J

    sub-long/2addr p1, v3

    long-to-float p1, p1

    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDuration:J

    long-to-float p2, v3

    div-float/2addr p1, p2

    const/4 p2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionStart:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionDelay:J

    cmp-long p2, v0, v4

    if-ltz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedColor;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    if-nez p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/Components/AnimatedColor;->startValue:I

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->targetValue:I

    invoke-static {p2, v0, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    :goto_2
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedColor;->value:I

    goto :goto_3

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedColor;->startValue:I

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedColor;->targetValue:I

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    invoke-static {v0, v1, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    goto :goto_2

    :cond_4
    :goto_3
    cmpl-float p1, p1, v3

    if-ltz p1, :cond_5

    iput-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedColor;->transition:Z

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->parent:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->invalidate:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    :goto_4
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedColor;->value:I

    return p1
.end method
