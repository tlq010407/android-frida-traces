.class Lorg/telegram/ui/ChannelCreateActivity$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity;->showAvatarProgress(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelCreateActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$10;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChannelCreateActivity$10;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$10;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2402(Lorg/telegram/ui/ChannelCreateActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$10;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelCreateActivity;->access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$10;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelCreateActivity;->access$2500(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity$10;->val$show:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$10;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelCreateActivity;->access$2500(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$10;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelCreateActivity;->access$2200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$10;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2402(Lorg/telegram/ui/ChannelCreateActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_2
    :goto_2
    return-void
.end method
