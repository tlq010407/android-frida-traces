.class Lorg/telegram/ui/Components/PipRoundVideoView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipRoundVideoView;->animateToBoundsMaybe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PipRoundVideoView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipRoundVideoView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$7;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$7;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$7;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$800(Lorg/telegram/ui/Components/PipRoundVideoView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PipRoundVideoView$7;->this$0:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->access$800(Lorg/telegram/ui/Components/PipRoundVideoView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
