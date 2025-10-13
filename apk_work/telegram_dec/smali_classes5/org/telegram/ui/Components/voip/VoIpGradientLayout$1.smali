.class Lorg/telegram/ui/Components/voip/VoIpGradientLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->switchToCallConnected(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$1;->this$0:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$1;->this$0:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->access$002(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$1;->this$0:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->access$100(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;->setReveal(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$1;->this$0:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->access$200(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$1;->this$0:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->access$300(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$1;->this$0:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->access$300(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$1;->this$0:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->access$300(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$1;->this$0:Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout;->access$400(Lorg/telegram/ui/Components/voip/VoIpGradientLayout;)V

    return-void
.end method
