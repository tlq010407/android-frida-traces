.class Lorg/telegram/ui/StatisticActivity$7;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StatisticActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastH:I

.field final synthetic this$0:Lorg/telegram/ui/StatisticActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$7;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    iget p1, p0, Lorg/telegram/ui/StatisticActivity$7;->lastH:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$7;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->access$500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$7;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->access$500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/StatisticActivity$7;->lastH:I

    return-void
.end method
