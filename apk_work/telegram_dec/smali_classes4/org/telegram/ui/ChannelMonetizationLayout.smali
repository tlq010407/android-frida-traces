.class public Lorg/telegram/ui/ChannelMonetizationLayout;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;,
        Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;,
        Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;,
        Lorg/telegram/ui/ChannelMonetizationLayout$TransactionCell;,
        Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverviewCell;
    }
.end annotation


# static fields
.field public static instance:Lorg/telegram/ui/ChannelMonetizationLayout;

.field private static tonString:Ljava/util/HashMap;


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private final availableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

.field private final balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final balanceInfo:Ljava/lang/CharSequence;

.field private final balanceLayout:Landroid/widget/LinearLayout;

.field private final balanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final balanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

.field private boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private final currentAccount:I

.field private currentBoostLevel:I

.field public final dialogId:J

.field private formatter:Ljava/text/DecimalFormat;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private impressionsChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private initialSwitchOffValue:Z

.field private final lastWithdrawalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

.field private final lifetimeValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

.field private final listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private lock:Landroid/text/SpannableStringBuilder;

.field private nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private proceedsAvailable:Z

.field private final proceedsInfo:Ljava/lang/CharSequence;

.field private final progress:Landroid/widget/FrameLayout;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private revenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private final sendCpmUpdateRunnable:Ljava/lang/Runnable;

.field private setStarsBalanceButtonText:Ljava/lang/Runnable;

.field private shakeDp:I

.field private starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

.field private final starsAdsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private starsBalance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

.field private starsBalanceBlockedUntil:I

.field private final starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final starsBalanceButtonsLayout:Landroid/widget/LinearLayout;

.field private starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private starsBalanceEditTextAll:Z

.field private starsBalanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private starsBalanceEditTextIgnore:Z

.field private starsBalanceEditTextValue:J

.field private final starsBalanceInfo:Ljava/lang/CharSequence;

.field private final starsBalanceLayout:Landroid/widget/LinearLayout;

.field private final starsBalanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final starsBalanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final starsBalanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

.field public final starsRevenueAvailable:Z

.field private starsRevenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private stars_rate:D

.field private switchOffValue:Z

.field private final titleInfo:Ljava/lang/CharSequence;

.field public final tonRevenueAvailable:Z

.field private ton_rate:D

.field private final transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

.field private withdrawalBulletin:Lorg/telegram/ui/Components/Bulletin;


