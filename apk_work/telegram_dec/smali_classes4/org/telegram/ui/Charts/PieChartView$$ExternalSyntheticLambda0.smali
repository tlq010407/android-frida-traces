.class public final synthetic Lorg/telegram/ui/Charts/PieChartView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Charts/PieChartView;

.field public final synthetic f$1:Lorg/telegram/ui/Charts/PieChartViewData;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Charts/PieChartView;Lorg/telegram/ui/Charts/PieChartViewData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Charts/PieChartView$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Charts/PieChartView;

    iput-object p2, p0, Lorg/telegram/ui/Charts/PieChartView$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Charts/PieChartViewData;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Charts/PieChartView$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Charts/PieChartView;

    iget-object v1, p0, Lorg/telegram/ui/Charts/PieChartView$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Charts/PieChartViewData;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Charts/PieChartView;->$r8$lambda$ehJqdBgwdULrwxdWHp-FfWVZY4c(Lorg/telegram/ui/Charts/PieChartView;Lorg/telegram/ui/Charts/PieChartViewData;Landroid/animation/ValueAnimator;)V

    return-void
.end method
