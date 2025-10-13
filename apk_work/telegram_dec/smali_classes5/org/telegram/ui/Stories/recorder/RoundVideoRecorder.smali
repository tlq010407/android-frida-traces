.class public abstract Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final MAX_DURATION:J

.field private alpha:F

.field public final cameraView:Lorg/telegram/messenger/camera/CameraView;

.field private cameraViewAnimator:Landroid/animation/ValueAnimator;

.field private cancelled:Z

.field private destroyAnimator:Landroid/animation/ValueAnimator;

.field private destroyT:F

.field public final file:Ljava/io/File;

.field private onDestroyCallback:Ljava/lang/Runnable;

.field private onDoneCallback:Lorg/telegram/messenger/Utilities$Callback3;

.field private final progressPaint:Landroid/graphics/Paint;

.field private recordingStarted:J

.field private recordingStopped:J

.field private roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private final stopRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$1xHNCiJfl2EirUmIErIRACeZg70(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$5M3sg-eIAnsDtyLJD8aVEiZA-Ns(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->lambda$new$0(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bm6feqWbg2rU00RJeTfOrkBzelY(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->lambda$hideTo$5(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fv81bCr7jia5zJ3bSbYBnttNJ2c(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->lambda$destroy$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OIpBb4N7bl3W4ACqFGTAhOYjrTI(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->lambda$hideTo$4(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bSeAFNTGYJhd7BXrVHF38bofQCI(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$d_WviE3E0VioCHM-97QIf2y9hxI(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->lambda$hideTo$3()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->recordingStarted:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->recordingStopped:J

    const-wide/32 v0, 0xe86c

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->MAX_DURATION:J

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->shadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->progressPaint:Landroid/graphics/Paint;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->stopRunnable:Ljava/lang/Runnable;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->alpha:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cancelled:Z

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->file:Ljava/io/File;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$1;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$1;-><init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->initTexture()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private synthetic lambda$destroy$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroyT:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroyT:F

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$hideTo$3()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideTo$4(FFFFLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    mul-float p3, p3, p5

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    mul-float p4, p4, p5

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p5

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->alpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$hideTo$5(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraViewAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    sub-float v6, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    sub-float v7, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda7;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$2;-><init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;J)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->recordingStopped:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->stopRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->onDoneCallback:Lorg/telegram/messenger/Utilities$Callback3;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->file:Ljava/io/File;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroy(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->recordingStarted:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->stopRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0xe86c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 13

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->recordingStarted:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->file:Ljava/io/File;

    new-instance v9, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V

    new-instance v10, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v8, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/messenger/camera/CameraController;->recordVideo(Ljava/lang/Object;Ljava/io/File;ZLorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraController$ICameraView;Z)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cancelled:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->stopRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionRecording()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Ljava/lang/Object;ZZ)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroy(Z)V

    return-void
.end method

.method public destroy(Z)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->onDestroyCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->onDestroyCallback:Ljava/lang/Runnable;

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->stopRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroyAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroyT:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroyAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroyAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$3;-><init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroyAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroyAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x118

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float v2, v2, v4

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v6

    sub-float v6, v5, v6

    mul-float v4, v4, v6

    add-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    sub-float v7, v5, v7

    mul-float v6, v6, v7

    sub-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    sub-float v8, v5, v8

    mul-float v7, v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v1, v0, v2, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->shadowPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3f28f5c3    # 0.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->alpha:F

    const/high16 v7, 0x20000000

    invoke-static {v7, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->shadowPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->alpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v3, v5

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->setDraw(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->alpha:F

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->setDraw(Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->recordingStarted:J

    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->sinceRecording()J

    move-result-wide v2

    long-to-float v0, v2

    const v2, 0x47686c00    # 59500.0f

    div-float/2addr v0, v2

    invoke-static {v0, v5, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->progressPaint:Landroid/graphics/Paint;

    const v3, 0x40551eb8    # 3.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->progressPaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->alpha:F

    const v4, -0x41000001    # -0.49999997f

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->progressPaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->alpha:F

    invoke-static {v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const v2, 0x40f547ae    # 7.665f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v3, v0, v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->progressPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->recordingStopped:J

    cmp-long p1, v0, v9

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public hideTo(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroy(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->stopRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->setDraw(Z)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->onDestroyCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public onDone(Lorg/telegram/messenger/Utilities$Callback3;)Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->onDoneCallback:Lorg/telegram/messenger/Utilities$Callback3;

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p4, p1

    const/high16 p1, 0x42900000    # 72.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p4

    iget-object p5, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p2, p4, p1, p3, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3edc28f6    # 0.43f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected abstract receivedAmplitude(D)V
.end method

.method public sinceRecording()J
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->recordingStarted:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->recordingStopped:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_1
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->recordingStarted:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xe86c

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method public sinceRecordingText()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->sinceRecording()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    long-to-int v3, v2

    mul-int/lit16 v2, v3, 0x3e8

    int-to-long v4, v2

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x64

    div-long/2addr v0, v4

    long-to-int v1, v0

    div-int/lit8 v0, v3, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    if-ge v3, v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stop()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->stopRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->recordingStarted:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->destroy(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionRecording()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Ljava/lang/Object;ZZ)V

    :goto_0
    return-void
.end method
