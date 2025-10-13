.class Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;


# direct methods
.method public static synthetic $r8$lambda$nu0ruVaKQ5jIEF3MuPrAqEayuR4(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->lambda$onSingleTapUp$0(FF)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSingleTapUp$0(FF)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iput-object v4, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iput-object v4, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->startBackAnimation()V

    return-void

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleAnimation:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    new-array v4, v2, [F

    aput v3, v4, v1

    aput p1, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v4, 0xdc

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v7, 0x0

    new-array v8, v2, [F

    aput p1, v8, v1

    aput v7, v8, v0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v8, 0x258

    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p1, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v10, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v10, v10, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v10, v10, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    new-array v11, v2, [F

    aput v10, v11, v1

    aput p2, v11, v0

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v11, v11, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->yUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v10, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v10, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v6, v2, [F

    aput p2, v6, v1

    aput v7, v6, v0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->yUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v3, v5, v1

    aput-object p1, v5, v0

    aput-object v10, v5, v2

    const/4 p1, 0x3

    aput-object p2, v5, p1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1$1;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iput-object v0, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iput-object v0, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleAnimation:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->touched:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->onLongPress()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p3, p3, v0

    add-float/2addr p2, p3

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    iget p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    const p3, 0x3d4ccccd    # 0.05f

    mul-float p4, p4, p3

    add-float/2addr p2, p4

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    const/4 p1, 0x1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v3, v0, v3

    mul-float v1, v1, v3

    div-float/2addr v1, v0

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float p1, v0, p1

    mul-float v2, v2, p1

    div-float/2addr v2, v0

    new-instance p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;FF)V

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method
