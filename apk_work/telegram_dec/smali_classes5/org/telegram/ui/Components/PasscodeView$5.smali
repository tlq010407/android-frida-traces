.class Lorg/telegram/ui/Components/PasscodeView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$5;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$5;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$5;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PasscodeView;->onHidden()V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$5;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PasscodeView;->access$2502(Lorg/telegram/ui/Components/PasscodeView;F)F

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/PasscodeView;->onAnimationUpdate(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$5;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
