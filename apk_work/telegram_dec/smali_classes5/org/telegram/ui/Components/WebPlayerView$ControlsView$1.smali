.class Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$4302(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
