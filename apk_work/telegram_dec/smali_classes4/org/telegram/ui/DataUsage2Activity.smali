.class public Lorg/telegram/ui/DataUsage2Activity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DataUsage2Activity$PageAdapter;,
        Lorg/telegram/ui/DataUsage2Activity$CustomCharacterSpan;,
        Lorg/telegram/ui/DataUsage2Activity$Cell;,
        Lorg/telegram/ui/DataUsage2Activity$RoundingCell;,
        Lorg/telegram/ui/DataUsage2Activity$SubtitleCell;,
        Lorg/telegram/ui/DataUsage2Activity$ItemInner;,
        Lorg/telegram/ui/DataUsage2Activity$ListView;
    }
.end annotation


# static fields
.field private static colors:[I

.field private static particles:[I

.field private static stats:[I

.field private static titles:[I


# instance fields
.field private changeStatusBar:Z

.field private pageAdapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

.field private pager:Lorg/telegram/ui/Components/ViewPagerFixed;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_purple:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_cyan:I

    filled-new-array/range {v0 .. v6}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/DataUsage2Activity;->colors:[I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_filled_data_videos:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_filled_data_files:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_filled_data_photos:I

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_filled_data_messages:I

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_filled_data_music:I

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_filled_data_voice:I

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_filled_data_calls:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/DataUsage2Activity;->particles:[I

    sget v1, Lorg/telegram/messenger/R$string;->LocalVideoCache:I

    sget v2, Lorg/telegram/messenger/R$string;->LocalDocumentCache:I

    sget v3, Lorg/telegram/messenger/R$string;->LocalPhotoCache:I

    sget v4, Lorg/telegram/messenger/R$string;->MessagesSettings:I

    sget v5, Lorg/telegram/messenger/R$string;->LocalMusicCache:I

    sget v6, Lorg/telegram/messenger/R$string;->LocalAudioCache:I

    sget v7, Lorg/telegram/messenger/R$string;->CallsDataUsage:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/DataUsage2Activity;->titles:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/DataUsage2Activity;->stats:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x5
        0x4
        0x1
        0x7
        0x3
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/DataUsage2Activity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DataUsage2Activity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DataUsage2Activity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/DataUsage2Activity;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300()[I
    .locals 1

    sget-object v0, Lorg/telegram/ui/DataUsage2Activity;->stats:[I

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400()[I
    .locals 1

    sget-object v0, Lorg/telegram/ui/DataUsage2Activity;->particles:[I

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/DataUsage2Activity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500()[I
    .locals 1

    sget-object v0, Lorg/telegram/ui/DataUsage2Activity;->colors:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    sget-object v0, Lorg/telegram/ui/DataUsage2Activity;->titles:[I

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->NetworkUsage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/DataUsage2Activity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DataUsage2Activity$1;-><init>(Lorg/telegram/ui/DataUsage2Activity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v0, Lorg/telegram/ui/DataUsage2Activity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/DataUsage2Activity$2;-><init>(Lorg/telegram/ui/DataUsage2Activity;Landroid/content/Context;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DataUsage2Activity;->pager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance p1, Lorg/telegram/ui/DataUsage2Activity$PageAdapter;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lorg/telegram/ui/DataUsage2Activity$PageAdapter;-><init>(Lorg/telegram/ui/DataUsage2Activity;Lorg/telegram/ui/DataUsage2Activity$1;)V

    iput-object p1, p0, Lorg/telegram/ui/DataUsage2Activity;->pageAdapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity;->pager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/DataUsage2Activity;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/16 v1, 0x30

    const/16 v2, 0x37

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity;->pager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x77

    const/4 v4, 0x0

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/DataUsage2Activity;->changeStatusBar:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    return v0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity;->pager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/DataUsage2Activity;->changeStatusBar:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/DataUsage2Activity;->changeStatusBar:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    return-void
.end method
