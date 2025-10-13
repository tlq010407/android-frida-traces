.class Lorg/telegram/ui/Components/PasscodeView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->showPin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$7;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/PasscodeView$7;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-boolean p1, p0, Lorg/telegram/ui/Components/PasscodeView$7;->val$show:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$7;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    iget-object v2, v2, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$7;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    iget-object v2, v2, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v3, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$7;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    iget-object v2, v2, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$7;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PasscodeView;->access$1500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x3f666666    # 0.9f

    invoke-static {v1, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$7;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PasscodeView;->access$1500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$7;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PasscodeView;->access$1500(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$7;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PasscodeView;->access$1600(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    move-result-object v2

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
