.class Lorg/telegram/ui/Stars/StarGiftSheet$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;ILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->val$page:I

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2700(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2800(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->val$page:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2900(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->val$page:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3000(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->val$page:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$5102(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$7;->val$done:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
