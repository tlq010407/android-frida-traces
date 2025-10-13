.class public Lorg/telegram/ui/Stars/BotStarsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/BotStarsActivity$NestedFrameLayout;
    }
.end annotation


# instance fields
.field private final BALANCE:I

.field private final BUTTON_AFFILIATE:I

.field private adsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final availableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

.field private avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field private balanceBlockedUntil:I

.field private balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private balanceButtonsLayout:Landroid/widget/LinearLayout;

.field private balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private balanceEditTextAll:Z

.field private balanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private balanceEditTextIgnore:Z

.field private balanceEditTextValue:J

.field private balanceInfo:Ljava/lang/CharSequence;

.field private balanceLayout:Landroid/widget/LinearLayout;

.field private balanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private balanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

.field public final bot_id:J

.field private formatter:Ljava/text/DecimalFormat;

.field private impressionsChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private lastStats:Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

.field private lastStatsStatus:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private lock:Landroid/text/SpannableStringBuilder;

.field private proceedsAvailable:Z

.field private proceedsInfo:Ljava/lang/CharSequence;

.field private rate:D

.field private revenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private revenueChartData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field public final self:Z

.field private setBalanceButtonText:Ljava/lang/Runnable;

.field private shakeDp:I

.field private starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

.field private stats_dc:I

.field private titleInfo:Ljava/lang/CharSequence;

.field private final tonAvailableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

.field private tonBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private tonBalanceLayout:Landroid/widget/LinearLayout;

.field private tonBalanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private tonBalanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private tonBalanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

.field private final tonLastWithdrawalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

.field private final tonLifetimeValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

.field private final tonTransactions:Ljava/util/ArrayList;

.field private tonTransactionsEndReached:Z

.field private tonTransactionsLastOffset:Ljava/lang/String;

.field private tonTransactionsLoading:Z

.field private final totalProceedsValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

.field private final totalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

.field private transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

.field public final type:I

.field private final withdrawInfo:Ljava/lang/CharSequence;

.field private withdrawalBulletin:Lorg/telegram/ui/Components/Bulletin;


