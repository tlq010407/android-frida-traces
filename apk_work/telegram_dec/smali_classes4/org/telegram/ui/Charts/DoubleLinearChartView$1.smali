.class Lorg/telegram/ui/Charts/DoubleLinearChartView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Charts/DoubleLinearChartView;->updatePickerMinMaxHeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Charts/DoubleLinearChartView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Charts/DoubleLinearChartView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Charts/DoubleLinearChartView$1;->this$0:Lorg/telegram/ui/Charts/DoubleLinearChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Charts/DoubleLinearChartView$1;->this$0:Lorg/telegram/ui/Charts/DoubleLinearChartView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    iget-object p1, p0, Lorg/telegram/ui/Charts/DoubleLinearChartView$1;->this$0:Lorg/telegram/ui/Charts/DoubleLinearChartView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Charts/BaseChartView;->invalidatePickerChart:Z

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
