.class public Lorg/telegram/ui/StatisticActivity$UniversalChartCell;
.super Lorg/telegram/ui/StatisticActivity$BaseChartCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UniversalChartCell"
.end annotation


# instance fields
.field private final classGuid:I

.field private final currentAccount:I

.field private findCell:Lorg/telegram/messenger/Utilities$Callback0Return;

.field private stats_dc:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;I)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;)V

    iput p2, p0, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;->currentAccount:I

    iput p5, p0, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;->classGuid:I

    return-void
.end method


# virtual methods
.method public loadData(Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 4

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;->stats_dc:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;->currentAccount:I

    iget v2, p0, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;->classGuid:I

    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;->findCell:Lorg/telegram/messenger/Utilities$Callback0Return;

    invoke-virtual {p1, v1, v2, v0, v3}, Lorg/telegram/ui/StatisticActivity$ChartViewData;->load(IIILorg/telegram/messenger/Utilities$Callback0Return;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onZoomed()V
    .locals 0

    return-void
.end method

.method public set(ILorg/telegram/ui/StatisticActivity$ChartViewData;Lorg/telegram/messenger/Utilities$Callback0Return;)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;->stats_dc:I

    iput-object p3, p0, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;->findCell:Lorg/telegram/messenger/Utilities$Callback0Return;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->updateData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Z)V

    return-void
.end method

.method public zoomCanceled()V
    .locals 0

    return-void
.end method
