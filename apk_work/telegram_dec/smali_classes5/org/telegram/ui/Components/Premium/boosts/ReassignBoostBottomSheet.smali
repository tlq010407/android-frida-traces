.class public Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;,
        Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$BoostIconView;,
        Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;,
        Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$ArrowView;
    }
.end annotation


# instance fields
.field private final actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final allUsedBoosts:Ljava/util/List;

.field private final buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

.field private final currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final myBoosts:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

.field private final selectedBoosts:Ljava/util/List;

.field private timer:Landroid/os/CountDownTimer;

.field private topCell:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;


# direct methods
.method public static synthetic $r8$lambda$7cpvv40vUA6PdKgxhwXexC8OBUQ(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->lambda$new$4(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LaVYreQxl216RF4nDb6eGL7VfsE(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->lambda$new$3(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PKawwpZhA1iVaKkYrGH58Adn50U(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->lambda$new$0(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xi7OdF22Ep2bfMug90Fs6De0CP4(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->lambda$new$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x5B6ypo47pUsOQlU-ZwLkxE5XE4(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->lambda$new$1(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->allUsedBoosts:Ljava/util/List;

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->myBoosts:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;->my_boosts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v3, v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->allUsedBoosts:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, p2, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, p2, v3}, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon()V

    const p2, -0x678b04

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCounterColor(I)V

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p2, 0x30

    const/16 v2, 0x57

    const/4 v3, -0x1

    invoke-static {v3, p2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x57

    move v4, v6

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, p2, v0, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->updateActionButton(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->allUsedBoosts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->topCell:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->topCell:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;

    return-object p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p4, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Ljava/util/List;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 4

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    iget v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->slot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/List;Ljava/util/HashSet;)V

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)V

    invoke-static {v1, v2, p2, v3, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->applyBoost(JLjava/util/List;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;I)V
    .locals 2

    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    if-eqz p3, :cond_2

    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    move-result-object p3

    iget p3, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->cooldown_until_date:I

    const/4 v0, 0x1

    if-lez p3, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->boostsPerSentGift()I

    move-result p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "BoostingWaitWarningPlural"

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v1, 0x5

    invoke-virtual {p2, p3, p1, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setChecked(ZZ)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->updateActionButton(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->topCell:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->showBoosts(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_2
    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-object v0
.end method

.method private updateActionButton(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingReassignBoosts:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingReassignBoost:I

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 0

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)V

    return-object p1
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->BoostingReassignBoost:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$2;

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;JJ)V

    iput-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->timer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
