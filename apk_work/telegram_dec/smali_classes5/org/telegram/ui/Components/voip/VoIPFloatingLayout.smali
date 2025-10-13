.class public Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;
    }
.end annotation


# instance fields
.field private final FLOATING_MODE_SCALE:F

.field private active:Z

.field public alwaysFloating:Z

.field public bottomOffset:I

.field bottomPadding:F

.field private delegate:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;

.field private floatingMode:Z

.field public isAppearing:Z

.field lastH:I

.field lastInsets:Landroid/view/WindowInsets;

.field lastW:I

.field leftPadding:F

.field public measuredAsFloatingMode:Z

.field moving:Z

.field mutedAnimator:Landroid/animation/ValueAnimator;

.field mutedDrawable:Landroid/graphics/drawable/Drawable;

.field mutedPaint:Landroid/graphics/Paint;

.field mutedProgress:F

.field private mutedUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private overrideCornerRadius:F

.field final path:Landroid/graphics/Path;

.field private progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final rectF:Landroid/graphics/RectF;

.field public relativePositionToSetX:F

.field relativePositionToSetY:F

.field rightPadding:F

.field public savedRelativePositionX:F

.field public savedRelativePositionY:F

.field private setedFloatingMode:Z

.field starX:F

.field starY:F

.field startMovingFromX:F

.field startMovingFromY:F

.field startTime:J

.field switchToFloatingModeAnimator:Landroid/animation/ValueAnimator;

.field private switchingToFloatingMode:Z

.field public switchingToPip:Z

.field tapListener:Landroid/view/View$OnClickListener;

.field toFloatingModeProgress:F

.field topPadding:F

.field touchSlop:F

.field private uiVisible:Z

.field public updatePositionFromX:F

.field public updatePositionFromY:F

