.class Lorg/telegram/ui/Components/ChatAttachAlert$12;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private color:I

.field private final p:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$forceDarkTheme:Z


# direct methods
.method public static synthetic $r8$lambda$fIATiSKOJwJS0uxUvzTIp_A4PxA(Lorg/telegram/ui/Components/ChatAttachAlert$12;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$12;->lambda$onDraw$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->val$forceDarkTheme:Z

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->p:Landroid/graphics/Paint;

    return-void
.end method

.method private synthetic lambda$onDraw$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12502(Lorg/telegram/ui/Components/ChatAttachAlert;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12500(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12300(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12300(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12300(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12300(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12500(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12502(Lorg/telegram/ui/Components/ChatAttachAlert;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12500(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    aput v1, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12402(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$12$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$12$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$12;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12302(Lorg/telegram/ui/Components/ChatAttachAlert;F)F

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x42a80000    # 84.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float v0, v0, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v3, v1

    neg-int v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12500(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v4, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v1, v4

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12600(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v3

    add-float/2addr v1, v3

    add-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasCustomBackground()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCustomBackground()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->val$forceDarkTheme:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    goto :goto_0

    :cond_4
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12700(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v0

    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->color:I

    if-eq v1, v0, :cond_5

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->color:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12500(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$12200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float v4, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$12;->p:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
