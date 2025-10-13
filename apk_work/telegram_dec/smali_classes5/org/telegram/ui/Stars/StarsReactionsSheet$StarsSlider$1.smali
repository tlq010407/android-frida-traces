.class Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->animateProgressTo(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

.field final synthetic val$toProgress:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;F)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$1;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    iput p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$1;->val$toProgress:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$1;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$1;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    iget v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$1;->val$toProgress:F

    iput v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$1;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->onValueChanged(I)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$1;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
