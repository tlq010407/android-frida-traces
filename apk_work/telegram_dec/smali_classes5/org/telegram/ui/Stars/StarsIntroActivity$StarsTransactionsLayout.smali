.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarsTransactionsLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;
    }
.end annotation


# instance fields
.field private final adapter:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;

.field private final bot_id:J

.field private final currentAccount:I

.field private final tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

.field private final ton:Z

.field private final viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZJILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    move-object/from16 v10, p7

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move/from16 v3, p2

    iput v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->currentAccount:I

    move/from16 v4, p3

    iput-boolean v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->ton:Z

    move-wide/from16 v5, p4

    iput-wide v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->bot_id:J

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v12, Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-direct {v12, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v13, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;

    move-object v1, v13

    move-object v2, p1

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;-><init>(Landroid/content/Context;IZJILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->adapter:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    const/4 v1, 0x3

    invoke-virtual {v12, v11, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v3, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v3, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(FF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->adapter:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->fill()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    :cond_0
    return-void
.end method

.method public getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->access$1300(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->adapter:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->fill()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method
