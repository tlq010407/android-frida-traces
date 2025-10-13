.class public abstract Lorg/telegram/ui/Components/ScaleStateListAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static apply(Landroid/view/View;)V
    .locals 2

    .line 0
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    return-void
.end method

.method public static apply(Landroid/view/View;FF)V
    .locals 10

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float p1, v5, p1

    new-array v6, v1, [F

    aput p1, v6, v2

    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v1, [F

    aput p1, v8, v2

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v8, v0, [Landroid/animation/Animator;

    aput-object v6, v8, v2

    aput-object p1, v8, v1

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v8, 0x50

    invoke-virtual {v3, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v1, [F

    aput v5, v6, v2

    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v6, v1, [F

    aput v5, v6, v2

    invoke-static {p0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v2

    aput-object v5, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, p2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/animation/StateListAnimator;

    invoke-direct {p2}, Landroid/animation/StateListAnimator;-><init>()V

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p2, v0, v3}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    new-array v0, v2, [I

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    invoke-static {p0, p2}, Lorg/telegram/ui/Components/ScaleStateListAnimator$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/animation/StateListAnimator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static reset(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/animation/StateListAnimator;)V

    :cond_0
    return-void
.end method
