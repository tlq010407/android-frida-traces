.class public Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private final dialogId:J

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    iput-wide p1, p0, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;->dialogId:J

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v1, p0, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment$1;-><init>(Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAffiliatePrograms:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;)V

    new-instance v2, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;)V

    const/4 v3, 0x0

    invoke-direct {p1, p0, v1, v2, v3}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object p1, p0, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, -0x1

    const/16 v2, 0x77

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->channelSuggestedBotsUpdate:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;->dialogId:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 3

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Stars/BotStarsController;->getChannelSuggestedBots(J)Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p2, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment$BotCell$Factory;->as(Ljava/lang/Object;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x1d

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public isLightStatusBar()Z
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    :cond_1
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onFragmentCreate()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelSuggestedBotsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelSuggestedBotsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 7

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-eqz p2, :cond_0

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-wide v3, p0, Lorg/telegram/ui/bots/SuggestedAffiliateProgramsFragment;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->showConnectAffiliateAlert(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_payments$starRefProgram;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    :cond_0
    return-void
.end method
