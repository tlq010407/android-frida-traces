.class Lorg/telegram/ui/Components/GroupCallPip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/GroupCallPip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/GroupCallPip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/GroupCallPip;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallPip$1;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$1;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCallPip;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallPip;->access$000(Lorg/telegram/ui/Components/GroupCallPip;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallPip$1;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object p1, p1, Lorg/telegram/ui/Components/GroupCallPip;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallPip$1;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v0, p1, Lorg/telegram/ui/Components/GroupCallPip;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p1, Lorg/telegram/ui/Components/GroupCallPip;->windowView:Landroid/widget/FrameLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/GroupCallPip;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
