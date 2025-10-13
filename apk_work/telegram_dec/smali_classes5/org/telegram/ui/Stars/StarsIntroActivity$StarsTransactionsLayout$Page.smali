.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# instance fields
.field private final bot_id:J

.field private final currentAccount:I

.field private final listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private final loadTransactionsRunnable:Ljava/lang/Runnable;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final ton:Z

.field private final type:I


# direct methods
.method public static synthetic $r8$lambda$8jIYs06orfpThm2D2v2psVp753g(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BdY5IePEJVmjFRMp_wLAQjLeH9U(JIIZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->lambda$new$0(JIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wMXmhPvBw5AqTTClnqtrGUtSQkA(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZJIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    move-object v0, p0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move/from16 v5, p5

    iput v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->type:I

    move v6, p2

    iput-boolean v6, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->ton:Z

    move/from16 v7, p6

    iput v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    move-wide v2, p3

    iput-wide v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    move-object/from16 v9, p8

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda0;

    move-object v1, v8

    move/from16 v4, p6

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda0;-><init>(JIIZ)V

    iput-object v8, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->loadTransactionsRunnable:Ljava/lang/Runnable;

    new-instance v10, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)V

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)V

    const/4 v5, 0x1

    const/4 v11, 0x0

    move-object v1, v10

    move-object v2, p1

    move/from16 v3, p6

    move/from16 v4, p7

    move-object v7, v8

    move-object v8, v11

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v10, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$1;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)V

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->loadTransactionsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 4

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    iget v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->type:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Stars/BotStarsController;->getTransactions(JI)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;->asTransaction(Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    iget v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->type:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Stars/BotStarsController;->didFullyLoadTransactions(JI)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_1
    iget p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->ton:Z

    invoke-static {p2, v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    iget-object v0, p2, Lorg/telegram/ui/Stars/StarsController;->transactions:[Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->type:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;->asTransaction(Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->type:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stars/StarsController;->didFullyLoadTransactions(I)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x7

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private static synthetic lambda$new$0(JIIZ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    invoke-static {p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p2

    invoke-virtual {p2, p0, p1, p3}, Lorg/telegram/ui/Stars/BotStarsController;->loadTransactions(JI)V

    goto :goto_0

    :cond_0
    invoke-static {p2, p4}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Stars/StarsController;->loadTransactions(I)V

    :goto_0
    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 7

    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->isLoadingVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->loadTransactionsRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botStarsTransactionsLoaded:I

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isLoadingVisible()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    if-eqz v4, :cond_0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsTransactionsLoaded:I

    :goto_0
    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->bot_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    if-eqz v4, :cond_0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsTransactionsLoaded:I

    :goto_0
    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    goto :goto_0

    :goto_1
    return-void
.end method
