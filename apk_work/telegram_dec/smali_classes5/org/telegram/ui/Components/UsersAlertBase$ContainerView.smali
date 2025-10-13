.class public Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/UsersAlertBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContainerView"
.end annotation


# instance fields
.field private ignoreLayout:Z

.field snapToTopOffset:F

.field private statusBarOpen:Ljava/lang/Boolean;

.field final synthetic this$0:Lorg/telegram/ui/Components/UsersAlertBase;

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$esc-EspxYUkbGGIcbqNqz1PUPtw(Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->lambda$onMeasure$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/UsersAlertBase;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->ignoreLayout:Z

    return-void
.end method

.method private synthetic lambda$onMeasure$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->snapToTopOffset:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->setTranslationY(F)V

    return-void
.end method

.method private updateLightStatusBar(Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->statusBarOpen:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UsersAlertBase;->access$2400(Lorg/telegram/ui/Components/UsersAlertBase;I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/UsersAlertBase;->access$2500(Lorg/telegram/ui/Components/UsersAlertBase;I)I

    move-result v4

    const/high16 v5, 0x33000000

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->statusBarOpen:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget v1, v0, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    invoke-static {v0}, Lorg/telegram/ui/Components/UsersAlertBase;->access$800(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v0

    sub-int/2addr v1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget v2, v0, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    invoke-static {v0}, Lorg/telegram/ui/Components/UsersAlertBase;->access$900(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v0

    sub-int/2addr v2, v0

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v3}, Lorg/telegram/ui/Components/UsersAlertBase;->access$1000(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-lt v3, v4, :cond_2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v3}, Lorg/telegram/ui/Components/UsersAlertBase;->access$1100(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v7, v4, 0x2

    int-to-float v8, v7

    cmpg-float v3, v3, v8

    if-gez v3, :cond_0

    int-to-float v3, v4

    sub-int/2addr v7, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v4}, Lorg/telegram/ui/Components/UsersAlertBase;->access$1200(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v4

    sub-int/2addr v7, v4

    int-to-float v4, v7

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    sub-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v6, v3

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v4}, Lorg/telegram/ui/Components/UsersAlertBase;->access$1300(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    add-float/2addr v4, v7

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v8, v7

    cmpg-float v4, v4, v8

    if-gez v4, :cond_1

    sub-int/2addr v7, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v4}, Lorg/telegram/ui/Components/UsersAlertBase;->access$1400(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v4

    sub-int/2addr v7, v4

    int-to-float v4, v7

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    sub-float/2addr v4, v7

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget-object v7, v7, Lorg/telegram/ui/Components/UsersAlertBase;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7, v5, v2, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget-object v0, v0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v0}, Lorg/telegram/ui/Components/UsersAlertBase;->access$1500(Lorg/telegram/ui/Components/UsersAlertBase;)Z

    move-result v0

    if-nez v0, :cond_4

    cmpl-float v0, v3, v6

    if-eqz v0, :cond_3

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v6}, Lorg/telegram/ui/Components/UsersAlertBase;->access$1600(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v0}, Lorg/telegram/ui/Components/UsersAlertBase;->access$2100(Lorg/telegram/ui/Components/UsersAlertBase;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v6}, Lorg/telegram/ui/Components/UsersAlertBase;->access$1700(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v7}, Lorg/telegram/ui/Components/UsersAlertBase;->access$1800(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v7

    add-int/2addr v7, v2

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v9}, Lorg/telegram/ui/Components/UsersAlertBase;->access$1900(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v9}, Lorg/telegram/ui/Components/UsersAlertBase;->access$2000(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v9

    add-int/2addr v9, v2

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v9, v2

    int-to-float v2, v9

    invoke-virtual {v0, v6, v7, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v0}, Lorg/telegram/ui/Components/UsersAlertBase;->access$2100(Lorg/telegram/ui/Components/UsersAlertBase;)Landroid/graphics/RectF;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v2}, Lorg/telegram/ui/Components/UsersAlertBase;->access$2100(Lorg/telegram/ui/Components/UsersAlertBase;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    int-to-float v0, v7

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v1, v7

    int-to-float v1, v1

    invoke-virtual {v2, v3, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget v1, v1, Lorg/telegram/ui/Components/UsersAlertBase;->keyScrollUp:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v0}, Lorg/telegram/ui/Components/UsersAlertBase;->access$2100(Lorg/telegram/ui/Components/UsersAlertBase;)Landroid/graphics/RectF;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    if-lez v4, :cond_5

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v1}, Lorg/telegram/ui/Components/UsersAlertBase;->access$1600(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v0}, Lorg/telegram/ui/Components/UsersAlertBase;->access$2200(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v0

    int-to-float v7, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float v8, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v1}, Lorg/telegram/ui/Components/UsersAlertBase;->access$2300(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v9, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float v10, v0, v1

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/lit8 v0, v0, 0x2

    if-le v4, v0, :cond_6

    const/4 v5, 0x1

    :cond_6
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->updateLightStatusBar(Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget v2, v1, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UsersAlertBase;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/UsersAlertBase;->updateLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->ignoreLayout:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v0}, Lorg/telegram/ui/Components/UsersAlertBase;->access$500(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v4}, Lorg/telegram/ui/Components/UsersAlertBase;->access$600(Lorg/telegram/ui/Components/UsersAlertBase;)I

    move-result v4

    invoke-virtual {p0, v0, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->ignoreLayout:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-static {v1}, Lorg/telegram/ui/Components/UsersAlertBase;->access$700(Lorg/telegram/ui/Components/UsersAlertBase;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowNestedScroll(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget v1, v1, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    if-eqz v1, :cond_2

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->snapToTopOffset:F

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->snapToTopOffset:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v1, v4, v3

    const/4 v1, 0x0

    aput v1, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView$1;-><init>(Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->snapToTopOffset:F

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UsersAlertBase;->measurePadding(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowNestedScroll(Z)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget-object v1, v1, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-eq v1, v0, :cond_5

    iput-boolean v2, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->ignoreLayout:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget-object v1, v1, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->ignoreLayout:Z

    :cond_5
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
