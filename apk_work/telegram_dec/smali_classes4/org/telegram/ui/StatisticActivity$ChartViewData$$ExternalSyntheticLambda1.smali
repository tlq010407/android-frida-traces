.class public final synthetic Lorg/telegram/ui/StatisticActivity$ChartViewData$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field public final synthetic f$1:Lorg/telegram/ui/Charts/data/ChartData;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback0Return;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/StatisticActivity$ChartViewData;Lorg/telegram/ui/Charts/data/ChartData;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback0Return;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$ChartViewData$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$ChartViewData$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Charts/data/ChartData;

    iput-object p3, p0, Lorg/telegram/ui/StatisticActivity$ChartViewData$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/StatisticActivity$ChartViewData$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/messenger/Utilities$Callback0Return;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$ChartViewData$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$ChartViewData$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$ChartViewData$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$ChartViewData$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/messenger/Utilities$Callback0Return;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/StatisticActivity$ChartViewData;->$r8$lambda$de6Hns8EGD35kOGAm5USaZbto7c(Lorg/telegram/ui/StatisticActivity$ChartViewData;Lorg/telegram/ui/Charts/data/ChartData;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback0Return;)V

    return-void
.end method
