.class Lorg/telegram/ui/Components/Premium/PremiumButtonView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field final synthetic val$loading:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$3;->val$loading:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$3;->val$loading:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->access$002(Lorg/telegram/ui/Components/Premium/PremiumButtonView;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$3;->this$0:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
