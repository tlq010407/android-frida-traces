.class public final synthetic Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/StatisticActivity;

.field public final synthetic f$1:[Lorg/telegram/ui/StatisticActivity$ChartViewData;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/StatisticActivity;

    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda10;->f$1:[Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/StatisticActivity;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda10;->f$1:[Lorg/telegram/ui/StatisticActivity$ChartViewData;

    invoke-static {v0, v1}, Lorg/telegram/ui/StatisticActivity;->$r8$lambda$QEmqIvkRTZbYozrVDQ3rSAOhsWU(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method
