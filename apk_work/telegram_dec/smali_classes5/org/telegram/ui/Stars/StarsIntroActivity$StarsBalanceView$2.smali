.class Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->bounce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView$2;->this$0:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView$2;->this$0:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->access$1200(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView$2;->this$0:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->access$1200(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
