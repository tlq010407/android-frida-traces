.class public Lorg/telegram/ui/TON/TONIntroActivity;
.super Lorg/telegram/ui/GradientHeaderActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TON/TONIntroActivity$NestedFrameLayout;,
        Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;
    }
.end annotation


# instance fields
.field private final BUTTON_AFFILIATE:I

.field private final BUTTON_EXPAND:I

.field private final BUTTON_GIFT:I

.field private final BUTTON_SUBSCRIPTIONS_EXPAND:I

.field private aboveTitleView:Landroid/widget/FrameLayout;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final allowTopUp:Z

.field private balanceLayout:Landroid/widget/LinearLayout;

.field private emptyLayout:Landroid/view/View;

.field private expanded:Z

.field private fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field private hadTransactions:Z

.field private iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field private starBalanceIcon:Landroid/text/SpannableStringBuilder;

.field private starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;


# direct methods
.method public static synthetic $r8$lambda$b8e3RIZz4s2nNCUZBryAqyBsftM(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TON/TONIntroActivity;->lambda$createView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cULHBpxR3pQkrM8ZVnoGrbwzDaI(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hlkrSL3ZEXaEzTHQaOvsRePo0MA(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/TON/TONIntroActivity;->lambda$createView$0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/GradientHeaderActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->expanded:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->BUTTON_EXPAND:I

    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->BUTTON_GIFT:I

    const/4 v0, -0x3

    iput v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->BUTTON_SUBSCRIPTIONS_EXPAND:I

    const/4 v0, -0x4

    iput v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->BUTTON_AFFILIATE:I

    invoke-static {}, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/GradientHeaderActivity;->setWhiteBackground(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/TON/TONIntroActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->yOffset:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/TON/TONIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method public static allowTopUp()Z
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isStandaloneBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isBetaApp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isHuaweiStoreApp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static synthetic lambda$createView$0(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/ExplainStarsSheet;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/ExplainStarsSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/TON/TONIntroActivity;->onItemClick(Lorg/telegram/ui/Components/UItem;I)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TopUpViaFragmentLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 1

    new-instance v0, Lorg/telegram/ui/TON/TONIntroActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/TON/TONIntroActivity$2;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private updateBalance()V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v1, v1, Lorg/telegram/messenger/AppGlobalConfig;->tonUsdRate:Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;

    invoke-virtual {v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;->get()D

    move-result-wide v1

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v4, 0x3f28f5c3    # 0.66f

    const/16 v5, 0x20

    invoke-static {v0, v4, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    mul-double v3, v3, v1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v0

    double-to-int v0, v3

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2248"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v3

    int-to-long v4, v0

    const-string v0, "USD"

    invoke-virtual {v3, v4, v5, v0}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->YourTonBalance:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public attachedTransactionsLayout()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    if-ltz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method protected createAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 10

    new-instance v9, Lorg/telegram/ui/TON/TONIntroActivity$3;

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    new-instance v7, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v6, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/TON/TONIntroActivity$3;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v9
.end method

.method protected createContentView()Lorg/telegram/ui/GradientHeaderActivity$ContentView;
    .locals 2

    new-instance v0, Lorg/telegram/ui/TON/TONIntroActivity$NestedFrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/TON/TONIntroActivity$NestedFrameLayout;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public createParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x4b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/TON/TONIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->useFillLastLayoutManager:Z

    const/high16 v1, 0x436e0000    # 238.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesViewHeight:I

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;-><init>(Landroid/content/Context;IZJILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    new-instance v1, Lorg/telegram/ui/TON/TONIntroActivity$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity$1;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->emptyLayout:Landroid/view/View;

    iget-boolean v2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-super {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v3, 0x4

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    iput v3, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient2:I

    iput v3, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    iget-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, p0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    iget-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v9, 0x0

    const/high16 v10, 0x41c00000    # 24.0f

    const/16 v4, 0xaa

    const/high16 v5, 0x432a0000    # 170.0f

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lorg/telegram/messenger/R$string;->TONBalanceTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->TONBalanceText:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/TON/TONIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, p1, v3, v4}, Lorg/telegram/ui/GradientHeaderActivity;->configureHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x15e

    invoke-virtual {p1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance p1, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0, v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    new-instance p1, Landroid/text/SpannableStringBuilder;

    const-string v3, "S"

    invoke-direct {p1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v3, Lorg/telegram/messenger/R$drawable;->ton:I

    invoke-direct {p1, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v3, -0xcc6e2c

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;->setOverrideColor(I)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    iget-object v3, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    const/16 v4, 0x21

    invoke-virtual {v3, p1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v8, 0x41c00000    # 24.0f

    const/4 v3, -0x1

    const/high16 v4, 0x42200000    # 40.0f

    const/16 v5, 0x11

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->YourTonBalance:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->starBalanceTitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v2, -0x1

    const/high16 v3, 0x41a00000    # 20.0f

    const/16 v4, 0x11

    const/high16 v5, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp:Z

    if-eqz p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->TopUpViaFragment:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v1, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TON/TONIntroActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TON/TONIntroActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v7, 0x14

    const/4 v8, 0x4

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x11

    const/16 v5, 0x14

    const/4 v6, 0x6

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/TON/TONIntroActivity;->updateBalance()V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->saveScrollPosition()V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollPosition:I

    if-nez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    if-gez p1, :cond_3

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    if-ne p1, p2, :cond_4

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    iget-boolean p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->hadTransactions:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p3

    if-eq p2, p3, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->hadTransactions:Z

    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->saveScrollPosition()V

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollPosition:I

    if-nez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    if-gez p1, :cond_3

    :goto_0
    iput v0, p0, Lorg/telegram/ui/GradientHeaderActivity;->savedScrollOffset:I

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->applyScrolledPosition()V

    goto :goto_2

    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto :goto_2

    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    if-ne p1, p2, :cond_6

    goto :goto_1

    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p1

    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-nez p3, :cond_7

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/TON/TONIntroActivity;->updateBalance()V

    :cond_7
    :goto_2
    return-void
.end method

.method protected drawActionBarShadow()Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/TON/TONIntroActivity;->attachedTransactionsLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/TON/TONIntroActivity;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asFullyCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->TopUpViaFragmentInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->hadTransactions:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp:Z

    if-nez p2, :cond_2

    const/4 p2, 0x0

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFullscreenCustom(Landroid/view/View;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity;->emptyLayout:Landroid/view/View;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    goto :goto_0

    :goto_1
    return-void
.end method

.method protected getHeader(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getNavigationBarColor()I
    .locals 1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getOptions()Ljava/util/ArrayList;

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onItemClick(Lorg/telegram/ui/Components/UItem;I)V
    .locals 3

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->expanded:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->expanded:Z

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto :goto_1

    :cond_0
    const/4 p2, -0x2

    if-ne p1, p2, :cond_1

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->getGiftOptions()Ljava/util/ArrayList;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(IJLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    goto :goto_1

    :cond_1
    const/4 p2, -0x3

    if-ne p1, p2, :cond_2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->loadSubscriptions()V

    goto :goto_0

    :cond_2
    const/4 p2, -0x4

    if-ne p1, p2, :cond_4

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_3
    new-instance p1, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onPause()V

    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method
