.class Lorg/telegram/ui/Components/PasscodeView$9$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView$9;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PasscodeView$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView$9;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9$2;->this$1:Lorg/telegram/ui/Components/PasscodeView$9;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PasscodeView;->access$2502(Lorg/telegram/ui/Components/PasscodeView;F)F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PasscodeView;->onAnimationUpdate(F)V

    return-void
.end method
