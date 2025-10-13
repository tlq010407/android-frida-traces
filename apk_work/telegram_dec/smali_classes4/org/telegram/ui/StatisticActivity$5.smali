.class Lorg/telegram/ui/StatisticActivity$5;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
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

.field final synthetic val$hasMonetization:Z

.field final synthetic val$hasStats:Z

.field final synthetic val$isBoostSupported:Z

.field final synthetic val$statisticLayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StatisticActivity;ZZZLandroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$5;->this$0:Lorg/telegram/ui/StatisticActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/StatisticActivity$5;->val$hasStats:Z

    iput-boolean p3, p0, Lorg/telegram/ui/StatisticActivity$5;->val$isBoostSupported:Z

    iput-boolean p4, p0, Lorg/telegram/ui/StatisticActivity$5;->val$hasMonetization:Z

    iput-object p5, p0, Lorg/telegram/ui/StatisticActivity$5;->val$statisticLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$5;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$200(Lorg/telegram/ui/StatisticActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$5;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->access$300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/ChannelBoostLayout;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/StatisticActivity$5;->val$hasStats:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$5;->val$statisticLayout:Landroid/widget/FrameLayout;

    return-object p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/StatisticActivity$5;->val$isBoostSupported:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$5;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->access$300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/ChannelBoostLayout;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/StatisticActivity$5;->val$hasMonetization:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$5;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->access$400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/ChannelMonetizationLayout;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$5;->val$statisticLayout:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$5;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$200(Lorg/telegram/ui/StatisticActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/StatisticActivity$5;->val$hasStats:Z

    iget-boolean v1, p0, Lorg/telegram/ui/StatisticActivity$5;->val$isBoostSupported:Z

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/StatisticActivity$5;->val$hasMonetization:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method
