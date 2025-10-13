.class Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/voip/VoIPPiPView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingView"
.end annotation


# instance fields
.field bottomPadding:F

.field leftPadding:F

.field rightPadding:F

.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

.field topPadding:F

.field touchSlop:F


# direct methods
.method public static synthetic $r8$lambda$AONg6xsoMcVxXw2xqkI5UroTv58(Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;FLorg/telegram/ui/Components/voip/VoIPPiPView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->lambda$expand$1(FLorg/telegram/ui/Components/voip/VoIPPiPView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IozzDMM2-wo9rwKfitkKti6NbPU(FLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->lambda$expand$2(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nn-UQfHzfHnDL_MoShkmrtDfByk(FFLorg/telegram/ui/Components/voip/VoIPPiPView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->lambda$expand$0(FFLorg/telegram/ui/Components/voip/VoIPPiPView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/voip/VoIPPiPView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->touchSlop:F

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    new-instance p2, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;Lorg/telegram/ui/Components/voip/VoIPPiPView;)V

    invoke-static {p0, p2}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->expand(Z)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;Lorg/telegram/ui/Components/voip/VoIPPiPView;Lorg/telegram/ui/Components/voip/VoIPPiPView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->swapRender(Lorg/telegram/ui/Components/voip/VoIPPiPView;Lorg/telegram/ui/Components/voip/VoIPPiPView;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->getRelativePosition([F)V

    return-void
.end method

.method private expand(Z)V
    .locals 14

    const/4 v0, 0x2

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->collapseRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v1}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$500(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->expanded:Z

    if-ne v1, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iput-boolean p1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->expanded:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget v2, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v4, v2, v3

    iget v5, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->xOffset:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v6, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentHeight:I

    int-to-float v6, v6

    mul-float v3, v3, v6

    iget v7, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->yOffset:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v3, v7

    const v8, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v8

    add-float/2addr v2, v5

    mul-float v6, v6, v8

    add-float/2addr v6, v7

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$502(Lorg/telegram/ui/Components/voip/VoIPPiPView;Z)Z

    const/high16 v1, 0x3f200000    # 0.625f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget v11, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentWidth:I

    iget v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentHeight:I

    invoke-static {p1, v11, v0, v8}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$900(Landroid/content/Context;IIF)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget v13, v12, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentWidth:I

    iget v12, v12, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentHeight:I

    invoke-direct {v0, v11, v13, v12, v5}, Lorg/telegram/ui/Components/voip/VoIPPiPView;-><init>(Landroid/content/Context;IIZ)V

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v11, v11, Lorg/telegram/ui/Components/voip/VoIPPiPView;->point:[F

    invoke-direct {p0, v11}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->getRelativePosition([F)V

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v12, v11, Lorg/telegram/ui/Components/voip/VoIPPiPView;->point:[F

    aget v9, v12, v9

    aget v5, v12, v5

    iget-object v12, v11, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v13, v13

    sub-float/2addr v2, v4

    mul-float v2, v2, v9

    sub-float/2addr v13, v2

    float-to-int v2, v13

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    sub-float/2addr v6, v3

    mul-float v6, v6, v5

    sub-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v11}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$200(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v2, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$200(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    iput-object p1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$200(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$202(Lorg/telegram/ui/Components/voip/VoIPPiPView;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1002(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->swapRender(Lorg/telegram/ui/Components/voip/VoIPPiPView;Lorg/telegram/ui/Components/voip/VoIPPiPView;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    mul-float p1, p1, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentWidth:I

    int-to-float v2, v2

    mul-float v9, v9, v2

    mul-float v9, v9, v8

    invoke-virtual {v1, v9}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentHeight:I

    int-to-float v2, v2

    mul-float v5, v5, v2

    mul-float v5, v5, v8

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotY(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topShadow:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->enlargeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;FLorg/telegram/ui/Components/voip/VoIPPiPView;)V

    const-wide/16 v2, 0x40

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v7

    if-nez v7, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/VoIPPiPView;->point:[F

    invoke-direct {v7, v10}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->getRelativePosition([F)V

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v7, v7, Lorg/telegram/ui/Components/voip/VoIPPiPView;->point:[F

    aget v10, v7, v9

    aget v5, v7, v5

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v11, v11

    sub-float/2addr v2, v4

    mul-float v2, v2, v10

    add-float/2addr v11, v2

    float-to-int v2, v11

    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    sub-float/2addr v6, v3

    mul-float v6, v6, v5

    add-float/2addr v4, v6

    float-to-int v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float v2, v2, v1

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget v3, v3, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentWidth:I

    int-to-float v3, v3

    mul-float v10, v10, v3

    mul-float v10, v10, v8

    invoke-virtual {v1, v10}, Landroid/view/View;->setPivotX(F)V

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget v3, v3, Lorg/telegram/ui/Components/voip/VoIPPiPView;->parentHeight:I

    int-to-float v3, v3

    mul-float v5, v5, v3

    mul-float v5, v5, v8

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotY(F)V

    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->showUi(Z)V

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$$ExternalSyntheticLambda1;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$3;-><init>(Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iput-object v0, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->expandAnimator:Landroid/animation/ValueAnimator;

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getRelativePosition([F)V
    .locals 5

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v3, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->leftPadding:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->rightPadding:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v3, v3, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v2, v1

    const/4 v1, 0x0

    aput v2, p1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v3, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->topPadding:F

    sub-float/2addr v2, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->bottomPadding:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v3, v3, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    div-float/2addr v2, v0

    const/4 v0, 0x1

    aput v2, p1, v0

    aget v2, p1, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, p1, v1

    aget v1, p1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p1, v0

    return-void
.end method

.method private static synthetic lambda$expand$0(FFLorg/telegram/ui/Components/voip/VoIPPiPView;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    mul-float p0, p0, v0

    mul-float p1, p1, p3

    add-float/2addr p0, p1

    iget-object p1, p2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, p2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x15

    if-lt p0, p1, :cond_0

    iget-object p0, p2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$expand$1(FLorg/telegram/ui/Components/voip/VoIPPiPView;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$200(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->showUi(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v0, p2}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$$ExternalSyntheticLambda2;-><init>(FFLorg/telegram/ui/Components/voip/VoIPPiPView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView$2;-><init>(Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0x12c

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iput-object v1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->expandAnimator:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static synthetic lambda$expand$2(FLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float p0, p0, p1

    add-float/2addr v0, p0

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x15

    if-lt p0, p1, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private showUi(Z)V
    .locals 7

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topShadow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->enlargeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->closeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->enlargeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private swapRender(Lorg/telegram/ui/Components/voip/VoIPPiPView;Lorg/telegram/ui/Components/voip/VoIPPiPView;)V
    .locals 2

    iget-object v0, p2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setStub(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    iget-object v0, p2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setStub(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    iget-object v0, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    sget-object p1, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-interface {p1}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    iget-object p1, p2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v0, Lorg/telegram/messenger/voip/VideoCapturerDevice;->eglBase:Lorg/webrtc/EglBase;

    invoke-interface {v0}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v1}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$1300(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Lorg/webrtc/RendererCommon$RendererEvents;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget-object p2, p2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p2, p2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->callingUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget v3, v3, Lorg/telegram/ui/Components/voip/VoIPPiPView;->progressToCameraMini:F

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    div-float v2, v4, v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->progressToCameraMini:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    div-float v2, v4, v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->progressToCameraMini:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->progressToCameraMini:F

    sub-float v0, v4, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float v0, v0, v2

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->progressToCameraMini:F

    sub-float v0, v4, v0

    mul-float v0, v0, v2

    add-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->currentUserTextureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->progressToCameraMini:F

    sub-float v0, v4, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->leftPadding:F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->rightPadding:F

    const/high16 p2, 0x42700000    # 60.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->topPadding:F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->bottomPadding:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$500(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    sget-boolean v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->switchingToPip:Z

    if-nez v2, :cond_10

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->collapseRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_e

    if-eq v6, v1, :cond_4

    if-eq v6, v0, :cond_1

    const/4 v2, 0x3

    if-eq v6, v2, :cond_4

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget v0, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->startX:F

    sub-float v0, v2, v0

    iget v3, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->startY:F

    sub-float v3, v4, v3

    iget-boolean p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moving:Z

    if-nez p1, :cond_3

    mul-float p1, v0, v0

    mul-float v6, v3, v3

    add-float/2addr p1, v6

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->touchSlop:F

    mul-float v6, v6, v6

    cmpl-float p1, p1, v6

    if-lez p1, :cond_3

    if-eqz v5, :cond_2

    invoke-interface {v5, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iput-boolean v1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moving:Z

    iput v2, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->startX:F

    iput v4, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->startY:F

    const/4 v0, 0x0

    const/4 v3, 0x0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-boolean v5, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moving:Z

    if-eqz v5, :cond_f

    iget-object v5, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    float-to-int v0, v6

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->startX:F

    iput v4, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->startY:F

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$200(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowView:Landroid/widget/FrameLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moveToBoundsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-wide/16 v6, 0x96

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moving:Z

    if-nez p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-wide v10, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->startTime:J

    sub-long/2addr v8, v10

    cmp-long p1, v8, v6

    if-gez p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_6

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v1, :cond_6

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$600(Lorg/telegram/ui/Components/voip/VoIPPiPView;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/VoIPFragment;->show(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "voip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iput-boolean v3, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moving:Z

    return v3

    :cond_8
    if-eqz v5, :cond_d

    invoke-interface {v5, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sget v4, Lorg/telegram/ui/Components/voip/VoIPPiPView;->topInset:I

    add-int/2addr p1, v4

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->topPadding:F

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->bottomPadding:F

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v9, v8, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, v8, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/2addr v9, v8

    int-to-float v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v9, v9, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v8

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v11, v10, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    add-int/2addr v11, v10

    int-to-float v10, v11

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v11, v11, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v10

    iget-object v12, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v13, v12, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moveToBoundsAnimator:Landroid/animation/AnimatorSet;

    iget v12, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->leftPadding:F

    cmpg-float v8, v8, v12

    if-gez v8, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v8, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v8, v8

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v12, v2

    new-array v2, v0, [F

    aput v8, v2, v3

    aput v12, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v8}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$700(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v8, v8, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moveToBoundsAnimator:Landroid/animation/AnimatorSet;

    new-array v9, v1, [Landroid/animation/Animator;

    aput-object v2, v9, v3

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_9
    int-to-float v8, v2

    iget v12, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->rightPadding:F

    sub-float/2addr v8, v12

    cmpl-float v8, v9, v8

    if-lez v8, :cond_a

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v9, v8, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v9, v9

    iget-object v8, v8, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int/2addr v2, v8

    int-to-float v2, v2

    iget v8, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->rightPadding:F

    sub-float/2addr v2, v8

    new-array v8, v0, [F

    aput v9, v8, v3

    aput v2, v8, v1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v8}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$700(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v8, v8, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moveToBoundsAnimator:Landroid/animation/AnimatorSet;

    new-array v9, v1, [Landroid/animation/Animator;

    aput-object v2, v9, v3

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_a
    :goto_1
    cmpg-float v2, v10, v4

    if-gez v2, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v2, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v4, p1

    new-array p1, v0, [F

    aput v2, p1, v3

    aput v4, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$800(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moveToBoundsAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_b
    int-to-float v2, p1

    sub-float/2addr v2, v5

    cmpl-float v2, v11, v2

    if-lez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v4, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPPiPView;->floatingView:Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    sub-float/2addr p1, v5

    new-array v0, v0, [F

    aput v4, v0, v3

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$800(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moveToBoundsAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_c
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moveToBoundsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moveToBoundsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iput-boolean v3, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moving:Z

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$000()Lorg/telegram/ui/Components/voip/VoIPPiPView;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->expanded:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->collapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iput v2, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->startX:F

    iput v4, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->startY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->startTime:J

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$FloatingView;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPPiPView;->moveToBoundsAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    :goto_3
    return v1

    :cond_10
    :goto_4
    return v3
.end method
