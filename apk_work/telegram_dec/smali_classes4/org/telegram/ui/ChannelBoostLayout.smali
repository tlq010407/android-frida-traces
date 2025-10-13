.class public Lorg/telegram/ui/ChannelBoostLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

.field private final boosters:Ljava/util/ArrayList;

.field boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private boostsTabs:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

.field currentAccount:I

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final dialogId:J

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final gifts:Ljava/util/ArrayList;

.field private hasBoostsNext:Z

.field private hasGiftsNext:Z

.field private final items:Ljava/util/ArrayList;

.field private lastBoostsOffset:Ljava/lang/String;

.field private lastGiftsOffset:Ljava/lang/String;

.field private limitBoosts:I

.field private limitGifts:I

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private nextBoostRemaining:I

.field private nextGiftsRemaining:I

.field private progressLayout:Landroid/widget/LinearLayout;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedTab:I

.field private totalBoosts:I

.field private totalGifts:I

.field usersLoading:Z


# direct methods
.method public static synthetic $r8$lambda$5ZKnb5Pdhgbfe_Ee2Q3EfRCkkx8(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadOnlyBoosts$7(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FokkGKwIbRc478gKtvmSEt81oyc(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadOnlyGifts$10(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S9Pz4JotZX-_U56uiBAd2lFXDYA(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadOnlyBoosts$8(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VT6n8LoJDdZqxZ_RvnrWTtkotW4(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadStatistic$2(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yn9d3OTxj8S4ja-7NwgiC5UU6Gw(Lorg/telegram/ui/ChannelBoostLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadUsers$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$d7vyIwnRlk3-NlITRXX8W6w_4-8(Lorg/telegram/ui/ChannelBoostLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadUsers$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$gnaW0lu2o7JU43k9fsY-eRmZRBI(Lorg/telegram/ui/ChannelBoostLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadUsers$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$iWtPm0XOKsted3hZdkIpbpgzM3c(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadOnlyGifts$9(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jNZ_oDBa1s6UY7PfADYGSJVvFOk(Lorg/telegram/ui/ChannelBoostLayout;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$new$0(Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ndMXgb9bmHOloxbENRqfUevpSJA(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadStatistic$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yBrRgy32wtnfF7YsSVzdS8lZ3a8(Lorg/telegram/ui/ChannelBoostLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->lambda$loadUsers$4()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelBoostLayout$1;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    const-string v1, ""

    iput-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastBoostsOffset:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastGiftsOffset:Ljava/lang/String;

    const/4 v1, 0x5

    iput v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitGifts:I

    iput v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitBoosts:I

    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object p4, p0, Lorg/telegram/ui/ChannelBoostLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-wide p2, p0, Lorg/telegram/ui/ChannelBoostLayout;->dialogId:J

    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    iget-object v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v9, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda0;

    move-object v2, v9

    move-object v3, p0

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->loadStatistic()V

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/ChannelBoostLayout;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->createEmptyView(Landroid/content/Context;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->getGiveawayOptions()Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelBoostLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelBoostLayout;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->boostsTabs:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boostsTabs:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelBoostLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ChannelBoostLayout;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelBoostLayout;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChannelBoostLayout;->isChannel()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelBoostLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextBoostRemaining:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelBoostLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextGiftsRemaining:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelBoostLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->totalBoosts:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelBoostLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->totalGifts:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelBoostLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private isChannel()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$loadOnlyBoosts$7(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    if-eqz p2, :cond_4

    const/16 p1, 0x14

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitBoosts:I

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;

    iget p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastBoostsOffset:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->boosts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$Boost;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$Boost;->multiplier:I

    if-lez v2, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->count:I

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextBoostRemaining:I

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextBoostRemaining:I

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->hasBoostsNext:Z

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->count:I

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->totalBoosts:I

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadOnlyBoosts$8(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda10;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadOnlyGifts$10(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda9;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadOnlyGifts$9(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    if-eqz p2, :cond_4

    const/16 p1, 0x14

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitGifts:I

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;

    iget p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastGiftsOffset:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->boosts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$Boost;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$Boost;->multiplier:I

    if-lez v2, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->count:I

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextGiftsRemaining:I

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->nextGiftsRemaining:I

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->hasGiftsNext:Z

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->count:I

    iput p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->totalGifts:I

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadStatistic$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ChannelBoostLayout$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelBoostLayout$2;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->loadUsers(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$2(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUsers$3()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$loadUsers$4()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChannelBoostLayout;->loadOnlyBoosts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChannelBoostLayout;->loadOnlyGifts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUsers$5()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$loadUsers$6()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelBoostLayout;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 15

    move-object v0, p0

    move-wide/from16 v7, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    instance-of v1, v11, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;

    if-eqz v1, :cond_0

    move-object v1, v11

    check-cast v1, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$Boost;

    move-result-object v5

    iget-boolean v2, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget-wide v13, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->stars:J

    cmp-long v6, v13, v3

    if-lez v6, :cond_1

    iget v2, v0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    move-object/from16 v1, p1

    move-wide/from16 v3, p2

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showBoostsSheet(Landroid/content/Context;IJLorg/telegram/tgnet/tl/TL_stories$Boost;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_0
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_1
    iget-boolean v6, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->gift:Z

    if-nez v6, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v12, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    cmp-long v14, v12, v3

    if-gez v14, :cond_4

    :cond_3
    iget-boolean v3, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->unclaimed:Z

    if-eqz v3, :cond_5

    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    iget-wide v3, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    const-wide/16 v12, -0x1

    cmp-long v5, v3, v12

    if-nez v5, :cond_6

    new-instance v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v12, 0x0

    new-array v3, v12, [Ljava/lang/String;

    const/16 v4, 0x24

    invoke-virtual {v1, v2, v4, v4, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object v2, v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingRecipientWillBeSelected:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v2, 0xabe

    invoke-static {v10, v1, v2}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    if-nez v6, :cond_8

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/UserCell;->getDialogId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    :goto_0
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;-><init>()V

    iget v1, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway_msg_id:I

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->giveaway_msg_id:I

    iget-wide v1, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    iput-wide v1, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChannelBoostLayout;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->date:I

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->date:I

    iget-boolean v2, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway:Z

    iput-boolean v2, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->via_giveaway:Z

    iget v2, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x1e

    const v1, 0x15180

    div-int/2addr v2, v1

    iput v2, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->months:I

    iget-boolean v1, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->unclaimed:Z

    if-eqz v1, :cond_7

    const-wide/16 v1, -0x1

    iput-wide v1, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    const/4 v1, -0x1

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    goto :goto_1

    :cond_7
    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    :goto_1
    new-instance v13, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;

    iget-object v14, v5, Lorg/telegram/tgnet/tl/TL_stories$Boost;->used_gift_slug:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, v13

    move-object/from16 v2, p5

    move-object v5, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_8
    :goto_2
    instance-of v1, v11, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_9

    invoke-static {v10, v7, v8, v9}, Lorg/telegram/ui/Components/Premium/boosts/BoostPagerBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_9
    instance-of v1, v11, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;

    if-eqz v1, :cond_a

    move-object v1, v11

    check-cast v1, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;->getPrepaidGiveaway()Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    move-result-object v1

    invoke-static {v10, v9, v7, v8, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostPagerBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;)V

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    move/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget v1, v1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_c

    iget v1, v0, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    const/4 v12, 0x1

    :cond_b
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChannelBoostLayout;->loadUsers(Ljava/lang/Boolean;)V

    :cond_c
    return-void
.end method

.method private loadOnlyBoosts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitBoosts:I

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->limit:I

    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastBoostsOffset:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->offset:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private loadOnlyGifts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->limitGifts:I

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->limit:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->gifts:Z

    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->lastGiftsOffset:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->offset:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChannelBoostLayout;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChannelBoostLayout;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private loadStatistic()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChannelBoostLayout;->dialogId:J

    new-instance v3, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private loadUsers(Ljava/lang/Boolean;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->usersLoading:Z

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance p1, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->loadOnlyGifts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelBoostLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChannelBoostLayout;)V

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ChannelBoostLayout;->loadOnlyBoosts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createEmptyView(Landroid/content/Context;)V
    .locals 11

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    sget v2, Lorg/telegram/messenger/R$raw;->statistic_preload:I

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v3, Lorg/telegram/messenger/R$string;->LoadingStats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v3, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget p1, Lorg/telegram/messenger/R$string;->LoadingStatsDescription:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    const/16 v10, 0x14

    const/16 v4, 0x78

    const/16 v5, 0x78

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0xa

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v0, -0x2

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    const/high16 v6, 0x41f00000    # 30.0f

    const/16 v0, 0xf0

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateRows(Z)V
    .locals 16

    move-object/from16 v6, p0

    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_10

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v2, 0x4

    const/4 v8, 0x0

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v2, Lorg/telegram/messenger/R$string;->StatisticOverview:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    invoke-direct {v1, v6, v9, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v8, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/4 v2, 0x2

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x6

    if-lez v0, :cond_2

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingPreparedGiveaways:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    invoke-direct {v1, v6, v4, v3}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    iget-object v3, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object v5, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v9

    if-ne v0, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/16 v11, 0xb

    invoke-direct {v4, v6, v11, v1, v5}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingSelectPaidGiveaway:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v10, v3}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v3, Lorg/telegram/messenger/R$string;->Boosters:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    invoke-direct {v1, v6, v4, v3}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    const/4 v11, 0x7

    const/16 v12, 0x9

    const/16 v1, 0x8

    if-nez v0, :cond_8

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v3, v6, v1, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_3
    const/4 v13, 0x0

    :goto_3
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_5

    iget-object v14, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$Boost;

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    if-ne v13, v0, :cond_4

    iget-boolean v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->hasBoostsNext:Z

    if-nez v0, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    iget v5, v6, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    const/4 v2, 0x5

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILorg/telegram/tgnet/tl/TL_stories$Boost;ZI)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    iget-boolean v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->hasBoostsNext:Z

    if-eqz v0, :cond_6

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v12, v9}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v11, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    goto :goto_5

    :goto_6
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelBoostLayout;->isChannel()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lorg/telegram/messenger/R$string;->BoostersInfoDescription:I

    goto :goto_7

    :cond_7
    sget v2, Lorg/telegram/messenger/R$string;->BoostersInfoGroupDescription:I

    :goto_7
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v10, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v3, v6, v1, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    goto/16 :goto_2

    :cond_9
    const/4 v13, 0x0

    :goto_8
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_b

    iget-object v14, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$Boost;

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    if-ne v13, v0, :cond_a

    iget-boolean v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->hasGiftsNext:Z

    if-nez v0, :cond_a

    const/4 v4, 0x1

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_9
    iget v5, v6, Lorg/telegram/ui/ChannelBoostLayout;->selectedTab:I

    const/4 v2, 0x5

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILorg/telegram/tgnet/tl/TL_stories$Boost;ZI)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_b
    iget-boolean v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->hasGiftsNext:Z

    if-eqz v0, :cond_c

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v12, v9}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    :goto_a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_c
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct {v1, v6, v11, v8}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    goto :goto_a

    :goto_b
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelBoostLayout;->isChannel()Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lorg/telegram/messenger/R$string;->BoostersInfoDescription:I

    goto :goto_c

    :cond_d
    sget v2, Lorg/telegram/messenger/R$string;->BoostersInfoGroupDescription:I

    :goto_c
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v10, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    goto/16 :goto_2

    :goto_d
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    sget v2, Lorg/telegram/messenger/R$string;->LinkForBoosting:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v9, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object v2, v6, Lorg/telegram/ui/ChannelBoostLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boost_url:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v1, v6, v3, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->giveawayGiftsPurchaseAvailable:Z

    if-eqz v0, :cond_10

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelBoostLayout;->isChannel()Z

    move-result v2

    if-eqz v2, :cond_e

    sget v2, Lorg/telegram/messenger/R$string;->BoostingShareThisLink:I

    goto :goto_e

    :cond_e
    sget v2, Lorg/telegram/messenger/R$string;->BoostingShareThisLinkGroup:I

    :goto_e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v10, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    const/16 v2, 0xa

    invoke-direct {v1, v6, v2, v9}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelBoostLayout;->isChannel()Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Lorg/telegram/messenger/R$string;->BoostingGetMoreBoosts2:I

    goto :goto_f

    :cond_f
    sget v2, Lorg/telegram/messenger/R$string;->BoostingGetMoreBoostsGroup:I

    :goto_f
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v10, v2}, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;-><init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v0, v6, Lorg/telegram/ui/ChannelBoostLayout;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    if-eqz p1, :cond_11

    iget-object v1, v6, Lorg/telegram/ui/ChannelBoostLayout;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_10

    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_10
    return-void
.end method
