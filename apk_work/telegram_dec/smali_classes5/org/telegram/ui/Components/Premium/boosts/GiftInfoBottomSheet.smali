.class public Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# instance fields
.field private adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;

.field private final giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

.field private final isUnused:Z

.field private slug:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Y7glcthtbPhwh6Sao6m83JvUN7w(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->lambda$show$2(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YUYLW_38Gm6o4KeCIm9DBgReAdw(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->lambda$show$1(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s63Gb3e5i8HfeBrRuje953UHWAA(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->lambda$show$0(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    iget p2, p4, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->used_date:I

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->isUnused:Z

    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->slug:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p2, p1, p4, p5, p3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Ljava/lang/String;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->slug:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method public static handleIntent(Landroid/content/Intent;Lorg/telegram/messenger/browser/Browser$Progress;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "tg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    const-string v1, "tg:giftcode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tg://giftcode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    if-eqz p0, :cond_4

    :goto_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return v2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "telegram.me"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "t.me"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "telegram.dog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/giftcode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$show$0(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static synthetic lambda$show$1(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    iget-object p0, p4, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez p0, :cond_6

    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;-><init>()V

    iget v0, p4, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->months:I

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->months:I

    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v0, :cond_4

    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    :cond_4
    iget p4, p4, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->used_date:I

    if-eqz p4, :cond_5

    const/4 p4, 0x1

    goto :goto_1

    :cond_5
    const/4 p4, 0x0

    :goto_1
    invoke-static {p2, p0, p1, p4}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->show(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Lorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_2

    :cond_6
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_2
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    :cond_7
    return-void
.end method

.method private static synthetic lambda$show$2(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    :cond_1
    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 2

    .line 0
    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/browser/Browser$Progress;->onCancel(Ljava/lang/Runnable;)Lorg/telegram/messenger/browser/Browser$Progress;

    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/browser/Browser$Progress;)V

    invoke-static {p1, v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->checkGiftCode(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 1

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$2;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;

    return-object p1
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->isUnused:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->BoostingGiftLink:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->BoostingUsedGiftLink:I

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method