.field final xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$l9tJBS9m5tMYWLxgU_15IsfNWFo(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x3e6b851f    # 0.23f

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->FLOATING_MODE_SCALE:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->xRefPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetY:F

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    iput v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->overrideCornerRadius:F

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->active:Z

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->touchSlop:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;-><init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    invoke-static {p0, v1}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    const/16 v2, 0x66

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Lorg/telegram/messenger/R$drawable;->calls_mute_mini:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->delegate:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->overrideCornerRadius:F

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setRelativePositionInternal(FFIIZ)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->active:Z

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-lt v1, v3, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->topPadding:F

    add-float/2addr v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-lt v1, v3, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsets;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomPadding:F

    add-float/2addr v2, v1

    :cond_4
    :goto_2
    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    sub-float/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    sub-float/2addr v3, v5

    int-to-float p3, p3

    sub-float/2addr v3, p3

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v2

    sub-float/2addr p1, v4

    int-to-float p3, p4

    sub-float/2addr p1, p3

    mul-float p1, p1, p2

    add-float/2addr v4, p1

    const/4 p1, 0x0

    const-wide/16 p2, 0x96

    const/high16 p4, 0x3f800000    # 1.0f

    if-eqz p5, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p5

    invoke-virtual {p5, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean p4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->uiVisible:Z

    if-eqz p4, :cond_5

    const-wide/16 p4, 0x0

    goto :goto_3

    :cond_5
    move-wide p4, p2

    :goto_3
    invoke-virtual {p1, p4, p5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_6
    iget-boolean p5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->alwaysFloating:Z

    if-nez p5, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p5

    invoke-virtual {p5, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    :goto_4
    return-void
.end method

.method private updatePadding()V
    .locals 2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->uiVisible:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :goto_1
    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->topPadding:F

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->uiVisible:Z

    if-eqz v1, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomPadding:F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePositionFromX:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->isAppearing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePositionFromX:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePositionFromY:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->isAppearing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePositionFromX:F

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePositionFromY:F

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_3

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetY:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePositionInternal(FFIIZ)V

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetY:F

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    if-eq v0, v3, :cond_4

    invoke-virtual {p0, v3, v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setFloatingMode(ZZ)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    shr-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    div-float v3, v2, v3

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    mul-float v3, v3, v4

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    mul-float v3, v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v4

    div-float/2addr v2, v4

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    mul-float v2, v2, v4

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    mul-float v2, v2, v4

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->measuredAsFloatingMode:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const v0, 0x3e6b851f    # 0.23f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->measuredAsFloatingMode:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToPip:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->delegate:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;

    if-eqz v0, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->measuredAsFloatingMode:Z

    invoke-interface {v0, v2, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;->onChange(FZ)V

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastH:I

    if-eq p1, p2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastW:I

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->path:Landroid/graphics/Path;

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rectF:Landroid/graphics/RectF;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->toggleInverseFillType()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastH:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastW:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePadding()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->active:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-eqz v1, :cond_c

    if-eq v1, v7, :cond_4

    const/4 v8, 0x2

    if-eq v1, v8, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_4

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starY:F

    sub-float/2addr v2, v3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->moving:Z

    if-nez v3, :cond_3

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->touchSlop:F

    mul-float v4, v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    iput-boolean v7, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->moving:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starY:F

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startMovingFromX:F

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startMovingFromY:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->moving:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startMovingFromX:F

    add-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startMovingFromY:F

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2

    :cond_4
    if-eqz v0, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-nez p1, :cond_b

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->tapListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->moving:Z

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0xc8

    cmp-long v5, v0, v3

    if-gez v5, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->tapListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->topPadding:F

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomPadding:F

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v5, :cond_6

    invoke-static {v5}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    invoke-static {v5}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsets;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    int-to-float v6, v0

    iget v8, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    sub-float/2addr v6, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    sub-float/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    int-to-float v3, v1

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    sub-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_a
    :goto_1
    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_b
    iput-boolean v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->moving:Z

    goto :goto_2

    :cond_c
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-nez v0, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starY:F

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f866666    # 1.05f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_d
    :goto_2
    return v7

    :cond_e
    :goto_3
    return v2
.end method

.method public restoreRelativePosition()V
    .locals 6

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePadding()V

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-nez v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionY:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePositionInternal(FFIIZ)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionY:F

    :cond_0
    return-void
.end method

.method public saveRelativePosition()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->topPadding:F

    add-float/2addr v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-lt v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsets;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomPadding:F

    add-float/2addr v2, v3

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    sub-float/2addr v3, v5

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    sub-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    sub-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionY:F

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionY:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_4
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionY:F

    goto :goto_5

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    goto :goto_4

    :goto_5
    return-void
.end method

.method public setBottomOffset(IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomOffset:I

    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomOffset:I

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->overrideCornerRadius:F

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->delegate:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;

    return-void
.end method

.method public setFloatingMode(ZZ)V
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eq p2, p1, :cond_3

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_3

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_3
    return-void

    :cond_4
    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-eqz p2, :cond_5

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    return-void

    :cond_5
    const/4 p2, 0x0

    if-eqz p1, :cond_8

    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-nez v4, :cond_8

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePadding()V

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    const p1, 0x3e6b851f    # 0.23f

    cmpl-float v4, v6, v3

    if-ltz v4, :cond_6

    iget v7, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetY:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    float-to-int v8, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    float-to-int v9, v4

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePositionInternal(FFIIZ)V

    :cond_6
    iput-boolean v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchToFloatingModeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v3, v6, v2

    aput v1, v6, v0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchToFloatingModeAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchToFloatingModeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchToFloatingModeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p1

    sub-float/2addr v0, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    sub-float v0, v4, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p1

    sub-float/2addr v0, v7

    div-float/2addr v0, v6

    sub-float p1, v5, v0

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$3;

    invoke-direct {v0, p0, v4, v5}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$3;-><init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;FF)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_8
    if-nez p1, :cond_9

    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz v4, :cond_9

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePadding()V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;-><init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;FF)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    :cond_9
    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz p2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    :goto_1
    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_2
    return-void
.end method

.method public setInsets(Landroid/view/WindowInsets;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->active:Z

    return-void
.end method

.method public setMuted(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    if-eqz p1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    aput p2, p1, v1

    const/4 p2, 0x1

    aput v0, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public setOnTapListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->tapListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRelativePosition(FF)V
    .locals 7

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePositionInternal(FFIIZ)V

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetY:F

    :goto_1
    return-void
.end method

.method public setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V
    .locals 7

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->topPadding:F

    add-float/2addr v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsets;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomPadding:F

    add-float/2addr v1, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    sub-float/2addr v2, v5

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    sub-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    sub-float/2addr v5, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    div-float/2addr v5, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(FF)V

    return-void
.end method

.method public setUiVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->uiVisible:Z

    return-void
.end method
