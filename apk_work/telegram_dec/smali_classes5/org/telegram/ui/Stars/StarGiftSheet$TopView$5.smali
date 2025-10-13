.class Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->animateSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4902(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;F)F

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$5000(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4900(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$5000(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4900(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
