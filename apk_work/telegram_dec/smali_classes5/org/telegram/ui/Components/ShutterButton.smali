.class public Lorg/telegram/ui/Components/ShutterButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;,
        Lorg/telegram/ui/Components/ShutterButton$State;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastUpdateTime:J

.field private longPressed:Ljava/lang/Runnable;

.field private pressed:Z

.field private processRelease:Z

.field private redPaint:Landroid/graphics/Paint;

.field private redProgress:F

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private state:Lorg/telegram/ui/Components/ShutterButton$State;

.field private totalTime:J

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance p1, Lorg/telegram/ui/Components/ShutterButton$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ShutterButton$1;-><init>(Lorg/telegram/ui/Components/ShutterButton;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->camera_btn:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    const v0, -0x32b8b9

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ShutterButton;)Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ShutterButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShutterButton;->processRelease:Z

    return p1
.end method

.method private setHighlighted(Z)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const v4, 0x3f87ae14    # 1.06f

    new-array v5, v2, [F

    aput v4, v5, v1

    invoke-static {p0, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput v4, v6, v1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v1

    aput-object v4, v0, v2

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v2, [F

    aput v4, v5, v1

    invoke-static {p0, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput v4, v6, v1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v1

    aput-object v4, v0, v2

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x28

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :goto_0
    const-wide/16 v0, 0x78

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public getDelegate()Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    return-object v0
.end method

.method public getState()Lorg/telegram/ui/Components/ShutterButton$State;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ShutterButton;->pressed:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_6

    iput v3, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    goto/16 :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    sub-float/2addr v2, v4

    const v5, 0x3d75c28f    # 0.06f

    div-float/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v0, v0

    int-to-float v1, v1

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    sget-object v6, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    const/high16 v7, 0x41d40000    # 26.5f

    if-ne v5, v6, :cond_5

    iget v3, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/telegram/ui/Components/ShutterButton;->lastUpdateTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x11

    cmp-long v8, v3, v5

    if-lez v8, :cond_2

    move-wide v3, v5

    :cond_2
    iget-wide v5, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    const-wide/16 v3, 0x78

    cmp-long v8, v5, v3

    if-lez v8, :cond_3

    iput-wide v3, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ShutterButton;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-wide v4, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    long-to-float v4, v4

    const/high16 v5, 0x42f00000    # 120.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    iget v2, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    :goto_1
    mul-float v3, v3, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    iget v4, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView$$ExternalSyntheticApiModelOutline0;->m()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat$$ExternalSyntheticApiModelOutline22;->m(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)I

    move-result v1

    sget v2, Lorg/telegram/messenger/R$string;->AccActionTakePicture:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$$ExternalSyntheticApiModelOutline7;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {}, Lorg/telegram/ui/Components/ShutterButton$$ExternalSyntheticApiModelOutline0;->m()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat$$ExternalSyntheticApiModelOutline22;->m(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)I

    move-result v1

    sget v2, Lorg/telegram/messenger/R$string;->AccActionRecordVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$$ExternalSyntheticApiModelOutline7;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/high16 p1, 0x42a80000    # 84.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShutterButton;->pressed:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    cmpl-float v4, v0, p1

    if-ltz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_2

    const/4 v0, 0x0

    :cond_2
    cmpl-float v4, v1, p1

    if-ltz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->onTranslationChanged(FF)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    sget-object v0, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne p1, v0, :cond_6

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShutterButton;->processRelease:Z

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterCancel()V

    sget-object p1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShutterButton;->processRelease:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterReleased()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    const-wide/16 v0, 0x320

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShutterButton;->pressed:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShutterButton;->processRelease:Z

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    :cond_6
    :goto_0
    return v2
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    if-eq v0, p1, :cond_3

    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/ShutterButton;->lastUpdateTime:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    iget-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    sget-object p2, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_0
    sget-object p2, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne p1, p2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method
