.class Lorg/telegram/ui/StatisticActivity$3;
.super Lorg/telegram/ui/Components/BottomPagerTabs;
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


# direct methods
.method constructor <init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$3;->this$0:Lorg/telegram/ui/StatisticActivity;

    iput-boolean p4, p0, Lorg/telegram/ui/StatisticActivity$3;->val$hasStats:Z

    iput-boolean p5, p0, Lorg/telegram/ui/StatisticActivity$3;->val$hasMonetization:Z

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/BottomPagerTabs;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public createTabs()[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;
    .locals 15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lorg/telegram/ui/StatisticActivity$3;->val$hasStats:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    sget v5, Lorg/telegram/messenger/R$raw;->stats:I

    sget v2, Lorg/telegram/messenger/R$string;->Statistics:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v6, 0x19

    const/16 v7, 0x31

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;-><init>(Lorg/telegram/ui/Components/BottomPagerTabs;IIIILjava/lang/CharSequence;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->customFrameInvert()Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    add-int/lit8 v2, v7, 0x1

    sget v8, Lorg/telegram/messenger/R$raw;->boosts:I

    sget v3, Lorg/telegram/messenger/R$string;->Boosts:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v9, 0x19

    const/16 v10, 0x31

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;-><init>(Lorg/telegram/ui/Components/BottomPagerTabs;IIIILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lorg/telegram/ui/StatisticActivity$3;->val$hasMonetization:Z

    if-eqz v1, :cond_1

    new-instance v1, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    sget v11, Lorg/telegram/messenger/R$raw;->monetize:I

    sget v3, Lorg/telegram/messenger/R$string;->Monetization:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v12, 0x13

    const/16 v13, 0x2d

    move-object v8, v1

    move-object v9, p0

    move v10, v2

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;-><init>(Lorg/telegram/ui/Components/BottomPagerTabs;IIIILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    return-object v0
.end method
