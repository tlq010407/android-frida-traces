.class Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

.field final synthetic val$gestureDetector:Landroidx/core/view/GestureDetectorCompat;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/content/Context;Landroidx/core/view/GestureDetectorCompat;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    iput-object p3, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->val$gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->val$gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$800(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0xc8

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$800(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$700(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$300(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$300(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x4f000000

    :goto_0
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$400(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/util/DisplayMetrics;F)F

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, -0x31000000

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$500(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$500(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$600(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Landroid/util/DisplayMetrics;F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$300(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$500(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$002(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$202(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$902(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;->access$702(Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;Z)Z

    :cond_4
    :goto_2
    return v0
.end method

.method public setTranslationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView$2;->this$0:Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
