.class Lorg/telegram/ui/Components/voip/VoIPPiPView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/voip/VoIPPiPView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPPiPView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$3;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

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

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$3;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPPiPView;->access$200(Lorg/telegram/ui/Components/voip/VoIPPiPView;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPPiPView$3;->this$0:Lorg/telegram/ui/Components/voip/VoIPPiPView;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowView:Landroid/widget/FrameLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPPiPView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewLayout(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
