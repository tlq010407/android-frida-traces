.class Lorg/telegram/ui/Charts/view_data/LegendSignatureView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgress(ZZ)V
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

    iput-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$2;->this$0:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$2;->this$0:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-static {p1}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->access$000(Lorg/telegram/ui/Charts/view_data/LegendSignatureView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
