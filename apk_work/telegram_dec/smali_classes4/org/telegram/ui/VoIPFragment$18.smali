.class Lorg/telegram/ui/VoIPFragment$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->updateViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$18;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$18;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$3500(Lorg/telegram/ui/VoIPFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->VoipCallEnded:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$18;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$3500(Lorg/telegram/ui/VoIPFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x46

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
