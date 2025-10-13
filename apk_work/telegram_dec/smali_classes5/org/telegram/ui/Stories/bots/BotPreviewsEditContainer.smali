.class public abstract Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;,
        Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;
    }
.end annotation


# static fields
.field private static attachedContainers:Landroid/util/LongSparseArray;

.field private static cachedLists:Landroid/util/LongSparseArray;


# instance fields
.field private final bot_id:J

.field private final currentAccount:I

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final langLists:Ljava/util/ArrayList;

.field private final localLangs:Ljava/util/ArrayList;

.field private final mainList:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private setColumnsCount:I

.field private shownTabs:Ljava/lang/Boolean;

.field private tabsAlpha:F

.field private tabsAnimator:Landroid/animation/ValueAnimator;

.field private final tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

.field private final viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

.field private visibleHeight:I


# direct methods
.method public static synthetic $r8$lambda$D-qBxhg5FKuU67rHBRd2Z8QOmJs(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->lambda$new$0(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NRJl3j2Ltd2OMTnuEfZnr91LSlo(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->lambda$addTranslation$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WiwNshCu0t-xWIeAQxYn8rqNx7k(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->lambda$addTranslation$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ny00lQ-3lqX_sga8-u7GliUNtgA(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->lambda$updateTabs$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->localLangs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->shownTabs:Ljava/lang/Boolean;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->visibleHeight:I

    sget v0, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->setColumnsCount:I

    iput-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-wide p3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->bot_id:J

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    const v1, 0x3d23d70a    # 0.04f

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object p2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->cachedLists:Landroid/util/LongSparseArray;

    if-nez p2, :cond_0

    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    sput-object p2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->cachedLists:Landroid/util/LongSparseArray;

    :cond_0
    sget-object p2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->cachedLists:Landroid/util/LongSparseArray;

    int-to-long v0, v2

    invoke-virtual {p2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/LongSparseArray;

    if-nez p2, :cond_1

    sget-object p2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->cachedLists:Landroid/util/LongSparseArray;

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {p2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object p2, v3

    :cond_1
    invoke-virtual {p2, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    const-string v5, ""

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v3, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;-><init>(IJLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p2, p3, p4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->mainList:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    new-instance p2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$1;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAllowDisallowInterceptTouch(Z)V

    new-instance p4, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$2;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$2;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Landroid/content/Context;)V

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    const/16 p1, 0x77

    const/4 p4, -0x1

    invoke-static {p4, p4, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x9

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/16 p2, 0xc

    iput p2, p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    new-instance p2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setPreTabClick(Lorg/telegram/messenger/Utilities$Callback2Return;)V

    const/16 p2, 0x2a

    const/16 p3, 0x30

    invoke-static {p4, p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->updateLangs(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->mainList:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->setColumnsCount:I

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->setColumnsCount:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->visibleHeight:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAlpha:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/Components/ViewPagerFixed;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->bot_id:J

    return-wide v0
.end method

.method public static edit(IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputMedia;Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V
    .locals 3

    sget-object v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->cachedLists:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget v1, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    if-ne v1, p0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p4, p5}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->edit(Lorg/telegram/tgnet/TLRPC$InputMedia;Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_codes:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_codes:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->notifyUpdate()V

    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->attachedContainers:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_3

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :goto_1
    iget-object v0, p1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget v1, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    if-ne v1, p0, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p4, p5}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->edit(Lorg/telegram/tgnet/TLRPC$InputMedia;Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private synthetic lambda$addTranslation$1(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$addTranslation$2(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->localLangs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->localLangs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->updateLangs(Z)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Ljava/lang/String;)V

    const-wide/16 v1, 0x78

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->addTranslation()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$updateTabs$3(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAlpha:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAlpha:F

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAlpha:F

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static push(IJLjava/lang/String;Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V
    .locals 3

    sget-object v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->cachedLists:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget v1, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    if-ne v1, p0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p4}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->push(Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_codes:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_codes:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->notifyUpdate()V

    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->attachedContainers:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_3

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :goto_1
    iget-object v0, p1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget v1, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    if-ne v1, p0, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p4}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->push(Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateLangs(Z)V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->mainList:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_codes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->localLangs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->bot_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_2

    iget-wide v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iget-wide v6, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->bot_id:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v11, 0x0

    if-ge v2, v5, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-object v2, v11

    :goto_4
    if-nez v2, :cond_6

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget v6, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    iget-wide v7, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->bot_id:J

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;-><init>(IJLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v2, v4, v3, v11}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->load(ZILjava/util/List;)Z

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->ProfileBotLanguageAdd:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_filled_plus:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const v2, 0x3f59999a    # 0.85f

    iput v2, v1, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->addTab(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->finishAddingTabs()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v4

    if-le v0, v4, :cond_8

    const/4 v3, 0x1

    :cond_8
    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->updateTabs(ZZ)V

    return-void
.end method

.method private updateTabs(ZZ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->shownTabs:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->shownTabs:Ljava/lang/Boolean;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p2, :cond_5

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAlpha:F

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/high16 v0, -0x3dd80000    # -42.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_4

    const/high16 v1, 0x42280000    # 42.0f

    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_5
    iget p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAlpha:F

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$3;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_3
    return-void
.end method


# virtual methods
.method public addTranslation()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v2, Lorg/telegram/messenger/R$string;->ProfileBotPreviewLanguageChoose:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public canScroll(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public checkPinchToZoom(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->checkPinchToZoom(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public createStory(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v7, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setStoryMediaPicker()V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    new-instance v1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public deleteLang(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->mainList:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_codes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->localLangs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eqz v2, :cond_1

    iget-object v4, v2, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_5

    new-instance v1, Lorg/telegram/tgnet/tl/TL_bots$deletePreviewMedia;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_bots$deletePreviewMedia;-><init>()V

    iget v4, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->bot_id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/tl/TL_bots$deletePreviewMedia;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-object p1, v1, Lorg/telegram/tgnet/tl/TL_bots$deletePreviewMedia;->lang_code:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_2
    iget-object v4, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_4

    iget-object v4, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_3

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_bots$deletePreviewMedia;->media:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->toInputMedia(Lorg/telegram/tgnet/TLRPC$MessageMedia;)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->updateLangs(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_3

    aget-object p1, p3, v1

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->mainList:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-ne p1, p2, :cond_1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->updateLangs(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    array-length p2, p1

    :goto_0
    if-ge v1, p2, :cond_5

    aget-object p3, p1, v1

    instance-of v0, p3, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v0, :cond_0

    check-cast p3, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {p3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->mainList:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-ne v0, v2, :cond_0

    invoke-static {p3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->notifyDataSetChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->langLists:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_5

    aget-object v2, p1, v0

    instance-of v3, v2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v3

    aget-object v4, p3, v1

    if-ne v3, v4, :cond_2

    invoke-static {v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->notifyDataSetChanged()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_5

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->updateLangs(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_5

    aget-object p3, p1, v1

    instance-of v0, p3, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v0, :cond_4

    instance-of v0, p3, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v0, :cond_4

    check-cast p3, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {p3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->notifyDataSetChanged()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public getBotPreviewsSubtitle()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v2, :cond_7

    check-cast v1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    iget-object v6, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    iget-object v7, v6, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v7, :cond_1

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_1

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_3
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->BotPreviewEmpty:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    if-lez v4, :cond_5

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Images"

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-lez v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Videos"

    invoke-static {v2, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLang()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getPositionAnimated()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    instance-of v0, v1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v0, :cond_1

    check-cast v1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentList()Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$300(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemsCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStartedTrackingX()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isActionModeShowed()Z
.end method

.method protected abstract isSelected(Lorg/telegram/messenger/MessageObject;)Z
.end method

.method public isSelectedAll()Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget-object v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->attachedContainers:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->attachedContainers:Landroid/util/LongSparseArray;

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->attachedContainers:Landroid/util/LongSparseArray;

    iget v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->attachedContainers:Landroid/util/LongSparseArray;

    iget v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    int-to-long v1, v1

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v0, v3

    :cond_1
    iget-wide v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->bot_id:J

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    sget-object v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->attachedContainers:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->attachedContainers:Landroid/util/LongSparseArray;

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->attachedContainers:Landroid/util/LongSparseArray;

    iget v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->bot_id:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public abstract onSelectedTabChanged()V
.end method

.method protected abstract select(Lorg/telegram/messenger/MessageObject;)Z
.end method

.method public selectAll()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->select(Lorg/telegram/messenger/MessageObject;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisibleHeight(I)V
    .locals 4

    iput p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->visibleHeight:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    instance-of v3, v2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->setVisibleHeight(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract unselect(Lorg/telegram/messenger/MessageObject;)Z
.end method

.method public unselectAll()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$400(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->unselect(Lorg/telegram/messenger/MessageObject;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateSelection(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->updateSelection(Z)V

    :cond_0
    return-void
.end method
