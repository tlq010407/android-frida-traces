.class public final synthetic Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

.field public final synthetic f$1:Lorg/telegram/ui/Charts/view_data/LineViewData;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;Lorg/telegram/ui/Charts/view_data/LineViewData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Charts/view_data/LineViewData;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Charts/view_data/LineViewData;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;->$r8$lambda$bKtuzVPpbsdm6yxh6HvyS2u8rdQ(Lorg/telegram/ui/StatisticActivity$BaseChartCell$CheckBoxHolder;Lorg/telegram/ui/Charts/view_data/LineViewData;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
