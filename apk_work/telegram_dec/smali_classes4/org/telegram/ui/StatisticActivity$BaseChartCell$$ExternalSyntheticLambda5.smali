.class public final synthetic Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell;

.field public final synthetic f$1:Lorg/telegram/ui/Charts/view_data/TransitionParams;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Lorg/telegram/ui/Charts/view_data/TransitionParams;F)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iput p3, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda5;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$$ExternalSyntheticLambda5;->f$2:F

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->$r8$lambda$-_OzAqP348x8OrzuMilfqlht5c8(Lorg/telegram/ui/StatisticActivity$BaseChartCell;Lorg/telegram/ui/Charts/view_data/TransitionParams;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
