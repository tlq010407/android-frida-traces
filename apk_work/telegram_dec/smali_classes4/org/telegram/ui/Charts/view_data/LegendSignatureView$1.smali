.class Lorg/telegram/ui/Charts/view_data/LegendSignatureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Charts/view_data/LegendSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Charts/view_data/LegendSignatureView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$1;->this$0:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$1;->this$0:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-object v0, v0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->chevron:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$1;->this$0:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-static {v0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->access$000(Lorg/telegram/ui/Charts/view_data/LegendSignatureView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$1;->this$0:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-static {v0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->access$000(Lorg/telegram/ui/Charts/view_data/LegendSignatureView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$1;->this$0:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-static {v0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->access$000(Lorg/telegram/ui/Charts/view_data/LegendSignatureView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$1;->this$0:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-static {v0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->access$000(Lorg/telegram/ui/Charts/view_data/LegendSignatureView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$1;->this$0:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-static {v0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->access$000(Lorg/telegram/ui/Charts/view_data/LegendSignatureView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
