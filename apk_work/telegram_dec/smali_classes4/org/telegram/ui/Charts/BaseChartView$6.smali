.class Lorg/telegram/ui/Charts/BaseChartView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Charts/BaseChartView;->updateDates(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Charts/BaseChartView;

.field final synthetic val$data:Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Charts/BaseChartView;Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView$6;->this$0:Lorg/telegram/ui/Charts/BaseChartView;

    iput-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView$6;->val$data:Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView$6;->this$0:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView$6;->this$0:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object p1, p1, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView$6;->val$data:Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
