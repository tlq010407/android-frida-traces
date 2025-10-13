.class public Lorg/telegram/ui/BoostsActivity;
.super Lorg/telegram/ui/GradientHeaderActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/BoostsActivity$ItemInternal;,
        Lorg/telegram/ui/BoostsActivity$HeaderButtonView;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

.field private final boosters:Ljava/util/ArrayList;

.field private boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private boostsTabs:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

.field private canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

.field currentAccount:I

.field private final currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final dialogId:J

.field private final gifts:Ljava/util/ArrayList;

.field private hasBoostsNext:Z

.field private hasGiftsNext:Z

.field private final items:Ljava/util/ArrayList;

.field private lastBoostsOffset:Ljava/lang/String;

.field private lastGiftsOffset:Ljava/lang/String;

.field private limitBoosts:I

.field private limitGifts:I

.field private limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

.field private nextBoostRemaining:I

.field private nextGiftsRemaining:I

.field private progressLayout:Landroid/widget/LinearLayout;

.field private selectedTab:I

.field private totalBoosts:I

.field private totalGifts:I

.field usersLoading:Z


# direct methods
.method public static synthetic $r8$lambda$1GqR-zFvE_EsK6vcE35-EIohDiE(Lorg/telegram/ui/BoostsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/BoostsActivity;->lambda$loadUsers$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$QJViKzQEB04toTRzTkswgiJLfkE(Lorg/telegram/ui/BoostsActivity;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/BoostsActivity;->lambda$loadOnlyGifts$11(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QsylhBcLa5kv2j-ebMnFzOYukB0(Lorg/telegram/ui/BoostsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/BoostsActivity;->lambda$loadUsers$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$RBc6oB6A0494Oclaf7eJ79oyb9Y(Lorg/telegram/ui/BoostsActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/BoostsActivity;->lambda$loadStatistic$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ul0nbs6xmuX4DwkQ17srWMhUu0A(Lorg/telegram/ui/BoostsActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/BoostsActivity;->lambda$createView$12(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VOpzH1C0C93t57xstJQK6-Zvi5g(Lorg/telegram/ui/BoostsActivity;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/BoostsActivity;->lambda$loadOnlyBoosts$8(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YveK_pj_5XbE4NYhSeSateiIjXU(Lorg/telegram/ui/BoostsActivity;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/BoostsActivity;->lambda$loadOnlyGifts$10(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_bV1Ovp_8Jef1ctwVgC9zwVQaVg(Lorg/telegram/ui/BoostsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/BoostsActivity;->lambda$loadUsers$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$_mmSA6T7SB8qHk_ns7v8BAgxDuU(Lorg/telegram/ui/BoostsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/BoostsActivity;->lambda$loadUsers$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$dSMCSO1kfTOTFux0v76OnsIVfXk(Lorg/telegram/ui/BoostsActivity;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/BoostsActivity;->lambda$loadCanApplyBoosts$2(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$egbWcQ_PpcqChbRkszTFuN5T-Mc(Lorg/telegram/ui/BoostsActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/BoostsActivity;->lambda$loadStatistic$0(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nYiFDvUtO1qJs0rfZORNXIw0EqY(Lorg/telegram/ui/BoostsActivity;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/BoostsActivity;->lambda$loadOnlyBoosts$9(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v5FB1CrVqCijxtKTEj5SbIFfKsg(Lorg/telegram/ui/BoostsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/BoostsActivity;->lambda$loadUsers$7()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/GradientHeaderActivity;-><init>()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/BoostsActivity;->boosters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/BoostsActivity;->gifts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/BoostsActivity;->selectedTab:I

    new-instance v0, Lorg/telegram/ui/BoostsActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/BoostsActivity$1;-><init>(Lorg/telegram/ui/BoostsActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/BoostsActivity;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/BoostsActivity;->lastBoostsOffset:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/BoostsActivity;->lastGiftsOffset:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/BoostsActivity;->limitGifts:I

    iput v0, p0, Lorg/telegram/ui/BoostsActivity;->limitBoosts:I

    iput-wide p1, p0, Lorg/telegram/ui/BoostsActivity;->dialogId:J

    iget v0, p0, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/BoostsActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/BoostsActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/BoostsActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/BoostsActivity;->nextGiftsRemaining:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/BoostsActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/BoostsActivity;->totalBoosts:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/BoostsActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/BoostsActivity;->totalGifts:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/Premium/LimitPreviewView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/BoostsActivity;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/BoostsActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/BoostsActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/BoostsActivity;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/BoostsActivity;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/BoostsActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/BoostsActivity;->progressLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/BoostsActivity;->boostsTabs:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/BoostsActivity;Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/BoostsActivity;->boostsTabs:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/BoostsActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/BoostsActivity;->selectedTab:I

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/BoostsActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/BoostsActivity;->selectedTab:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/BoostsActivity;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/BoostsActivity;->isChannel()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/BoostsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/BoostsActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/BoostsActivity;->nextBoostRemaining:I

    return p0
.end method

.method private isChannel()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$createView$12(Landroid/content/Context;Landroid/view/View;I)V
    .locals 11

    instance-of v0, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiftedUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$Boost;

    move-result-object v6

    iget-boolean v2, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iget-wide v7, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->stars:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_0

    iget v3, p0, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/BoostsActivity;->dialogId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showBoostsSheet(Landroid/content/Context;IJLorg/telegram/tgnet/tl/TL_stories$Boost;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    goto/16 :goto_2

    :cond_0
    iget-boolean p1, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->gift:Z

    const-wide/16 v7, -0x1

    if-nez p1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    iget-wide v9, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    cmp-long v5, v9, v3

    if-gez v5, :cond_5

    :cond_2
    iget-boolean v3, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->unclaimed:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iget-wide v3, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    cmp-long v5, v3, v7

    if-nez v5, :cond_4

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {p1, v0, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingRecipientWillBeSelected:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v0, 0xabe

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_2

    :cond_4
    if-nez p1, :cond_7

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/UserCell;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    :cond_5
    :goto_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;-><init>()V

    iget v0, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway_msg_id:I

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->giveaway_msg_id:I

    iget-wide v2, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/BoostsActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->date:I

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->date:I

    iget-boolean v2, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway:Z

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->via_giveaway:Z

    iget v2, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x1e

    const v0, 0x15180

    div-int/2addr v2, v0

    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->months:I

    iget-boolean v0, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->unclaimed:Z

    if-eqz v0, :cond_6

    iput-wide v7, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    const/4 v0, -0x1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    goto :goto_1

    :cond_6
    iput-object v6, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    :goto_1
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;

    iget-object v7, v6, Lorg/telegram/tgnet/tl/TL_stories$Boost;->used_gift_slug:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_7
    :goto_2
    instance-of p1, p2, Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_8

    iget-wide v2, p0, Lorg/telegram/ui/BoostsActivity;->dialogId:J

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p0, v2, v3, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostPagerBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_8
    instance-of p1, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-wide v2, p0, Lorg/telegram/ui/BoostsActivity;->dialogId:J

    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/statistics/GiveawayCell;->getPrepaidGiveaway()Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    move-result-object p2

    invoke-static {p0, p1, v2, v3, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostPagerBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;)V

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 p2, 0x9

    if-ne p1, p2, :cond_b

    iget p1, p0, Lorg/telegram/ui/BoostsActivity;->selectedTab:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/BoostsActivity;->loadUsers(Ljava/lang/Boolean;)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$loadCanApplyBoosts$2(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/BoostsActivity;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    return-void
.end method

.method private synthetic lambda$loadOnlyBoosts$8(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    if-eqz p2, :cond_4

    const/16 p1, 0x14

    iput p1, p0, Lorg/telegram/ui/BoostsActivity;->limitBoosts:I

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;

    iget p1, p0, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/BoostsActivity;->lastBoostsOffset:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity;->boosters:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->boosts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity;->boosters:Ljava/util/ArrayList;

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

    iput p1, p0, Lorg/telegram/ui/BoostsActivity;->nextBoostRemaining:I

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/BoostsActivity;->nextBoostRemaining:I

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/BoostsActivity;->hasBoostsNext:Z

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->count:I

    iput p1, p0, Lorg/telegram/ui/BoostsActivity;->totalBoosts:I

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadOnlyBoosts$9(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/BoostsActivity;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadOnlyGifts$10(Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    if-eqz p2, :cond_4

    const/16 p1, 0x14

    iput p1, p0, Lorg/telegram/ui/BoostsActivity;->limitGifts:I

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;

    iget p1, p0, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/BoostsActivity;->lastGiftsOffset:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity;->gifts:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->boosts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity;->gifts:Ljava/util/ArrayList;

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

    iput p1, p0, Lorg/telegram/ui/BoostsActivity;->nextGiftsRemaining:I

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->next_offset:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/BoostsActivity;->nextGiftsRemaining:I

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/BoostsActivity;->hasGiftsNext:Z

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsList;->count:I

    iput p1, p0, Lorg/telegram/ui/BoostsActivity;->totalGifts:I

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadOnlyGifts$11(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/BoostsActivity;Ljava/util/concurrent/CountDownLatch;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$0(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-direct {p0}, Lorg/telegram/ui/BoostsActivity;->loadCanApplyBoosts()V

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity;->progressLayout:Landroid/widget/LinearLayout;

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

    new-instance v0, Lorg/telegram/ui/BoostsActivity$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/BoostsActivity$2;-><init>(Lorg/telegram/ui/BoostsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/BoostsActivity;->resetHeader(Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/BoostsActivity;->updateRows(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/BoostsActivity;->loadUsers(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/BoostsActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUsers$3()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/BoostsActivity;->usersLoading:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/BoostsActivity;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$loadUsers$4()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/BoostsActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUsers$5()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/BoostsActivity;->loadOnlyBoosts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/BoostsActivity;->loadOnlyGifts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget v0, p0, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/BoostsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadUsers$6()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/BoostsActivity;->usersLoading:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/BoostsActivity;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$loadUsers$7()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/BoostsActivity;->usersLoading:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/BoostsActivity;->updateRows(Z)V

    return-void
.end method

.method private loadCanApplyBoosts()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/BoostsActivity;->dialogId:J

    iget-object v3, p0, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    new-instance v4, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/BoostsActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private loadOnlyBoosts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;-><init>()V

    iget v1, p0, Lorg/telegram/ui/BoostsActivity;->limitBoosts:I

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->limit:I

    iget-object v1, p0, Lorg/telegram/ui/BoostsActivity;->lastBoostsOffset:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->offset:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/BoostsActivity;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, p0, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/BoostsActivity;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private loadOnlyGifts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;-><init>()V

    iget v1, p0, Lorg/telegram/ui/BoostsActivity;->limitGifts:I

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->limit:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->gifts:Z

    iget-object v1, p0, Lorg/telegram/ui/BoostsActivity;->lastGiftsOffset:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->offset:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/BoostsActivity;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_getBoostsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, p0, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/BoostsActivity;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private loadStatistic()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/BoostsActivity;->dialogId:J

    new-instance v3, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/BoostsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/BoostsActivity;->loadUsers(Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method private loadUsers(Ljava/lang/Boolean;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/BoostsActivity;->usersLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/BoostsActivity;->usersLoading:Z

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/BoostsActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance p1, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/BoostsActivity;)V

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/BoostsActivity;->loadOnlyGifts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/BoostsActivity;)V

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/BoostsActivity;->loadOnlyBoosts(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private resetHeader(Z)V
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->filled_limit_boost:I

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;-><init>(Landroid/content/Context;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/BoostsActivity;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->isStatistic:Z

    new-instance v1, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/BoostsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setDarkGradientProvider(Lorg/telegram/ui/Components/Premium/LimitPreviewView$DarkGradientProvider;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/BoostsActivity;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/BoostsActivity;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/BoostsActivity;->isChannel()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lorg/telegram/messenger/R$string;->BoostingBoostForChannels:I

    goto :goto_0

    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->BoostingBoostForGroups:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/telegram/ui/BoostsActivity;->isChannel()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$string;->BoostingBoostForChannelsInfo:I

    goto :goto_1

    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->BoostingBoostForGroupsInfo:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/BoostsActivity$4;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/BoostsActivity$4;-><init>(Lorg/telegram/ui/BoostsActivity;Landroid/content/Context;)V

    new-instance v2, Lorg/telegram/ui/BoostsActivity$5;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/BoostsActivity$5;-><init>(Lorg/telegram/ui/BoostsActivity;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/telegram/ui/GradientHeaderActivity;->configureHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    return-object v0
.end method

.method public createEmptyView(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/BoostsActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Lorg/telegram/ui/BoostsActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/BoostsActivity$3;-><init>(Lorg/telegram/ui/BoostsActivity;Landroid/content/Context;)V

    iget-object p1, p0, Lorg/telegram/ui/BoostsActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/16 v5, 0x78

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/BoostsActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1}, Lorg/telegram/ui/GradientHeaderActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/BoostsActivity;->resetHeader(Z)V

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    iget-object v3, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/BoostsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/BoostsActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/BoostsActivity;->createEmptyView(Landroid/content/Context;)V

    invoke-direct {p0}, Lorg/telegram/ui/BoostsActivity;->loadStatistic()V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/BoostsActivity;->updateRows(Z)V

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    sget p2, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, p2, :cond_8

    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lt v3, v2, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_0
    move-object p3, v4

    :goto_0
    instance-of v3, p3, Lorg/telegram/ui/ChatEditActivity;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v2, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    if-eqz p2, :cond_6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    :cond_3
    instance-of p2, v2, Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    instance-of p2, v4, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_5

    invoke-static {v4, p1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_5
    instance-of p2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_9

    invoke-static {v2, p1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    instance-of p2, v2, Lorg/telegram/ui/ProfileActivity;

    if-nez p2, :cond_7

    instance-of p2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_9

    :cond_7
    invoke-static {v2, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_2

    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatWasBoostedByUser:I

    if-ne p1, p2, :cond_9

    iget-wide p1, p0, Lorg/telegram/ui/BoostsActivity;->dialogId:J

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_9

    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iput-object p1, p0, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iput-object p1, p0, Lorg/telegram/ui/BoostsActivity;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    :cond_9
    :goto_2
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatWasBoostedByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatWasBoostedByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public setBoostsStatus(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-direct {p0}, Lorg/telegram/ui/BoostsActivity;->loadCanApplyBoosts()V

    return-void
.end method

.method public updateRows(Z)V
    .locals 16

    move-object/from16 v6, p0

    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    const/16 v2, 0xe

    const/4 v8, 0x0

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_11

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    sget v2, Lorg/telegram/messenger/R$string;->StatisticOverview:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v1, v6, v3, v2}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct {v1, v6, v8, v8}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    const/4 v2, 0x2

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x6

    const/4 v10, 0x1

    if-lez v0, :cond_2

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingPreparedGiveaways:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    invoke-direct {v1, v6, v4, v3}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v6, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, v6, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    iget-object v3, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget-object v5, v6, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->prepaid_giveaways:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v10

    if-ne v0, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/16 v11, 0xb

    invoke-direct {v4, v6, v11, v1, v5}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingSelectPaidGiveaway:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v9, v3}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    sget v3, Lorg/telegram/messenger/R$string;->Boosters:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    invoke-direct {v1, v6, v4, v3}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v6, Lorg/telegram/ui/BoostsActivity;->selectedTab:I

    const/4 v11, 0x7

    const/16 v12, 0x9

    const/16 v1, 0x8

    if-nez v0, :cond_8

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct {v3, v6, v1, v8}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_3
    const/4 v13, 0x0

    :goto_3
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_5

    iget-object v14, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$Boost;

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->boosters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v10

    if-ne v13, v0, :cond_4

    iget-boolean v0, v6, Lorg/telegram/ui/BoostsActivity;->hasBoostsNext:Z

    if-nez v0, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    iget v5, v6, Lorg/telegram/ui/BoostsActivity;->selectedTab:I

    const/4 v2, 0x5

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILorg/telegram/tgnet/tl/TL_stories$Boost;ZI)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    iget-boolean v0, v6, Lorg/telegram/ui/BoostsActivity;->hasBoostsNext:Z

    if-eqz v0, :cond_6

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct {v1, v6, v12, v10}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct {v1, v6, v11, v8}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    goto :goto_5

    :goto_6
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/BoostsActivity;->isChannel()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lorg/telegram/messenger/R$string;->BoostersInfoDescription:I

    goto :goto_7

    :cond_7
    sget v2, Lorg/telegram/messenger/R$string;->BoostersInfoGroupDescription:I

    :goto_7
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v9, v2}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILjava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct {v3, v6, v1, v8}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    goto/16 :goto_2

    :cond_9
    const/4 v13, 0x0

    :goto_8
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_b

    iget-object v14, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v15, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$Boost;

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v10

    if-ne v13, v0, :cond_a

    iget-boolean v0, v6, Lorg/telegram/ui/BoostsActivity;->hasGiftsNext:Z

    if-nez v0, :cond_a

    const/4 v4, 0x1

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_9
    iget v5, v6, Lorg/telegram/ui/BoostsActivity;->selectedTab:I

    const/4 v2, 0x5

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILorg/telegram/tgnet/tl/TL_stories$Boost;ZI)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_b
    iget-boolean v0, v6, Lorg/telegram/ui/BoostsActivity;->hasGiftsNext:Z

    if-eqz v0, :cond_c

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct {v1, v6, v12, v10}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    :goto_a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_c
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct {v1, v6, v11, v8}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    goto :goto_a

    :goto_b
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/BoostsActivity;->isChannel()Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lorg/telegram/messenger/R$string;->BoostersInfoDescription:I

    goto :goto_c

    :cond_d
    sget v2, Lorg/telegram/messenger/R$string;->BoostersInfoGroupDescription:I

    :goto_c
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v9, v2}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILjava/lang/String;)V

    goto/16 :goto_2

    :goto_d
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    sget v2, Lorg/telegram/messenger/R$string;->LinkForBoosting:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v10, v2}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    iget-object v2, v6, Lorg/telegram/ui/BoostsActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boost_url:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v1, v6, v3, v2}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v6, Lorg/telegram/ui/BoostsActivity;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->giveawayGiftsPurchaseAvailable:Z

    if-eqz v0, :cond_10

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/BoostsActivity;->isChannel()Z

    move-result v2

    if-eqz v2, :cond_e

    sget v2, Lorg/telegram/messenger/R$string;->BoostingShareThisLink:I

    goto :goto_e

    :cond_e
    sget v2, Lorg/telegram/messenger/R$string;->BoostingShareThisLinkGroup:I

    :goto_e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v9, v2}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    const/16 v2, 0xa

    invoke-direct {v1, v6, v2, v10}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/BoostsActivity;->isChannel()Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Lorg/telegram/messenger/R$string;->BoostingGetMoreBoosts2:I

    goto :goto_f

    :cond_f
    sget v2, Lorg/telegram/messenger/R$string;->BoostingGetMoreBoostsGroup:I

    :goto_f
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v9, v2}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILjava/lang/String;)V

    :goto_10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    const-string v2, ""

    invoke-direct {v1, v6, v9, v2}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;ILjava/lang/String;)V

    goto :goto_10

    :goto_11
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/BoostsActivity$ItemInternal;

    const/16 v2, 0xf

    invoke-direct {v1, v6, v2, v8}, Lorg/telegram/ui/BoostsActivity$ItemInternal;-><init>(Lorg/telegram/ui/BoostsActivity;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v0, v6, Lorg/telegram/ui/BoostsActivity;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    if-eqz p1, :cond_12

    iget-object v1, v6, Lorg/telegram/ui/BoostsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_12

    :cond_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_12
    return-void
.end method
