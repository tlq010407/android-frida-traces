.class public Lorg/telegram/ui/Components/AnimatedFloat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private firstSet:Z

.field private invalidate:Ljava/lang/Runnable;

.field private parent:Landroid/view/View;

.field private startValue:F

.field private targetValue:F

.field private transition:Z

.field private transitionDelay:J

.field private transitionDuration:J

.field private transitionInterpolator:Landroid/animation/TimeInterpolator;

.field private transitionStart:J

.field private value:F


# direct methods
.method public constructor <init>(FLandroid/view/View;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    iput-wide p5, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    iput-object p7, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->invalidate:Ljava/lang/Runnable;

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    iput-wide p5, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    iput-object p7, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    iput-wide p3, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    iput-object p5, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(JLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    iput-wide p4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    iput-object p6, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    iput-object p4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->invalidate:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->invalidate:Ljava/lang/Runnable;

    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    iput-wide p4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    iput-object p6, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;JLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->invalidate:Ljava/lang/Runnable;

    iput-wide p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    iput-object p4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    return-void
.end method


# virtual methods
.method public force(F)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    return-void
.end method

.method public force(Z)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    return-void
.end method

.method public get()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    return-wide v0
.end method

.method public getTransitionProgress()F
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionStart:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getTransitionProgressInterpolated()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFloat;->getTransitionProgress()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFloat;->getTransitionProgress()F

    move-result v0

    return v0
.end method

.method public getValue()F
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionStart:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    iget-wide v5, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionStart:J

    sub-long/2addr v0, v5

    iget-wide v5, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    cmp-long v3, v0, v5

    if-ltz v3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->startValue:F

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->startValue:F

    iget v3, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    invoke-interface {v0, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-static {v1, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    cmpl-float v0, v2, v4

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->invalidate:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    return v0
.end method

.method public set(F)F
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    move-result p1

    return p1
.end method

.method public set(FZ)F
    .locals 4

    .line 0
    if-nez p2, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v0, 0x38d1b717    # 1.0E-4f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    iget p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->startValue:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionStart:J

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->targetValue:F

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->value:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transition:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->firstSet:Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFloat;->getValue()F

    move-result p1

    return p1
.end method

.method public set(Z)F
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    move-result p1

    return p1
.end method

.method public set(ZZ)F
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    move-result p1

    return p1
.end method

.method public setDelay(J)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDelay:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->transitionDuration:J

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFloat;->parent:Landroid/view/View;

    return-void
.end method