# direct methods
.method public static synthetic $r8$lambda$-wTCmDRJsQsgTcDFYf6g8xunca0(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/BotStarsActivity;->onItemLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1G3b9R2hf33B2VLFlC1LueYsC3s(Lorg/telegram/ui/Stars/BotStarsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$withdraw$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$3Eeof20mKgG8r55z_bUrLU910f4(Lorg/telegram/ui/Stars/BotStarsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$fillItems$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$3vdPgClO37J70nwLi1n4Gw-XBCo(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/TwoStepVerificationActivity;ZJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$initWithdraw$22(Lorg/telegram/ui/TwoStepVerificationActivity;ZJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5pEbHqOix1Iqu71YV5QU6nv5cNM(Lorg/telegram/ui/Stars/BotStarsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$fillItems$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$6JHptkUibmkoYSWOP57uOYPqcQ4(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/BotStarsActivity;->onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$8gJuHDBIJzvmR7K5MjL0esgwuaw(Lorg/telegram/ui/Stars/BotStarsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$BkzeYDYmxHv9jrxtv3qFvfPiiDw(Lorg/telegram/ui/Stars/BotStarsActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$fillItems$15(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EcDj1aO1w-ThXOvQuajYs60owM0(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$initWithdraw$20(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jw2Sfxb4DaqqjlM0yX8snSuHCys(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$initWithdraw$24(Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MWeId-6jVLGP7x2kfoB1mwlANHI(Lorg/telegram/ui/Stars/BotStarsActivity;JLorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$withdraw$12(JLorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OKBJxCmhCvjyU0Ppk0NCgZuo0EI(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$createView$7(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OSNN0PtDgqS0TZLez78zWChPkCE(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$createView$8(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RPCzFM4Hz9KT0E7je1lfIyiEnXo(Lorg/telegram/ui/Stars/BotStarsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$new$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$WCRHMUKA1TeO22mCIA3HiSVLRww(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$createView$5(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bzNEWnHSC0PKeYANSIst4L0EOxw(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$createView$6(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ciumE_ee5Xk4R11qekIJIhMj0Y4(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$withdraw$13(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dg1rTVXAi7-N7DFjQFzp0C_TV60(Lorg/telegram/ui/Stars/BotStarsActivity;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsActivity;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jwn3xkUpk13Ytj95g2sHJTax-NE(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZJLorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$initWithdraw$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZJLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lx_cV7a-38AUvXjAeB8LRu6Hn30(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$loadTonTransactions$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nuQdFuq_MchVCQKpcS3nM8bj9X8(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$createView$1(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qtEPHWTCJXw8fMQvoGoNJnpwUxg(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vPrf6knNnPEeX0m1XC-_2kdrXik(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wlfgWqSCDbpYjgGXqRuBU_sf9IU(Lorg/telegram/ui/Stars/BotStarsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$yRmg6D2AiwKfq95VQ2TXXIW6Y9o(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$loadTonTransactions$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yTqqbfMEQTxr9ZgLT7NS5b-W9Bo(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$createView$9(Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ybMk0EfyKrC9vqx4ljPyZdgHC7g(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;ZJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$initWithdraw$21(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zo-y72loB1mtK1Ra72BHoeqpV6w(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/BotStarsActivity;->lambda$createView$10(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 5

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    sget v0, Lorg/telegram/messenger/R$string;->BotStarsOverviewAvailableBalance:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XTR"

    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->as(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->availableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    sget v0, Lorg/telegram/messenger/R$string;->BotStarsOverviewTotalBalance:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->as(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->totalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    sget v0, Lorg/telegram/messenger/R$string;->BotStarsOverviewTotalProceeds:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->as(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->totalProceedsValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    sget v0, Lorg/telegram/messenger/R$string;->BotMonetizationOverviewAvailable:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TON"

    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->as(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonAvailableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    sget v0, Lorg/telegram/messenger/R$string;->BotMonetizationOverviewLastWithdrawal:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->as(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonLastWithdrawalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    sget v0, Lorg/telegram/messenger/R$string;->BotMonetizationOverviewTotal:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->as(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonLifetimeValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextIgnore:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextAll:Z

    new-array v2, v1, [Lorg/telegram/ui/Components/ColoredImageSpan;

    iput-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

    const/4 v2, 0x4

    iput v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->shakeDp:I

    iput v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->BALANCE:I

    const/4 v2, 0x2

    iput v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->BUTTON_AFFILIATE:I

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsLoading:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsEndReached:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactions:Ljava/util/ArrayList;

    const-string v2, ""

    iput-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsLastOffset:Ljava/lang/String;

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    iput-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->setBalanceButtonText:Ljava/lang/Runnable;

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->stats_dc:I

    iput p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->type:I

    iput-wide p2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->self:Z

    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Stars/BotStarsController;->preloadStarsStats(J)V

    if-nez v0, :cond_2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v1}, Lorg/telegram/ui/Stars/BotStarsController;->invalidateTransactions(JZ)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Stars/BotStarsController;->preloadTonStats(J)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/MessagesController;->starsRevenueWithdrawalMin:J

    long-to-int p2, p1

    const-string p1, "SelfStarsWithdrawInfo"

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->BotStarsWithdrawInfo:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance p2, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->withdrawInfo:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stars/BotStarsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stars/BotStarsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stars/BotStarsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stars/BotStarsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stars/BotStarsActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stars/BotStarsActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextValue:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Stars/BotStarsActivity;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextValue:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stars/BotStarsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextIgnore:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Stars/BotStarsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextIgnore:Z

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Stars/BotStarsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextAll:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stars/BotStarsActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->setBalanceButtonText:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stars/BotStarsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/BotStarsActivity;->loadTonTransactions()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stars/BotStarsActivity;)Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stars/BotStarsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private checkStats()V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->lastStats:Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-nez v0, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->lastStatsStatus:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->lastStats:Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    :goto_1
    iput-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->lastStatsStatus:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz v0, :cond_4

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->usd_rate:D

    iput-wide v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->rate:D

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->revenue_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    sget v2, Lorg/telegram/messenger/R$string;->BotStarsChartRevenue:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->revenueChartData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->revenueChartData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->revenueChartData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iput-boolean v2, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->showAll:Z

    iget-object v1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/data/ChartData$Line;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_color_yellow:I

    iput v3, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->revenueChartData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-wide v3, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->rate:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v3

    double-to-float v3, v5

    iput v3, v1, Lorg/telegram/ui/Charts/data/ChartData;->yRate:F

    :cond_3
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->available_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->next_withdrawal_at:I

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Stars/BotStarsActivity;->setStarsBalance(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_4
    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->type:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-string v12, "USD"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v3, :cond_4

    iget v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->stats_dc:I

    iget-object v15, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->revenueChartData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    invoke-static {v9, v3, v15}, Lorg/telegram/ui/Components/UItem;->asChart(IILorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8, v7}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v3, Lorg/telegram/messenger/R$string;->BotStarsOverview:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asBlackHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v6, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz v3, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->availableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-boolean v13, v6, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains1:Z

    iput-boolean v14, v6, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains2:Z

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->available_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iput-object v7, v6, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount2:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    const-string v8, "XTR"

    iput-object v8, v6, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_currency2:Ljava/lang/String;

    iput-object v12, v6, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    iget-wide v4, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v4, v4

    iget-wide v14, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->rate:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v14

    mul-double v4, v4, v10

    double-to-long v4, v4

    iput-wide v4, v6, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount2:J

    iget-object v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->totalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-boolean v13, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains1:Z

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains2:Z

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->current_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iput-object v5, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount2:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iput-object v8, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_currency2:Ljava/lang/String;

    iget-wide v5, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v14

    mul-double v5, v5, v10

    double-to-long v5, v5

    iput-wide v5, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount2:J

    iput-object v12, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->totalProceedsValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-boolean v13, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains1:Z

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains2:Z

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->overall_revenue:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iput-object v5, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount2:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iput-object v8, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_currency2:Ljava/lang/String;

    iget-wide v5, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v14

    mul-double v5, v5, v10

    double-to-long v5, v5

    iput-wide v5, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount2:J

    iput-object v12, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->next_withdrawal_at:I

    invoke-direct {v0, v7, v3}, Lorg/telegram/ui/Stars/BotStarsActivity;->setStarsBalance(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;I)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->withdrawal_enabled:Z

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/16 v6, 0x8

    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->availableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asProceedOverview(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->totalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asProceedOverview(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->totalProceedsValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asProceedOverview(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->self:Z

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->SelfStarsOverviewInfo:I

    goto :goto_1

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->BotStarsOverviewInfo:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Lorg/telegram/messenger/R$string;->BotStarsAvailableBalance:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asBlackHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->withdrawInfo:Ljava/lang/CharSequence;

    const/4 v3, -0x3

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->self:Z

    if-nez v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->starrefConnectAllowed:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget v3, Lorg/telegram/messenger/R$drawable;->filled_earn_stars:I

    sget v4, Lorg/telegram/messenger/R$string;->BotAffiliateProgramRowTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/ChatEditActivity;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->BotAffiliateProgramRowText:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v2, v3, v4, v5}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell$Factory;->as(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x4

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    invoke-static {v2, v13}, Lorg/telegram/ui/Components/UItem;->asFullscreenCustom(Landroid/view/View;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    iget-wide v5, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-virtual {v2, v5, v6, v4}, Lorg/telegram/ui/Stars/BotStarsController;->getTONRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->titleInfo:Ljava/lang/CharSequence;

    const/4 v5, 0x3

    if-nez v3, :cond_5

    sget v3, Lorg/telegram/messenger/R$string;->BotMonetizationInfo:I

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v13

    invoke-static {v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v8, v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->titleInfo:Ljava/lang/CharSequence;

    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->titleInfo:Ljava/lang/CharSequence;

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asCenterShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->impressionsChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->top_hours_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->BotMonetizationGraphImpressions:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->impressionsChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useHourFormat:Z

    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->impressionsChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-eqz v3, :cond_7

    iget-boolean v4, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v4, :cond_7

    iget v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->stats_dc:I

    const/4 v6, 0x5

    invoke-static {v6, v4, v3}, Lorg/telegram/ui/Components/UItem;->asChart(IILorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-static {v8, v3}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->revenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->revenue_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    if-eqz v3, :cond_8

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->usd_rate:D

    const-wide v16, 0x416312d000000000L    # 1.0E7

    div-double v6, v16, v6

    double-to-float v4, v6

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;->rate:F

    :cond_8
    sget v4, Lorg/telegram/messenger/R$string;->BotMonetizationGraphRevenue:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->revenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->revenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-eqz v3, :cond_a

    iget-boolean v4, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v4, :cond_a

    iget v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->stats_dc:I

    invoke-static {v9, v4, v3}, Lorg/telegram/ui/Components/UItem;->asChart(IILorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-boolean v3, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->proceedsAvailable:Z

    if-nez v3, :cond_c

    if-eqz v2, :cond_c

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz v3, :cond_c

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->usd_rate:D

    iget-object v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonAvailableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->available_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v13, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iput-wide v13, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount:J

    long-to-double v8, v13

    const-wide v17, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v8, v17

    mul-double v8, v8, v6

    mul-double v8, v8, v10

    double-to-long v8, v8

    iput-wide v8, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount:J

    invoke-direct {v0, v13, v14, v8, v9}, Lorg/telegram/ui/Stars/BotStarsActivity;->setBalance(JJ)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonAvailableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-object v12, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonLastWithdrawalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->current_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v8, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iput-wide v8, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v8, v17

    mul-double v8, v8, v6

    mul-double v8, v8, v10

    double-to-long v8, v8

    iput-wide v8, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount:J

    iput-object v12, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonLifetimeValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    const/4 v8, 0x1

    iput-boolean v8, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains1:Z

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->overall_revenue:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v8, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iput-wide v8, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v8, v17

    mul-double v8, v8, v6

    mul-double v8, v8, v10

    double-to-long v6, v8

    iput-wide v6, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount:J

    iput-object v12, v4, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->proceedsAvailable:Z

    iget-object v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->available_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v6, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_b

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->withdrawal_enabled:Z

    if-eqz v2, :cond_b

    const/4 v6, 0x0

    goto :goto_3

    :cond_b
    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-boolean v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->proceedsAvailable:Z

    if-eqz v2, :cond_e

    sget v2, Lorg/telegram/messenger/R$string;->BotMonetizationOverview:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asBlackHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonAvailableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asProceedOverview(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonLastWithdrawalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asProceedOverview(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonLifetimeValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asProceedOverview(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->proceedsInfo:Ljava/lang/CharSequence;

    if-nez v2, :cond_d

    sget v2, Lorg/telegram/messenger/R$string;->BotMonetizationProceedsTONInfo:I

    sget v4, Lorg/telegram/messenger/R$string;->BotMonetizationProceedsTONInfoLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v6, v0, v4}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;I)V

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, -0x1

    invoke-static {v2, v3, v5, v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->proceedsInfo:Ljava/lang/CharSequence;

    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->proceedsInfo:Ljava/lang/CharSequence;

    const/4 v4, -0x4

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    sget v2, Lorg/telegram/messenger/R$string;->BotMonetizationBalance:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asBlackHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceLayout:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceInfo:Ljava/lang/CharSequence;

    if-nez v2, :cond_10

    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->channelRevenueWithdrawalEnabled:Z

    if-eqz v2, :cond_f

    sget v2, Lorg/telegram/messenger/R$string;->BotMonetizationBalanceInfo:I

    goto :goto_4

    :cond_f
    sget v2, Lorg/telegram/messenger/R$string;->BotMonetizationBalanceInfoNotAvailable:I

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    const/4 v3, -0x1

    invoke-static {v2, v3, v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceInfo:Ljava/lang/CharSequence;

    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceInfo:Ljava/lang/CharSequence;

    const/4 v3, -0x5

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsEndReached:Z

    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    sget v2, Lorg/telegram/messenger/R$string;->BotMonetizationTransactions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asBlackHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;->asTransaction(Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    const/4 v4, 0x1

    iget-boolean v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsEndReached:Z

    if-nez v2, :cond_13

    const/4 v2, 0x7

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    const/4 v2, -0x6

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    goto/16 :goto_2

    :cond_14
    :goto_6
    return-void
.end method

.method private initWithdraw(ZJLorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v3, :cond_4

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;

    if-eqz p1, :cond_2

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->ton:Z

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    :goto_0
    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    iget p4, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->flags:I

    or-int/lit8 p4, p4, 0x2

    iput p4, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->flags:I

    iput-wide p2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->amount:J

    :goto_1
    move-object p4, v0

    goto :goto_3

    :cond_2
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->ton:Z

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    :goto_2
    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    goto :goto_1

    :goto_3
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda24;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZJ)V

    invoke-virtual {v7, p4, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    new-instance v0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->setDelegate(ILorg/telegram/ui/TwoStepVerificationActivity$TwoStepVerificationActivityDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance v0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->preload(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/BotStarsActivity;->withdraw()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/BotStarsActivity;->withdraw()V

    return-void
.end method

.method private synthetic lambda$createView$4()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->adsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueAdsAccountUrl;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueAdsAccountUrl;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueAdsAccountUrl;->url:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda21;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->adsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->adsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueAdsAccountUrl;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueAdsAccountUrl;-><init>()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueAdsAccountUrl;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/BotStarsActivity;->initWithdraw(ZJLorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method private synthetic lambda$createView$9(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$fillItems$14()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ChannelMonetizationLayout;->makeLearnSheet(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$fillItems$15(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$fillItems$16()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotMonetizationBalanceInfoLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initWithdraw$20(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$initWithdraw$21(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;ZJ)V
    .locals 6

    if-nez p1, :cond_0

    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 p1, 0x0

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->setCurrentPasswordInfo([BLorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-static {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-virtual {p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->getNewSrpPassword()Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object v4

    move-object v0, p0

    move v1, p4

    move-wide v2, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/BotStarsActivity;->initWithdraw(ZJLorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initWithdraw$22(Lorg/telegram/ui/TwoStepVerificationActivity;ZJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    new-instance v8, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;ZJ)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initWithdraw$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZJLorg/telegram/tgnet/TLObject;)V
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v1, p3

    move-object/from16 v3, p7

    const/4 v4, 0x1

    if-eqz v0, :cond_11

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "PASSWORD_MISSING"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v7, "PASSWORD_TOO_FRESH_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v7, "SESSION_TOO_FRESH_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "SRP_ID_INVALID"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v7, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v7}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    iget v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda26;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/TwoStepVerificationActivity;ZJ)V

    const/16 v0, 0x8

    invoke-virtual {v8, v7, v9, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_e

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->finishFragment()V

    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto/16 :goto_e

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    :cond_4
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertTitle:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v8, v4, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_5

    const/4 v12, 0x5

    goto :goto_1

    :cond_5
    const/4 v12, 0x3

    :goto_1
    or-int/lit8 v12, v12, 0x30

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setGravity(I)V

    sget v12, Lorg/telegram/messenger/R$string;->WithdrawChannelAlertText:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, -0x1

    const/4 v15, -0x2

    invoke-static {v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v7, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x0

    const/high16 v19, 0x41300000    # 11.0f

    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v7, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v14, Lorg/telegram/messenger/R$drawable;->list_circle:I

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-boolean v16, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v17, 0x41300000    # 11.0f

    if-eqz v16, :cond_6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v12, v16

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    :goto_2
    const/high16 v16, 0x41100000    # 9.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sget-boolean v18, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v18, :cond_7

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    move/from16 v4, v18

    :goto_3
    invoke-virtual {v13, v12, v15, v4, v11}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v12, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_8

    const/4 v12, 0x5

    goto :goto_4

    :cond_8
    const/4 v12, 0x3

    :goto_4
    or-int/lit8 v12, v12, 0x30

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    sget v12, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText1:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v10, -0x2

    if-eqz v12, :cond_9

    const/4 v12, -0x1

    invoke-static {v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x5

    invoke-static {v10, v10, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_9
    const/4 v12, -0x1

    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x2

    const/16 v23, 0x0

    const/high16 v24, 0x41300000    # 11.0f

    invoke-static/range {v21 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_a

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_6

    :cond_a
    const/4 v10, 0x0

    :goto_6
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    :goto_7
    const/4 v13, 0x0

    goto :goto_8

    :cond_b
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    goto :goto_7

    :goto_8
    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v11, 0x1

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_c

    const/4 v11, 0x5

    goto :goto_9

    :cond_c
    const/4 v11, 0x3

    :goto_9
    or-int/lit8 v11, v11, 0x30

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    sget v11, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText2:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_d

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x5

    invoke-static {v12, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_d
    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x5

    invoke-static {v12, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    sget v0, Lorg/telegram/messenger/R$string;->EditAdminTransferSetPassword:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    :goto_b
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_d

    :cond_e
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_f

    goto :goto_c

    :cond_f
    const/4 v13, 0x3

    :goto_c
    or-int/lit8 v1, v13, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget v1, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText3:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x0

    const/high16 v11, 0x41300000    # 11.0f

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    goto :goto_b

    :goto_d
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    if-eqz v2, :cond_10

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_e

    :cond_10
    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_e

    :cond_11
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->finishFragment()V

    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueWithdrawalUrl;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, v6, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextAll:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, v3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueWithdrawalUrl;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueWithdrawalUrl;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :cond_12
    :goto_e
    return-void
.end method

.method private synthetic lambda$initWithdraw$24(Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    new-instance v9, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda25;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZJLorg/telegram/tgnet/TLObject;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadTonTransactions$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->next_offset:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsLastOffset:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactions:Ljava/util/ArrayList;

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->history:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->history:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->next_offset:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsEndReached:Z

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsEndReached:Z

    :cond_3
    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsLoading:Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadTonTransactions$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotStarsWithdrawInfoLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$19()V
    .locals 9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-wide v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextValue:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-gtz v8, :cond_1

    iget v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceBlockedUntil:I

    if-le v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceBlockedUntil:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v2, Lorg/telegram/messenger/R$string;->BotStarsButtonWithdrawShortUntil:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->lock:Landroid/text/SpannableStringBuilder;

    if-nez v1, :cond_2

    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "l"

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->lock:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->mini_switch_lock:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->lock:Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x21

    invoke-virtual {v2, v1, v6, v7, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->lock:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceBlockedUntil:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Lorg/telegram/ui/Stars/BotStarsActivity;->untilString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v2, v1, v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->withdrawalBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->withdrawalBulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->withdrawalBulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BotStarsWithdrawalToast:I

    iget v3, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceBlockedUntil:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Lorg/telegram/ui/Stars/BotStarsActivity;->untilString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->setBalanceButtonText:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->setBalanceButtonText:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextAll:Z

    if-eqz v1, :cond_5

    sget v1, Lorg/telegram/messenger/R$string;->BotStarsButtonWithdrawShortAll:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-wide v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextValue:J

    long-to-int v2, v1

    const-string v1, "BotStarsButtonWithdrawShort"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$withdraw$11()V
    .locals 7

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stars/BotStarsController;->getAvailableBalance(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController;->starsRevenueWithdrawalMin:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    iput-boolean v5, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextAll:Z

    :goto_0
    iput-wide v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextValue:J

    goto :goto_1

    :cond_0
    iput-boolean v4, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextAll:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController;->starsRevenueWithdrawalMin:J

    goto :goto_0

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextIgnore:Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-wide v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextValue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iput-boolean v4, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextIgnore:Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->setBalanceButtonText:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->setBalanceButtonText:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$withdraw$12(JLorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/BotStarsActivity;->initWithdraw(ZJLorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method private synthetic lambda$withdraw$13(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private loadTonTransactions()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsLoading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsEndReached:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsLastOffset:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsLoading:Z

    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;-><init>()V

    iput-boolean v0, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->ton:Z

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactionsLastOffset:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->offset:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    :goto_0
    iput v0, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->limit:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 7

    const-class p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v1, 0x1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    new-instance p1, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;

    iget-wide p2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private onItemLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private setBalance(JJ)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->formatter:Ljava/text/DecimalFormat;

    const/4 v1, 0x6

    const/4 v2, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v3, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v3, v2}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->formatter:Ljava/text/DecimalFormat;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->formatter:Ljava/text/DecimalFormat;

    long-to-double p1, p1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v3

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    cmpl-double v5, p1, v3

    if-lez v5, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x1

    invoke-static {p1, p2, v1, v2}, Lorg/telegram/ui/ChannelMonetizationLayout;->replaceTON(Ljava/lang/CharSequence;Landroid/text/TextPaint;FZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "."

    invoke-static {v0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u2248"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    const-string v1, "USD"

    invoke-virtual {v0, p3, p4, v1}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setStarsBalance(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;I)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->rate:D

    iget-wide v4, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    double-to-long v2, v2

    new-instance v4, Landroid/text/SpannableStringBuilder;

    const v5, 0x3f4ccccd    # 0.8f

    const/16 v6, 0x20

    invoke-static {p1, v5, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const-string v7, "XTR "

    aput-object v7, v6, v1

    aput-object v5, v6, v0

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v5, "."

    invoke-static {v4, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2248"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v6

    const-string v7, "USD"

    invoke-virtual {v6, v2, v3, v7}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextAll:Z

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextIgnore:Z

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-wide v3, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iput-wide v3, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextIgnore:Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-wide v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextValue:J

    cmp-long v4, v2, v5

    if-lez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    :cond_4
    iput p2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceBlockedUntil:I

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->setBalanceButtonText:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->setBalanceButtonText:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_2
    return-void
.end method

.method public static untilString(I)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x15180

    div-int v5, p0, v4

    mul-int v4, v4, v5

    sub-int/2addr p0, v4

    div-int/lit16 v4, p0, 0xe10

    mul-int/lit16 v6, v4, 0xe10

    sub-int/2addr p0, v6

    div-int/lit8 v6, p0, 0x3c

    mul-int/lit8 v7, v6, 0x3c

    sub-int/2addr p0, v7

    if-nez v5, :cond_1

    if-nez v4, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    aput-object p0, v1, v2

    const-string p0, "%02d:%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v3

    aput-object v6, v0, v2

    aput-object p0, v0, v1

    const-string p0, "%02d:%02d:%02d"

    invoke-static {v5, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget p0, Lorg/telegram/messenger/R$string;->PeriodDHM:I

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v5, v8, v3

    const-string v5, "%02d"

    invoke-static {v7, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v4, v9, v3

    invoke-static {v7, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-static {v7, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v8, v0, v3

    aput-object v4, v0, v2

    aput-object v5, v0, v1

    invoke-static {p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private withdraw()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceBlockedUntil:I

    if-le v3, v2, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->timer_3:I

    sget v5, Lorg/telegram/messenger/R$string;->BotStarsWithdrawalToast:I

    iget v6, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceBlockedUntil:I

    sub-int/2addr v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Stars/BotStarsActivity;->untilString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->withdrawalBulletin:Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_1
    iget-wide v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextValue:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/MessagesController;->starsRevenueWithdrawalMin:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/MessagesController;->starsRevenueWithdrawalMin:J

    long-to-int v4, v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "BotStarsWithdrawMinLimit"

    invoke-static {v3, v4, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_2
    iget-wide v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextValue:J

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    new-instance v4, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0, v2, v3, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;JLorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->setDelegate(ILorg/telegram/ui/TwoStepVerificationActivity$TwoStepVerificationActivityDelegate;)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance v1, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->preload(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v10, Lorg/telegram/ui/Stars/BotStarsActivity$NestedFrameLayout;

    invoke-direct {v10, v0, v9}, Lorg/telegram/ui/Stars/BotStarsActivity$NestedFrameLayout;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v1, v9, v11, v12}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    const/4 v13, 0x1

    xor-int/2addr v2, v13

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setRightAvatarPadding(I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v3, :cond_0

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v18, 0x42480000    # 50.0f

    goto :goto_0

    :cond_0
    const/16 v18, 0x0

    :goto_0
    const/high16 v20, 0x42200000    # 40.0f

    const/16 v21, 0x0

    const/4 v15, -0x2

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x33

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2, v1, v13}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->type:I

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v2, Lorg/telegram/messenger/R$string;->BotStatsStars:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v2, Lorg/telegram/messenger/R$string;->BotStatsTON:I

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v2, v12}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsActivity$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$1;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitleColors(II)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-wide v5, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v16

    const/4 v4, 0x0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v14, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;-><init>(Landroid/content/Context;IZJILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    new-instance v1, Lorg/telegram/ui/Stars/BotStarsActivity$2;

    invoke-direct {v1, v0, v9}, Lorg/telegram/ui/Stars/BotStarsActivity$2;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceLayout:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v12, v12, v12, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v1, v9, v12, v13, v13}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f2d5555

    invoke-direct {v1, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v23, 0x16

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x26

    const/16 v20, 0x31

    const/16 v21, 0x16

    const/16 v22, 0xf

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v1, v9, v13, v13, v13}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v14, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v23, 0x41b00000    # 22.0f

    const/16 v24, 0x0

    const/high16 v19, 0x41880000    # 17.0f

    const/high16 v21, 0x41b00000    # 22.0f

    const/high16 v22, 0x40800000    # 4.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v14, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Stars/BotStarsActivity$3;

    invoke-direct {v1, v0, v9}, Lorg/telegram/ui/Stars/BotStarsActivity$3;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v8, Lorg/telegram/messenger/R$string;->BotStarsWithdrawPlaceholder:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/high16 v8, 0x42100000    # 36.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setLeftPadding(F)V

    new-instance v1, Lorg/telegram/ui/Stars/BotStarsActivity$4;

    invoke-direct {v1, v0, v9}, Lorg/telegram/ui/Stars/BotStarsActivity$4;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v12}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v1, v13, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v8, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v8, v11, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x5

    goto :goto_3

    :cond_2
    const/4 v8, 0x3

    :goto_3
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v8, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v8, Lorg/telegram/ui/Stars/BotStarsActivity$5;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$5;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v11, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x0

    const/16 v21, 0x13

    const/16 v22, 0xe

    const/16 v23, 0x0

    invoke-static/range {v18 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v11, -0x1

    const/4 v14, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0x77

    invoke-static {v11, v14, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v8, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v8, 0x30

    invoke-static {v11, v14, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v26, 0x12

    const/16 v27, 0x2

    const/16 v21, -0x1

    const/16 v22, -0x2

    const/16 v23, 0x1

    const/16 v24, 0x12

    const/16 v25, 0xe

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lorg/telegram/ui/Stars/BotStarsActivity$6;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    invoke-direct {v1, v0, v9, v14}, Lorg/telegram/ui/Stars/BotStarsActivity$6;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-boolean v14, v14, Lorg/telegram/messenger/MessagesController;->channelRevenueWithdrawalEnabled:Z

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v14, Lorg/telegram/messenger/R$string;->BotStarsButtonWithdrawShortAll:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14, v12}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v14, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-virtual {v1, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    invoke-direct {v1, v9, v14}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->adsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->adsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v14, Lorg/telegram/messenger/R$string;->MonetizationStarsAds:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14, v12}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->adsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v14, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v14, v0, v9}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v14, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static {v11, v8, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->self:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButtonsLayout:Landroid/widget/LinearLayout;

    new-instance v12, Landroid/widget/Space;

    invoke-direct {v12, v9}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-static {v4, v8, v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->adsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static {v11, v8, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->balanceButtonsLayout:Landroid/widget/LinearLayout;

    const/high16 v27, 0x41900000    # 18.0f

    const/16 v28, 0x0

    const/16 v22, -0x1

    const/high16 v23, 0x42400000    # 48.0f

    const/16 v24, 0x37

    const/high16 v25, 0x41900000    # 18.0f

    const/high16 v26, 0x41500000    # 13.0f

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Stars/BotStarsActivity$7;

    invoke-direct {v1, v0, v9}, Lorg/telegram/ui/Stars/BotStarsActivity$7;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v15, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceLayout:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v1, v9, v5, v13, v13}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f2d5555

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v27, 0x16

    const/16 v28, 0x0

    const/16 v23, 0x26

    const/16 v24, 0x31

    const/16 v25, 0x16

    const/16 v26, 0xf

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v1, v9, v13, v13, v13}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v17, 0x41b00000    # 22.0f

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, 0x41880000    # 17.0f

    const/16 v14, 0x31

    const/high16 v15, 0x41b00000    # 22.0f

    const/high16 v16, 0x40800000    # 4.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v9, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->channelRevenueWithdrawalEnabled:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v2, Lorg/telegram/messenger/R$string;->MonetizationWithdraw:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->tonBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x42400000    # 48.0f

    const/16 v5, 0x37

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x41500000    # 13.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    new-instance v3, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    new-instance v4, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v11, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/BotStarsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsActivity$8;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stars/BotStarsActivity$8;-><init>(Lorg/telegram/ui/Stars/BotStarsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iput-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v10
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->bot_id:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/BotStarsActivity;->checkStats()V

    :cond_0
    return-void
.end method

.method public isLightStatusBar()Z
    .locals 2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoadingVisible()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

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

.method public onFragmentCreate()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/BotStarsActivity;->checkStats()V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method
