.class Lorg/telegram/ui/Components/Premium/PremiumButtonView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumButtonView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->access$400(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->access$202(Lorg/telegram/ui/Components/Premium/PremiumButtonView;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->access$300(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V

    return-void
.end method
