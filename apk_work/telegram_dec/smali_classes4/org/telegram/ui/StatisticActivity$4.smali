.class Lorg/telegram/ui/StatisticActivity$4;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
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
.field final synthetic this$0:Lorg/telegram/ui/StatisticActivity;

.field final synthetic val$storiesTabsView:Lorg/telegram/ui/Components/BottomPagerTabs;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;Lorg/telegram/ui/Components/BottomPagerTabs;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$4;->this$0:Lorg/telegram/ui/StatisticActivity;

    iput-object p3, p0, Lorg/telegram/ui/StatisticActivity$4;->val$storiesTabsView:Lorg/telegram/ui/Components/BottomPagerTabs;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTabAnimationUpdate(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$4;->val$storiesTabsView:Lorg/telegram/ui/Components/BottomPagerTabs;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BottomPagerTabs;->setScrolling(Z)V

    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$4;->val$storiesTabsView:Lorg/telegram/ui/Components/BottomPagerTabs;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$4;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getPositionAnimated()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BottomPagerTabs;->setProgress(F)V

    return-void
.end method