# direct methods
.method public static synthetic $r8$lambda$2btj0FPGA3ShTPsLZBICVtsMX-w(Lorg/telegram/ui/ChannelMonetizationLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$sendCpmUpdate$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$31cP9EzJF6Pt-tA8_lZ3DuSyucU(Lorg/telegram/ui/ChannelMonetizationLayout;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3h0R41EgzpUyjPLEZu373Apu6iQ(Lorg/telegram/ui/ChannelMonetizationLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$4sIQtKdk6DgCzSRltrUH_rPJghw(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$9(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4zA7xBpEInIAOO7pZPOeT63t1tU(Lorg/telegram/ui/ChannelMonetizationLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$initLevel$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$5DLiQBU1najgGdGtTfhwqeEgemg(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$initWithdraw$24(Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7v1m1-BCF4Ga14i4LOYPzi9sMlA(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$onClick$34(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DIMgAs_KP7ffhYqcqfCcduiso-U(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DoVfQgIAnFSAwBWWZtJSRhxcH5Y(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelMonetizationLayout;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$G6QZMv56j50Q-vfP2KIySPDWh0Y(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$17(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JXPyVz9gzPoBu9RLsP2y79ZO3k0(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$sendCpmUpdate$35(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JgEXYTx7C_t0AJJLQuBxh5eBcVY(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$loadStarsStats$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PfS0bggCG6IlGKJdrr-SNhZ1pGw(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$makeLearnSheet$41(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QBmHUADlrVDzOFNYyInLWuWm0Fo(Lorg/telegram/ui/ChannelMonetizationLayout;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$19(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RTXzeSrT5zuaV99o_wJIKAa9QJ4(Lorg/telegram/ui/ChannelMonetizationLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$onNestedScroll$42()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sd3I8e3H0FTiexG0sKtkk7clwe8(Lorg/telegram/ui/ChannelMonetizationLayout;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UEj-XhJSh7_dHN0v4QqA-DXovkM(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$5(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VhqVpBLj3NUo4IOYkx90pORqoCc(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$initLevel$30(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WCMF1tVr093oazHlpOtMOzZFqPc(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$initLevel$33(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WxBjW_y675_sQXuTj2voT1Pp3f0(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$initWithdraw$22(Lorg/telegram/ui/TwoStepVerificationActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YSu04kKvmCIqvvoEtfs2ZRGbfvg(Lorg/telegram/ui/ChannelMonetizationLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZqowlXnuXw5JYhZ23iMzxXI5rOs(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$initLevel$29(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_TFkJH8p0W2AjqAcAaAbl7rz5RU(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelMonetizationLayout;->onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bmJu3p9J9o-KmPmg7PLglwEqOOs(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$10(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dGgCh4jpHFzsZzo6Lft-xtQlKZ4(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$loadStarsStats$25(Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e0yk4ArHSvIq0sDkarWHnOGXRDk(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$16(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e2ewXFKYnCdLm5w2Ifur9az38Ag(Lorg/telegram/ui/ChannelMonetizationLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->sendCpmUpdate()V

    return-void
.end method

.method public static synthetic $r8$lambda$f9vH81DamlxajkeIE27RREpQ9x4(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$initWithdraw$20(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fG8U5rXMYr7PXBH2UFuUhSmdxt8(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZLorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$initWithdraw$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fLOFJ8OvJh76Rrjlk8US3DWly7o(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$initLevel$32(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fTO8ZmwepKY4bhHO0YKDiw6AnQc(Lorg/telegram/ui/ChannelMonetizationLayout;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$11(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h0XEVyO8fPx82icRc4Ebxeu2W7s(Lorg/telegram/ui/ChannelMonetizationLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$iQ9N9cShKi5vL8olUVMYNr0L2lk(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$initWithdraw$21(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$igd0AJJhSHrePX68onWRY0JJjVE(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$13(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ivfCE9A7xR43vL4Cf0s5FiudJZs(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$4(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kJ44SmpeDUePbXPjHfCYZHrOdtM(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$loadStarsStats$26(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzCjuuKQnCZxCQ9hnVMy9L1DKug(Lorg/telegram/ui/ChannelMonetizationLayout;Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$14(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n8ljVM3BLCI23O46Xrfj7OIbyXg(Lorg/telegram/ui/ChannelMonetizationLayout;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$7(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qOruqvRrUWAtOhBGvkgAQLz6-E4(Landroid/content/Context;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$makeLearnSheet$40(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qRBtJWkMLe9ABBzLNc1JqhpAKN4(Lorg/telegram/ui/ChannelMonetizationLayout;IJLandroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$15(IJLandroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qRUXjc0CDEltm3OlaxIip-5aNlU(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$6(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$smyrxdtiauFEyNOambxbNuyufcw(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$new$18(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sxGswA_ExAQMML5gCt5x9GZnycA(Lorg/telegram/ui/ChannelMonetizationLayout;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xI8YObLZYT9X91cxXYfNqF3j_X0(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$sendCpmUpdate$37(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNIa1ejt7zh14YzQI_dBX-h6OzQ(Lorg/telegram/ui/ChannelMonetizationLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->lambda$applyStarsStats$28()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
    .locals 30

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-object/from16 v15, p6

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    iput v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->shakeDp:I

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    const/4 v8, 0x1

    new-array v2, v8, [Lorg/telegram/ui/Components/ColoredImageSpan;

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

    const/4 v7, 0x0

    iput-boolean v7, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextIgnore:Z

    iput-boolean v8, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextAll:Z

    iput-boolean v7, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->switchOffValue:Z

    iput-boolean v7, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->initialSwitchOffValue:Z

    iput-boolean v7, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->proceedsAvailable:Z

    sget v2, Lorg/telegram/messenger/R$string;->MonetizationOverviewAvailable:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TON"

    const-string v4, "XTR"

    invoke-static {v3, v4, v2}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->as(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->availableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    sget v2, Lorg/telegram/messenger/R$string;->MonetizationOverviewLastWithdrawal:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->as(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->lastWithdrawalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    sget v2, Lorg/telegram/messenger/R$string;->MonetizationOverviewTotal:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->as(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->lifetimeValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    new-instance v2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda3;

    invoke-direct {v2, v9}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->sendCpmUpdateRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v2, v9}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    iput-boolean v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->tonRevenueAvailable:Z

    iput-boolean v1, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsRevenueAvailable:Z

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v3, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->formatter:Ljava/text/DecimalFormat;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    iget-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->formatter:Ljava/text/DecimalFormat;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    iget-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v7}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    iput-object v11, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object v15, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput v12, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    iput-wide v13, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->initLevel()V

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v3, v13

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v16

    sget v2, Lorg/telegram/messenger/R$string;->MonetizationInfo:I

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda9;

    invoke-direct {v3, v11, v10, v15}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v4, -0x1

    const/4 v5, 0x3

    invoke-static {v2, v4, v5, v3, v15}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->titleInfo:Ljava/lang/CharSequence;

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->channelRevenueWithdrawalEnabled:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->MonetizationBalanceInfo:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->MonetizationBalanceInfoNotAvailable:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda10;

    invoke-direct {v3, v9}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-static {v2, v4, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceInfo:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget v2, Lorg/telegram/messenger/R$string;->MonetizationProceedsStarsTONInfo:I

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->MonetizationProceedsStarsInfo:I

    goto :goto_1

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->MonetizationProceedsTONInfo:I

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->MonetizationProceedsStarsTONInfoLink:I

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->MonetizationProceedsStarsInfoLink:I

    goto :goto_2

    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->MonetizationProceedsTONInfoLink:I

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda11;

    invoke-direct {v2, v9, v0}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;I)V

    invoke-static {v1, v4, v5, v2, v15}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->proceedsInfo:Ljava/lang/CharSequence;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$string;->MonetizationStarsInfo:I

    goto :goto_3

    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->MonetizationStarsInfoGroup:I

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda12;

    invoke-direct {v1, v9}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceInfo:Ljava/lang/CharSequence;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v17

    new-instance v2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda13;

    invoke-direct {v2, v9}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object v13, v3

    move/from16 v3, p3

    const/4 v14, -0x1

    move-wide/from16 v4, p4

    const/4 v14, 0x2

    move/from16 v6, v17

    const/4 v14, 0x0

    move-object/from16 v7, v18

    const/4 v14, 0x1

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Landroid/content/Context;IJILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$1;

    invoke-direct {v0, v9, v10}, Lorg/telegram/ui/ChannelMonetizationLayout$1;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v6, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v2, v10, v3, v14, v14}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f2d5555

    invoke-direct {v5, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iput-object v5, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

    const/16 v24, 0x16

    const/16 v25, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x26

    const/16 v21, 0x31

    const/16 v22, 0x16

    const/16 v23, 0xf

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v2, v10, v14, v14, v14}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v5, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v2, v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const/high16 v25, 0x41b00000    # 22.0f

    const/16 v26, 0x0

    const/16 v20, -0x1

    const/high16 v21, 0x41880000    # 17.0f

    const/16 v22, 0x31

    const/high16 v23, 0x41b00000    # 22.0f

    const/high16 v24, 0x40800000    # 4.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v2, v10, v15}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/messenger/MessagesController;->channelRevenueWithdrawalEnabled:Z

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    sget v8, Lorg/telegram/messenger/R$string;->MonetizationWithdraw:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-virtual {v2, v8, v13}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v13, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda14;

    invoke-direct {v13, v9, v11}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v26, 0x41900000    # 18.0f

    const/16 v27, 0x0

    const/16 v21, -0x1

    const/high16 v22, 0x42400000    # 48.0f

    const/16 v23, 0x37

    const/high16 v24, 0x41900000    # 18.0f

    const/high16 v25, 0x41500000    # 13.0f

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Lorg/telegram/ui/ChannelMonetizationLayout$2;

    invoke-direct {v13, v9, v10}, Lorg/telegram/ui/ChannelMonetizationLayout$2;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Landroid/content/Context;)V

    iput-object v13, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v6, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v0, v10, v1, v14, v14}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v3, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f2d5555

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iput-object v1, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

    const/16 v26, 0x16

    const/16 v27, 0x0

    const/16 v22, 0x26

    const/16 v23, 0x31

    const/16 v24, 0x16

    const/16 v25, 0xf

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v0, v10, v14, v14, v14}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    invoke-static {v5, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const/high16 v24, 0x41b00000    # 22.0f

    const/16 v25, 0x0

    const/high16 v20, 0x41880000    # 17.0f

    const/16 v21, 0x31

    const/high16 v22, 0x41b00000    # 22.0f

    const/high16 v23, 0x40800000    # 4.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$3;

    invoke-direct {v0, v9, v10}, Lorg/telegram/ui/ChannelMonetizationLayout$3;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v1, Lorg/telegram/messenger/R$string;->BotStarsWithdrawPlaceholder:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setLeftPadding(F)V

    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$4;

    invoke-direct {v0, v9, v10}, Lorg/telegram/ui/ChannelMonetizationLayout$4;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v3, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v14, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-static {v1, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-static {v1, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    goto :goto_4

    :cond_6
    const/4 v1, 0x3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda15;

    invoke-direct {v1, v9}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v1, Lorg/telegram/ui/ChannelMonetizationLayout$5;

    invoke-direct {v1, v9}, Lorg/telegram/ui/ChannelMonetizationLayout$5;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x0

    const/16 v22, 0x13

    const/16 v23, 0xe

    const/16 v24, 0x0

    invoke-static/range {v19 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v2, 0x77

    const/4 v5, -0x1

    invoke-static {v5, v3, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v7, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    iget-object v1, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v7, 0x30

    invoke-static {v5, v3, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v25, 0x12

    const/16 v26, 0x2

    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x1

    const/16 v23, 0x12

    const/16 v24, 0xe

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Lorg/telegram/ui/ChannelMonetizationLayout$6;

    invoke-direct {v2, v9, v10, v15}, Lorg/telegram/ui/ChannelMonetizationLayout$6;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "MonetizationStarsWithdraw"

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda16;

    invoke-direct {v1, v9, v12, v11}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;ILorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v3, v10, v15}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsAdsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    sget v1, Lorg/telegram/messenger/R$string;->MonetizationStarsAds:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    new-instance v1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda17;

    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p0

    move-object/from16 v28, v2

    const/16 v8, 0x77

    move/from16 v2, p3

    move/from16 v18, v6

    move-object v6, v3

    move-wide/from16 v3, p4

    move-object/from16 v29, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;IJLandroid/content/Context;)V

    invoke-virtual {v6, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v7, v1, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v4, v28

    move-object/from16 v3, v29

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Landroid/widget/Space;

    invoke-direct {v2, v10}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v5, v7, v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0, v7, v1, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    const/high16 v26, 0x41900000    # 18.0f

    const/16 v27, 0x0

    const/16 v21, -0x1

    const/high16 v22, 0x42400000    # 48.0f

    const/16 v23, 0x37

    const/high16 v24, 0x41900000    # 18.0f

    const/high16 v25, 0x41500000    # 13.0f

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v13, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda4;

    invoke-direct {v1, v9, v11}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda5;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;I)V

    iput-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->setStarsBalanceButtonText:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda6;

    invoke-direct {v1, v9}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    new-instance v2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda7;

    invoke-direct {v2, v9}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    new-instance v3, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda8;

    invoke-direct {v3, v9}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-direct {v0, v11, v1, v2, v3}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object v0, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v9, Lorg/telegram/ui/ChannelMonetizationLayout;->progress:Landroid/widget/FrameLayout;

    move/from16 v3, v18

    invoke-static {v3, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v10}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    sget v5, Lorg/telegram/messenger/R$raw;->statistic_preload:I

    const/16 v6, 0x78

    invoke-virtual {v3, v5, v6, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v1, Lorg/telegram/messenger/R$string;->LoadingStats:I

    const-string v6, "LoadingStats"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v7, Lorg/telegram/messenger/R$string;->LoadingStatsDescription:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x0

    const/16 v7, 0x14

    const/16 v10, 0x78

    const/16 v11, 0x78

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 p1, v10

    move/from16 p2, v11

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v1

    move/from16 p7, v7

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    const/16 v3, 0xa

    const/4 v7, -0x2

    const/4 v10, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    move/from16 p1, v7

    move/from16 p2, v10

    move/from16 p3, v11

    move/from16 p4, v12

    move/from16 p5, v13

    move/from16 p6, v1

    move/from16 p7, v3

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-static {v4, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x1

    invoke-static {v0, v0, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelMonetizationLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextIgnore:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelMonetizationLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextIgnore:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelMonetizationLayout;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextValue:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ChannelMonetizationLayout;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextValue:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ChannelMonetizationLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextAll:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelMonetizationLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->setStarsBalanceButtonText:Ljava/lang/Runnable;

    return-object p0
.end method

.method private applyStarsStats(Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsRevenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->usd_rate:D

    iput-wide v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->stars_rate:D

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->revenue_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    sget v3, Lorg/telegram/messenger/R$string;->MonetizationGraphStarsRevenue:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsRevenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsRevenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v2, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsRevenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v2, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Charts/data/ChartData$Line;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    iput v3, v2, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsRevenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v2, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-wide v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->stars_rate:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v3

    double-to-float v3, v5

    iput v3, v2, Lorg/telegram/ui/Charts/data/ChartData;->yRate:F

    :cond_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    invoke-virtual {p0, v1, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->setupBalances(ZLorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;)V

    iget-boolean p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->tonRevenueAvailable:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->progress:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x17c

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    return-void
.end method

.method private checkLearnSheet()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->tonRevenueAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->proceedsAvailable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "monetizationadshint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lorg/telegram/ui/ChannelMonetizationLayout;->makeLearnSheet(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6

    iget p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->tonRevenueAvailable:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->titleInfo:Ljava/lang/CharSequence;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCenterShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->impressionsChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-eqz v2, :cond_1

    iget-boolean v5, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v5, :cond_1

    const/4 v5, 0x5

    invoke-static {v5, v0, v2}, Lorg/telegram/ui/Components/UItem;->asChart(IILorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->revenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v2, :cond_2

    invoke-static {v3, v0, v1}, Lorg/telegram/ui/Components/UItem;->asChart(IILorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x2

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsRevenueAvailable:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsRevenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v2, :cond_3

    invoke-static {v3, v0, v1}, Lorg/telegram/ui/Components/UItem;->asChart(IILorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x3

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->proceedsAvailable:Z

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->MonetizationOverview:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asBlackHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->availableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asProceedOverview(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->lastWithdrawalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asProceedOverview(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->lifetimeValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asProceedOverview(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->proceedsInfo:Ljava/lang/CharSequence;

    const/4 v1, -0x4

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->tonRevenueAvailable:Z

    if-eqz p2, :cond_7

    sget p2, Lorg/telegram/messenger/R$string;->MonetizationBalance:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asBlackHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceLayout:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceInfo:Ljava/lang/CharSequence;

    const/4 v1, -0x5

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->channelRestrictSponsoredLevelMin:I

    sget v1, Lorg/telegram/messenger/R$string;->MonetizationSwitchOff:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentBoostLevel:I

    if-ge v2, p2, :cond_5

    move v2, p2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-static {v1, v2}, Lorg/telegram/ui/PeerColorActivity;->withLevelLock(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentBoostLevel:I

    if-lt v3, p2, :cond_6

    iget-boolean p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->switchOffValue:Z

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->MonetizationSwitchOffInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x8

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsRevenueAvailable:Z

    if-eqz p2, :cond_8

    sget p2, Lorg/telegram/messenger/R$string;->MonetizationStarsBalance:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asBlackHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceInfo:Ljava/lang/CharSequence;

    const/4 v1, -0x6

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/MessagesController;->starrefConnectAllowed:Z

    if-eqz p2, :cond_9

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    sget v1, Lorg/telegram/messenger/R$drawable;->filled_earn_stars:I

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramRowTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ChatEditActivity;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ChannelAffiliateProgramRowText:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-static {v5, p2, v1, v2, v3}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell$Factory;->as(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x7

    invoke-static {p2, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual {p2}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->hasTransactions()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFullscreenCustom(Landroid/view/View;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    :goto_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const/16 p2, -0xa

    invoke-static {p2, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    goto :goto_3

    :goto_4
    return-void
.end method

.method private initLevel()V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    iput v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentBoostLevel:I

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    new-instance v3, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda27;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ChannelMonetizationLayout;->loadStarsStats(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->tonRevenueAvailable:Z

    if-eqz v0, :cond_2

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;-><init>()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    iput-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;->dark:Z

    const/4 v0, 0x1

    iput-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;->ton:Z

    iget v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    neg-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->restricted_sponsored:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->switchOffValue:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->initialSwitchOffValue:Z

    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda28;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    :cond_2
    return-void
.end method

.method private initWithdraw(ZLorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;

    if-eqz p1, :cond_3

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->ton:Z

    iget v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    :goto_0
    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    iget p2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->flags:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->flags:I

    iget-wide v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextValue:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->amount:J

    goto :goto_2

    :cond_3
    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->ton:Z

    iget v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    :goto_1
    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    :goto_2
    iget p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0, p3, v0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;Z)V

    invoke-virtual {p2, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$applyStarsStats$28()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->progress:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initLevel$29(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    iput p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentBoostLevel:I

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initLevel$30(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initLevel$31()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->progress:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initLevel$32(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->top_hours_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    sget v1, Lorg/telegram/messenger/R$string;->MonetizationGraphImpressions:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->impressionsChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->revenue_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    if-eqz v0, :cond_0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->usd_rate:D

    const-wide v3, 0x416312d000000000L    # 1.0E7

    div-double/2addr v3, v1

    double-to-float v1, v3

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;->rate:F

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->MonetizationGraphRevenue:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->revenueChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->impressionsChart:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useHourFormat:Z

    :cond_1
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->usd_rate:D

    iput-wide v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->ton_rate:D

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    invoke-virtual {p0, v1, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->setupBalances(ZLorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->progress:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->checkLearnSheet()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$initLevel$33(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda35;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initWithdraw$20(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p2, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$initWithdraw$21(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;Z)V
    .locals 0

    if-nez p1, :cond_0

    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 p1, 0x0

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->setCurrentPasswordInfo([BLorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-static {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-virtual {p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->getNewSrpPassword()Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object p1

    invoke-direct {p0, p4, p1, p3}, Lorg/telegram/ui/ChannelMonetizationLayout;->initWithdraw(ZLorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initWithdraw$22(Lorg/telegram/ui/TwoStepVerificationActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initWithdraw$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZLorg/telegram/tgnet/TLObject;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x1

    if-eqz v1, :cond_11

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v7, "PASSWORD_MISSING"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v8, "PASSWORD_TOO_FRESH_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v8, "SESSION_TOO_FRESH_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "SRP_ID_INVALID"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    iget v3, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda44;

    invoke-direct {v5, v0, v2, v4}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    const/16 v2, 0x8

    invoke-virtual {v3, v1, v5, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

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
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v10, v8, v11}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v8, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

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

    invoke-virtual {v5, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x0

    const/high16 v19, 0x41300000    # 11.0f

    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

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
    const/high16 v18, 0x41100000    # 9.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sget-boolean v20, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v20, :cond_7

    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    move/from16 v6, v20

    :goto_3
    invoke-virtual {v13, v12, v15, v6, v11}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v12, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v12, 0x1

    invoke-virtual {v6, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_8

    const/4 v12, 0x5

    goto :goto_4

    :cond_8
    const/4 v12, 0x3

    :goto_4
    or-int/lit8 v12, v12, 0x30

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setGravity(I)V

    sget v12, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText1:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v10, -0x2

    if-eqz v12, :cond_9

    const/4 v12, -0x1

    invoke-static {v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x5

    invoke-static {v10, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

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

    invoke-virtual {v8, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/high16 v25, 0x41300000    # 11.0f

    invoke-static/range {v22 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_a

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_6

    :cond_a
    const/4 v10, 0x0

    :goto_6
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

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

    invoke-direct {v10, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

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

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x5

    invoke-static {v12, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_d
    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x5

    invoke-static {v12, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v6, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_e

    sget v1, Lorg/telegram/messenger/R$string;->EditAdminTransferSetPassword:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda45;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-virtual {v4, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    :goto_b
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_d

    :cond_e
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x1

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v1, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_f

    goto :goto_c

    :cond_f
    const/4 v13, 0x3

    :goto_c
    or-int/lit8 v3, v13, 0x30

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    sget v3, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText3:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/high16 v10, 0x41300000    # 11.0f

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    goto :goto_b

    :goto_d
    if-eqz v2, :cond_10

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_e

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_e

    :cond_11
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->finishFragment()V

    instance-of v1, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueWithdrawalUrl;

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v5

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueWithdrawalUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueWithdrawalUrl;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v4, :cond_12

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChannelMonetizationLayout;->loadStarsStats(Z)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->reloadTransactions()V

    :goto_e
    return-void
.end method

.method private synthetic lambda$initWithdraw$24(Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda43;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/app/Activity;ZLorg/telegram/tgnet/TLObject;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadStarsStats$25(Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->applyStarsStats(Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;)V

    return-void
.end method

.method private synthetic lambda$loadStarsStats$26(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->applyStarsStats(Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadStarsStats$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda39;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$makeLearnSheet$40(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->BotMonetizationInfoTONLink:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->MonetizationInfoTONLink:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$makeLearnSheet$41(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->makeLearnSheet(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->MonetizationBalanceInfoLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$11(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p3

    iget v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceBlockedUntil:I

    if-le v2, p3, :cond_1

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->timer_3:I

    sget v2, Lorg/telegram/messenger/R$string;->BotStarsWithdrawalToast:I

    iget v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceBlockedUntil:I

    sub-int/2addr v3, p3

    invoke-static {v3}, Lorg/telegram/ui/Stars/BotStarsActivity;->untilString(I)Ljava/lang/String;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->withdrawalBulletin:Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_1
    iget-wide v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextValue:J

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v4, p3, Lorg/telegram/messenger/MessagesController;->starsRevenueWithdrawalMin:J

    cmp-long p3, v2, v4

    if-gez p3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/MessagesController;->starsRevenueWithdrawalMin:J

    long-to-int v2, v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BotStarsWithdrawMinLimit"

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;I)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_2
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    new-instance p3, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda24;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {p1, v1, p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->setDelegate(ILorg/telegram/ui/TwoStepVerificationActivity$TwoStepVerificationActivityDelegate;)V

    iget-object p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance p3, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda25;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->preload(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$12()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsAdsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$new$13(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueAdsAccountUrl;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueAdsAccountUrl;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueAdsAccountUrl;->url:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda40;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$14(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda34;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$15(IJLandroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p5}, Landroid/view/View;->isEnabled()Z

    move-result p5

    if-eqz p5, :cond_1

    iget-object p5, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsAdsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsAdsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueAdsAccountUrl;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueAdsAccountUrl;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p5, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueAdsAccountUrl;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0, p4}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Landroid/content/Context;)V

    invoke-virtual {p1, p5, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$16(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->initWithdraw(ZLorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method private synthetic lambda$new$17(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$18(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x5

    if-ne p3, p2, :cond_0

    new-instance p2, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    new-instance p3, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda21;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const/4 p4, 0x1

    invoke-virtual {p2, p4, p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->setDelegate(ILorg/telegram/ui/TwoStepVerificationActivity$TwoStepVerificationActivityDelegate;)V

    iget-object p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance p3, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda22;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->preload(Ljava/lang/Runnable;)V

    return p4

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$19(I)V
    .locals 8

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-wide v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextValue:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-gtz v7, :cond_1

    iget v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceBlockedUntil:I

    if-le v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceBlockedUntil:I

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->MonetizationStarsWithdrawUntil:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->lock:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "l"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->lock:Landroid/text/SpannableStringBuilder;

    new-instance v0, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v1, Lorg/telegram/messenger/R$drawable;->mini_switch_lock:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->lock:Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x21

    invoke-virtual {v1, v0, v5, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->lock:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceBlockedUntil:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsActivity;->untilString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->withdrawalBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->withdrawalBulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->withdrawalBulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->BotStarsWithdrawalToast:I

    iget v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceBlockedUntil:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsActivity;->untilString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->setStarsBalanceButtonText:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->setStarsBalanceButtonText:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextAll:Z

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$string;->MonetizationStarsWithdrawAll:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-wide v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextValue:J

    long-to-int v1, v0

    const-string v0, "MonetizationStarsWithdraw"

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$new$2(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->MonetizationStarsInfoLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->initWithdraw(ZLorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->setDelegate(ILorg/telegram/ui/TwoStepVerificationActivity$TwoStepVerificationActivityDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->preload(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$new$8(I)V
    .locals 7

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController;->starsRevenueWithdrawalMin:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    iput-boolean v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextAll:Z

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    :goto_0
    iput-wide v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextValue:J

    goto :goto_1

    :cond_0
    iput-boolean v4, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextAll:Z

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/messenger/MessagesController;->starsRevenueWithdrawalMin:J

    goto :goto_0

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextIgnore:Z

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-wide v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iput-boolean v4, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextIgnore:Z

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->setStarsBalanceButtonText:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->setStarsBalanceButtonText:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->initWithdraw(ZLorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method private synthetic lambda$onClick$34(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onNestedScroll$42()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static synthetic lambda$sendCpmUpdate$35(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$sendCpmUpdate$36()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->switchOffValue:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->initialSwitchOffValue:Z

    return-void
.end method

.method private synthetic lambda$sendCpmUpdate$37(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance p1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda32;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p2, :cond_1

    new-instance p2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda33;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadStarsStats(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsRevenueAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;-><init>()V

    iget v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;->dark:Z

    iget v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    return-void
.end method

.method public static makeLearnSheet(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 24

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    new-instance v9, Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v10, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v11, v1, v10, v0, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->large_monetize:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v13, 0x50

    const/16 v14, 0x50

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x10

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v13, 0x11

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-virtual {v0, v12, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v15, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v7, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->BotMonetizationInfoTitle:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->MonetizationInfoTitle:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v20, 0x41000000    # 8.0f

    const/high16 v21, 0x41c80000    # 25.0f

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/high16 v18, 0x41000000    # 8.0f

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    if-eqz v7, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->BotMonetizationInfoFeature1Name:I

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->MonetizationInfoFeature1Name:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->BotMonetizationInfoFeature1Text:I

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->MonetizationInfoFeature1Text:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v10, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x31

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_feature_split:I

    if-eqz v7, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->BotMonetizationInfoFeature2Name:I

    goto :goto_3

    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->MonetizationInfoFeature2Name:I

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->BotMonetizationInfoFeature2Text:I

    goto :goto_4

    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->MonetizationInfoFeature2Text:I

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x31

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_feature_withdrawals:I

    if-eqz v7, :cond_5

    sget v0, Lorg/telegram/messenger/R$string;->BotMonetizationInfoFeature3Name:I

    goto :goto_5

    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->MonetizationInfoFeature3Name:I

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_6

    sget v0, Lorg/telegram/messenger/R$string;->BotMonetizationInfoFeature3Text:I

    goto :goto_6

    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->MonetizationInfoFeature3Text:I

    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelMonetizationLayout$FeatureCell;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x31

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v18, v2, v1

    const/16 v22, 0xc

    const/16 v23, 0x0

    const/16 v19, 0x37

    const/16 v20, 0xc

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v12, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v15, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "\ud83d\udc8e"

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->ton:I

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v3, v4, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;->setRelativeSize(Landroid/graphics/Paint$FontMetricsInt;)V

    iput v4, v3, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    const/4 v10, 0x0

    invoke-virtual {v1, v3, v10, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz v7, :cond_7

    sget v3, Lorg/telegram/messenger/R$string;->BotMonetizationInfoTONTitle:I

    goto :goto_7

    :cond_7
    sget v3, Lorg/telegram/messenger/R$string;->MonetizationInfoTONTitle:I

    :goto_7
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v21, 0x41000000    # 8.0f

    const/16 v22, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/high16 v19, 0x41000000    # 8.0f

    const/high16 v20, 0x41a00000    # 20.0f

    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v6, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v15, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    if-eqz v7, :cond_8

    sget v1, Lorg/telegram/messenger/R$string;->BotMonetizationInfoTONText:I

    goto :goto_8

    :cond_8
    sget v1, Lorg/telegram/messenger/R$string;->MonetizationInfoTONText:I

    :goto_8
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, v6, v7}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Z)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->withLearnMore(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v21, 0x41e00000    # 28.0f

    const/16 v22, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/high16 v19, 0x41e00000    # 28.0f

    const/high16 v20, 0x41100000    # 9.0f

    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v0, v6, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->GotIt:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    new-instance v1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, v9}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v7, 0xa

    const/16 v8, 0xe

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x37

    const/16 v5, 0xa

    const/16 v6, 0x19

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-object v9
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 6

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentBoostLevel:I

    iget p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget p3, p3, Lorg/telegram/messenger/MessagesController;->channelRestrictSponsoredLevelMin:I

    if-ge p1, p3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    iget-object v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v3, 0x1e

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-wide p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    iget-object p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    iget p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object p2

    iget-wide p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    iget-object p5, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p2, p3, p4, p5, v0}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->switchOffValue:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->switchOffValue:Z

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->sendCpmUpdateRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->sendCpmUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 p3, 0x3e8

    invoke-static {p1, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p2, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;

    iget-wide p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    invoke-direct {p2, p3, p4}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;-><init>(J)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public static replaceTON(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Ljava/lang/CharSequence;
    .locals 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/telegram/ui/ChannelMonetizationLayout;->replaceTON(Ljava/lang/CharSequence;Landroid/text/TextPaint;FZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceTON(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFZ)Ljava/lang/CharSequence;
    .locals 4

    .line 0
    sget-object v0, Lorg/telegram/ui/ChannelMonetizationLayout;->tonString:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ChannelMonetizationLayout;->tonString:Ljava/util/HashMap;

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-eqz p4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    mul-int v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, p2, v1

    float-to-int v2, v2

    mul-int v0, v0, v2

    mul-float v1, v1, p3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget-object v1, Lorg/telegram/ui/ChannelMonetizationLayout;->tonString:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableString;

    if-nez v1, :cond_3

    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "T"

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    new-instance p3, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget p4, Lorg/telegram/messenger/R$drawable;->ton:I

    invoke-direct {p3, p4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {p3, p2, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(I)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setRelativeSize(Landroid/graphics/Paint$FontMetricsInt;)V

    const p1, 0x3f666666    # 0.9f

    iput p1, p3, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p1

    invoke-virtual {v1, p3, v3, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget p4, Lorg/telegram/messenger/R$drawable;->mini_ton:I

    invoke-direct {p1, p4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTranslateY(F)V

    const p2, 0x3f733333    # 0.95f

    iput p2, p1, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p2

    invoke-virtual {v1, p1, v3, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    sget-object p1, Lorg/telegram/ui/ChannelMonetizationLayout;->tonString:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p1, "TON"

    invoke-static {p1, p0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceTON(Ljava/lang/CharSequence;Landroid/text/TextPaint;FZ)Ljava/lang/CharSequence;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/telegram/ui/ChannelMonetizationLayout;->replaceTON(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private sendCpmUpdate()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->sendCpmUpdateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->switchOffValue:Z

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->initialSwitchOffValue:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_restrictSponsoredMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_restrictSponsoredMessages;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_restrictSponsoredMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->switchOffValue:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_restrictSponsoredMessages;->restricted:Z

    iget v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private setBalance(JJ)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->formatter:Ljava/text/DecimalFormat;

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

    iput-object v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v3, v2}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->formatter:Ljava/text/DecimalFormat;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->formatter:Ljava/text/DecimalFormat;

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

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

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

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

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

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const v3, 0x3f4ccccd    # 0.8f

    const/16 v4, 0x20

    invoke-static {p1, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const-string v5, "XTR "

    aput-object v5, v4, v1

    aput-object v3, v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "."

    invoke-static {v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceTitleSizeSpan:Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-object v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2248"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->stars_rate:D

    iget-wide v7, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v7

    double-to-long v5, v5

    const-string v7, "USD"

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-wide v3, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextAll:Z

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextIgnore:Z

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-wide v3, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iput-wide v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iput-boolean v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextIgnore:Z

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-wide v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceEditTextValue:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsAdsButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v2, :cond_6

    iget-wide v3, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    :cond_6
    iput p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceBlockedUntil:I

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->setStarsBalanceButtonText:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->setStarsBalanceButtonText:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    sput-object p0, Lorg/telegram/ui/ChannelMonetizationLayout;->instance:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lorg/telegram/ui/ChannelMonetizationLayout;->checkLearnSheet()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/ChannelMonetizationLayout;->instance:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->LIGHT_STATUS_BAR_OVERLAY:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    const/4 p2, 0x1

    if-gez p3, :cond_6

    iget-object p5, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p5, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    :cond_2
    iget-object p5, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    sub-int/2addr p5, p1

    if-ltz p5, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p5

    check-cast p5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p5

    const/4 v1, -0x1

    if-eq p5, v1, :cond_7

    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    if-ne v1, v2, :cond_4

    if-eqz p5, :cond_7

    :cond_4
    if-eqz p5, :cond_5

    move p5, p3

    goto :goto_2

    :cond_5
    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p5

    :goto_2
    aput p5, p4, p2

    invoke-virtual {p1, v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_3

    :cond_6
    if-lez p3, :cond_7

    iget-object p5, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual {p5}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p5

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    if-ltz v0, :cond_7

    if-eqz p5, :cond_7

    invoke-virtual {p5, p2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_7

    aput p3, p4, p2

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    :cond_7
    :goto_3
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    .line 0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 1

    .line 0
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 p4, 0x1

    const/4 p6, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p3, p2

    if-ltz p3, :cond_3

    aput p5, p7, p4

    invoke-virtual {p1, p6, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    iget-object p4, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p4, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 0

    .line 0
    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p2, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public reloadTransactions()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->transactionsLayout:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->reloadTransactions()V

    return-void
.end method

.method public setActionBar(Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-void
.end method

.method public setupBalances(ZLorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v4, 0x0

    const-string v6, "USD"

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    const/4 v9, 0x1

    if-eqz p1, :cond_0

    iget-object v10, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->availableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-boolean v9, v10, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains1:Z

    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->available_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v11, v11, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iput-wide v11, v10, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount:J

    long-to-double v13, v11

    const-wide v15, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v15

    iget-wide v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->ton_rate:D

    mul-double v13, v13, v2

    mul-double v13, v13, v7

    double-to-long v2, v13

    iput-wide v2, v10, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount:J

    invoke-direct {v0, v11, v12, v2, v3}, Lorg/telegram/ui/ChannelMonetizationLayout;->setBalance(JJ)V

    iget-object v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->availableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-object v6, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->lastWithdrawalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-boolean v9, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains1:Z

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->current_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v10, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iput-wide v10, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount:J

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v15

    iget-wide v12, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->ton_rate:D

    mul-double v10, v10, v12

    mul-double v10, v10, v7

    double-to-long v10, v10

    iput-wide v10, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount:J

    iput-object v6, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->lifetimeValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-boolean v9, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains1:Z

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->overall_revenue:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v10, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iput-wide v10, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount:J

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v15

    mul-double v10, v10, v12

    mul-double v10, v10, v7

    double-to-long v7, v10

    iput-wide v7, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount:J

    iput-object v6, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    iput-boolean v9, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->proceedsAvailable:Z

    iget-object v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->balanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->available_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v6, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_4

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->withdrawal_enabled:Z

    if-eqz v1, :cond_4

    goto/16 :goto_1

    :cond_0
    iget-wide v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->stars_rate:D

    const-wide/16 v10, 0x0

    cmpl-double v12, v2, v10

    if-nez v12, :cond_1

    return-void

    :cond_1
    iget-object v10, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->availableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-boolean v9, v10, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains2:Z

    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->available_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iput-object v11, v10, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount2:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v12, v11, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v2

    mul-double v12, v12, v7

    double-to-long v2, v12

    iput-wide v2, v10, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount2:J

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->next_withdrawal_at:I

    invoke-direct {v0, v11, v2}, Lorg/telegram/ui/ChannelMonetizationLayout;->setStarsBalance(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;I)V

    iget-object v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->availableValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-object v6, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->lastWithdrawalValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-boolean v9, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains2:Z

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->current_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iput-object v3, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount2:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v10, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v10, v10

    iget-wide v12, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->stars_rate:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    mul-double v10, v10, v7

    double-to-long v10, v10

    iput-wide v10, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount2:J

    iput-object v6, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->lifetimeValue:Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    iput-boolean v9, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->contains2:Z

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->overall_revenue:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iput-object v3, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->crypto_amount2:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v10, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    mul-double v10, v10, v7

    double-to-long v7, v10

    iput-wide v7, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->amount2:J

    iput-object v6, v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;->currency:Ljava/lang/String;

    iput-boolean v9, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->proceedsAvailable:Z

    iget-object v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->withdrawal_enabled:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->starsBalanceButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v2, :cond_6

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->available_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v1, v6, v4

    if-gtz v1, :cond_5

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_7
    return-void
.end method

.method public updateList()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method
