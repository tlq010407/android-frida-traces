.class Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setNewText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$1;->this$0:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$1;->this$0:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->access$002(Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText$1;->this$0:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {p1}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->access$100(Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
