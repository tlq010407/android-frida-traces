.class Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->attachNewButton(IIZLorg/telegram/ui/Components/voip/VoIpSwitchLayout$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

.field final synthetic val$oldVoIpButton:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$3;->this$0:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$3;->val$oldVoIpButton:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$3;->this$0:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$3;->val$oldVoIpButton:Lorg/telegram/ui/Components/voip/VoIpSwitchLayout$VoIpButtonView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
