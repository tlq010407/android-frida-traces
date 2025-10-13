.class public Lorg/telegram/ui/Stars/StarsIntroActivity;
.super Lorg/telegram/ui/GradientHeaderActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$NestedFrameLayout;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;,
        Lorg/telegram/ui/Stars/StarsIntroActivity$ExpandView;
    }
.end annotation


# static fields
.field private static floatFormat:Ljava/text/DecimalFormat;


# instance fields
.field private final BUTTON_AFFILIATE:I

.field private final BUTTON_EXPAND:I

.field private final BUTTON_GIFT:I

.field private final BUTTON_SUBSCRIPTIONS_EXPAND:I

.field private aboveTitleView:Landroid/widget/FrameLayout;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private balanceLayout:Landroid/widget/LinearLayout;

.field private buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private emptyLayout:Landroid/view/View;

.field private expanded:Z

.field private fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field private giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private hadTransactions:Z

.field private iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field private oneButtonsLayout:Landroid/widget/FrameLayout;

.field private starBalanceIcon:Landroid/text/SpannableStringBuilder;

.field private starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private starBalanceTitleView:Landroid/widget/TextView;

.field private topupButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

.field private twoButtons:Z

.field private twoButtonsLayout:Landroid/widget/LinearLayout;

.field private withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;


# direct methods
.method public static synthetic $r8$lambda$-1gNBS7abUvYE_OQhlnhhwW5IvY([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$45([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-RJA1IKlB-ZwzeHkVpaZ9gg-EB4([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$48([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$0nn0Z8n1ThaLHuZ7S1hDAreDjCQ([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$47([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$1W7CtXtcUz2fAWNaJvsTOrY3G18([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showMediaPriceSheet$88([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1aYKVcSuG2LSE-LCq-k6YGGdDaI(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$61(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$1cCgxU9h4FtsqvLhyRUNTZSvpkI(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$createView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3DQ58Z8O7JOUMF1JDyPIPT8HuYQ(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openStarsChannelInviteSheet$15(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6hn_iMyOY89r07iYM9YWg76FlrU([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$35([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$6w0lhPHcMh3iU9irDI7ZKSUKmPI(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showMediaPriceSheet$84(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$707VQncvlJFDhOIr6j36GAjMikU(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$71(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7PL3orQMT_NP3BhLDG9qZ7s3bhs(Landroid/content/Context;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$28(Landroid/content/Context;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ZsrleWoA0mADFYg-9aN5w130ds([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stories$Boost;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showBoostsSheet$79([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stories$Boost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7evpbfi-zB9nLlpHaSFnru9oFCc(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showBoostsSheet$80(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8D3iPuiORhRvfU_OginKQroc44M([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$33([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$9YDO1oz7yQK_v-0iAyFCkVRyg_g(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$65(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A5ctNUNnrw_YIggmHmNtCCZ1cIU(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$57(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AUr_XEXXRDvLDtJmB1NEsAk5IkI(IJLjava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$73(IJLjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BNFwSzyKJq9kxZpPOkbeIzIYmIk(ILorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$77(ILorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EvGo8SDEtLNryPvpxOeqUYlVN2U([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$34([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$FSHDo5_r5iae7kqpOxT0Ppad5TU(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showMediaPriceSheet$85(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FveBt0RZL2ASfWZl8Ig9iYOYCbY(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openStarsChannelInviteSheet$20(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FwyKMEFKgz9Jb0qoH1k8JITszdc(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$36(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GWmXBEhjST4C-WptQkYWLJZ3f5g(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openConfirmPurchaseSheet$10(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GlYDQcjXmO82yQsqRy-yzMeiMAI(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showMediaPriceSheet$87(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HXjjolat772q5MuwE4enDUo5kC4(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$68(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IAdWasl_sdnozILJrsejnC5Fdl8(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$60(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$InZQNYbkB3t_uOamUwU4Vynuiyk([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$59([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JNtk_W-66tT8hy6JhNUu67YLzwQ([Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$37([Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JRR6PFwiWj5tVezMdJ3uZhRENKU(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openStarsChannelInviteSheet$18(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JVZSe-KSq3m3Qorlo_SNypgkDKI(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showMediaPriceSheet$92(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ja567Cvx7WHjLN1IAXxJPTIHjLI(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showGiftResellPriceSheet$99(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K5aoLQnR0i1OzFEjMT7d81gKMDA([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$50([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$K77avHa9Rwc1kDpemc6ka6K4cnM(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openConfirmPurchaseSheet$12(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KN1YxrmfDGIOr12ZmoytgqnXE7s(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$75(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LCz-RMi_lFXq4FrWRWbTOp_8E18(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$createView$3(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M7B49l2nlUHQOQhvgmJgBU1XyQU([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showMediaPriceSheet$93([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OLgeKZGLGJ1-_KH2V72D3vBLhwE(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$62(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PSexWNx2HdW3KaXu6-hbjpsViEA([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$52([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PUcLBJ7bNknzy-rHru5RbTP3EEQ([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showMediaPriceSheet$86([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q1S9j1Mq-eefuyJam-TixcTBvy8([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$43([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$SDojXNL6NZi5jKFjw7CMOuFdtZ4(ILandroid/content/Context;JJ[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$46(ILandroid/content/Context;JJ[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SUA6c15Kw-8xJ4cZLSHlpKgM6Qg([ZLorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showMediaPriceSheet$89([ZLorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ThZ4R5C0vWGOF-U21pqsmKYvE8s(Lorg/telegram/ui/Stars/StarsIntroActivity;Lorg/telegram/ui/Components/UItem;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$onItemClick$8(Lorg/telegram/ui/Components/UItem;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Thc2AVcSQy69lVnyvZDeWdPLg14(ZILjava/lang/String;Lorg/telegram/messenger/ImageReceiver;[Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$setGiftImage$21(ZILjava/lang/String;Lorg/telegram/messenger/ImageReceiver;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UJrgeQXB_AWuKvlIikjNUVwiQbk([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showBoostsSheet$78([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$UO74Br-RyqnkXHQghyUxL915ZfY(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$66(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UzfR1UOWLsFIJODcy492GqK_z10(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VNiD53id_Djtqbi-CiksxVpI83A([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$53([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VYZ7uBL8T99HFQ2w02arHUc7BQY(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X2ffkRJUqdnOyR9hqJyh77UOzbQ([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$56([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XnFteaku7WSmKmw_rh7NFFxndVE(ZJLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$26(ZJLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZFsjmEYMGQapdNOWj8n8E9haNww(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openStarsChannelInviteSheet$16(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZKe9APX_9Xq7x6wSOliwNmWFNso(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$69(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZW2Ilg6RObAVl6CF3AILhSh6aKw(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$67(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zjj5RR39A0Q5A4AHxafZvbDbBnQ(Lorg/telegram/ui/Stars/StarsIntroActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$updateButtonsLayouts$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_IUToQOzpzvbwAo5dB-KoOwLDHs([Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$38([Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_RrERp9YKwmIu91kpuMRrq1VWIk([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$42([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$a7iJeVvju5MfqbnnbMYsxZ_jlJQ(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$29(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$arICYNa0jsYeQfgRMGJO7B296U8([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$41([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$b0UxsJo25jQ-FM_dH0c73VIjurw(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showGiftResellPriceSheet$94(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$bGnYDScq0MjNpc_G0Ilw5ZT_LYE(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openConfirmPurchaseSheet$11(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bMLbQQVepN-FPt99ZGB3iaHKeVg(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;ZZLorg/telegram/tgnet/TLObject;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$70(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;ZZLorg/telegram/tgnet/TLObject;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$csuf9Cdy-sUOI37q7ZUM6flepIQ([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$44([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$cz5DSYzRb1UatAEe3u2cfgIgR5E([Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showGiftResellPriceSheet$97([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dOF6XHIvBEeQdhrfg6UA1A8Ghgg([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSoldOutGiftSheet$101([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$elZFBY5WO423yaw049FUDZ0hzNI(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$32(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fQMhWWgBnGNgmShghlmbb77XPAg(Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$30(Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hhuFHR-pdra3sZmF_Um9WowVLXE(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$55(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hw3mdsdosYyLbqBI6hHKuO2Traw(Lorg/telegram/ui/Stars/StarsIntroActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$updateButtonsLayouts$7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$iKVE-DbR38vPdkNPf7eee0PWjIM(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showMediaPriceSheet$91(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ijwwvAb1HAyZEdCFM3nAGJid1YU([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$39([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$ipPdXX7asKv2b8XGKXux2lIeVQg([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$54([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ipbcP8b7a053N5xSEE2QTd_sqIg(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[ZLandroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$76(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[ZLandroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdcOnrH0PgPxKN-XVE-1hEWcFE0(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$63(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$kkYRwSdQXxOuQRsPGWqHBsjR2RY(Ljava/lang/Long;IJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$72(Ljava/lang/Long;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lEbaw3a8lVtKvfm4T5oVNcYwAKs(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showBoostsSheet$82(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lFPNdaiqWJQZyV1okrpfshDzca4(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showMediaPriceSheet$83(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$laqoFMs_J2ETEpV2XpJ2h5yFzZ8(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;[Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$64(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;[Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m8Sw0wRH5Hjoap-9UKdsDZE9GtM(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$25(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mUY6Qqoo42-WFKMz3Ac4XQviAI8(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openConfirmPurchaseSheet$9(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nY1AL9mt5yQeTz_aj8eKbpZ5x8s([Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$49([Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nohqGoANQgEG_-B5qbGgr_3XXaM(Landroid/widget/TextView;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$addAvailabilityRow$102(Landroid/widget/TextView;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p9IR0r-rjiVLGiCJ5k3b28eFKgY([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$51([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pBzdGBBY_y32w_Jga0jCRtfseVQ([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;J[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showGiftResellPriceSheet$98([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;J[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pmt-gvPnW9n5jyt5ctnNglR1NMI(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$createView$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q4XZIkv5mvgTld4qAYI-ie9JkdM(Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$setGiftImage$23(Ljava/lang/Runnable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhOeP7EsRhmdX9PP5CuHsRsu2TU(Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$setGiftImage$22(Ljava/lang/Runnable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r2ax3eGjnQIfvNKgo5GgMeWW8gw(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$createView$2(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rd_WkXo5OxVb4b8asFRv5Gzt91Y([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showGiftResellPriceSheet$100([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s2eX6YGfcp0ExqVgIcYOP7jBPFw(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openStarsChannelInviteSheet$19(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sFFyu7tglm5UYol-9TNRZbCKkGk(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$setGiftImage$24(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-EYXk9CvtRo81sov3k2iYxLQ08(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openStarsChannelInviteSheet$17(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uEOd_eZkdzAo6jf3OfosQ3Ms8to([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showMediaPriceSheet$90([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vI5E-LfqjVrUX8WDeFMsdSv4lNM(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$58(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_vgNFcTwMDDVzGV44BUag7-P1M(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLObject;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showSubscriptionSheet$74(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLObject;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vpIjOReXh8zTLIY2rdvSW-lDLes(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openConfirmPurchaseSheet$13(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w4FKhkRtIxAaT0-VafeHKHV_kH8(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$openConfirmPurchaseSheet$14(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w5wFW-Peug5L7TC-VPFmCvlF4BI([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showBoostsSheet$81([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w96XuTpIA0L1jZJIVPybRQvXf5I([Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showGiftResellPriceSheet$95([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wy1kOU9z83jNUQez4ncO4QHItIU(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$40(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ypYcT9B8YdOmQlO4X3-KW9loqHk([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;J[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showGiftResellPriceSheet$96([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;J[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z6029uLjkfSiuWjHimoYCU9kjbI([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$31([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$zwULHCHSR6XhVIWPoGD8TwBS-pY(JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->lambda$showTransactionSheet$27(JI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/GradientHeaderActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->expanded:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->BUTTON_EXPAND:I

    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->BUTTON_GIFT:I

    const/4 v0, -0x3

    iput v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->BUTTON_SUBSCRIPTIONS_EXPAND:I

    const/4 v0, -0x4

    iput v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->BUTTON_AFFILIATE:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/GradientHeaderActivity;->setWhiteBackground(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stars/StarsIntroActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->yOffset:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stars/StarsIntroActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtons:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stars/StarsIntroActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method public static addAvailabilityRow(Lorg/telegram/ui/Components/TableView;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    sget v0, Lorg/telegram/messenger/R$string;->Gift2Availability:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/TableView$TableRowContent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "x "

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Components/LoadingSpan;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v3, p0, v4, v1, p3}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p3

    const v4, 0x3e570a3d    # 0.21f

    invoke-static {p3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    const v5, 0x3da3d70a    # 0.08f

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v3, p3, v4}, Lorg/telegram/ui/Components/LoadingSpan;->setColors(II)V

    const/16 p3, 0x21

    invoke-virtual {v2, v3, v1, v0, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object p3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-boolean p3, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    if-nez p3, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    iget-wide p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda47;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Stars/StarsController;->getStarGift(JLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    goto :goto_2

    :cond_0
    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz p1, :cond_2

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    if-gtz p1, :cond_1

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    const-string p2, "Gift2QuantityIssuedNone"

    :goto_0
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_issued:I

    const-string v0, "Gift2QuantityIssued1"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    const-string p3, "Gift2QuantityIssued2"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    if-gtz p1, :cond_3

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    const-string p2, "Gift2Availability2ValueNone"

    goto :goto_0

    :cond_3
    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    int-to-long p2, p2

    const/16 v2, 0x2c

    invoke-static {p2, p3, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    const-string p2, "Gift2Availability4Value"

    invoke-static {p2, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private static appendStatus(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, " "

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$15;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$15;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/4 p2, 0x0

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public static formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;
    .locals 2

    .line 0
    const v0, 0x3f46e979    # 0.777f

    const/16 v1, 0x2c

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    if-nez v2, :cond_0

    new-instance v2, Ljava/text/DecimalFormat;

    new-instance v3, Ljava/text/DecimalFormatSymbols;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v4, "0.################"

    invoke-direct {v2, v4, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v2, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    const/16 v4, 0x21

    const-string v5, "."

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    if-eqz v3, :cond_1

    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    iget-wide v8, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v3, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    :cond_1
    iget-wide v8, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    if-gez v3, :cond_2

    cmp-long v14, v8, v12

    if-lez v14, :cond_2

    const/4 v14, -0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    cmp-long v14, v8, v12

    if-gez v14, :cond_3

    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    :goto_0
    int-to-long v14, v14

    add-long/2addr v14, v8

    cmp-long v16, v8, v12

    if-nez v16, :cond_4

    if-gez v3, :cond_5

    goto :goto_1

    :cond_4
    cmp-long v16, v8, v12

    if-gez v16, :cond_5

    :goto_1
    const/4 v10, 0x1

    :cond_5
    const-string v8, ""

    const-string v9, "-"

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v10, :cond_6

    move-object v8, v9

    :cond_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    move/from16 v10, p2

    invoke-static {v8, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    int-to-double v8, v0

    if-gez v0, :cond_7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v6

    :cond_7
    div-double/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_a

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/2addr v5, v11

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v5, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v10, :cond_9

    move-object v8, v9

    :cond_9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const/16 v1, 0x20

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_a
    :goto_2
    return-object v2
.end method

.method public static formatStarsAmountShort(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;
    .locals 2

    .line 0
    const v0, 0x3f46e979    # 0.777f

    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmountShort(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static formatStarsAmountShort(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;
    .locals 18

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    if-nez v3, :cond_0

    new-instance v3, Ljava/text/DecimalFormat;

    new-instance v4, Ljava/text/DecimalFormatSymbols;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v5, "0.################"

    invoke-direct {v3, v5, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    instance-of v4, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    const/16 v5, 0x21

    const-string v6, "."

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    if-eqz v4, :cond_1

    sget-object v2, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    iget-wide v9, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v2, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v3, v2, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    :cond_1
    iget-wide v9, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget v4, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    const-wide/16 v13, 0x0

    if-gez v4, :cond_2

    cmp-long v15, v9, v13

    if-lez v15, :cond_2

    const/4 v15, -0x1

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    cmp-long v15, v9, v13

    if-gez v15, :cond_3

    const/4 v15, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    :goto_0
    int-to-long v11, v15

    add-long/2addr v11, v9

    cmp-long v15, v9, v13

    if-nez v15, :cond_4

    if-gez v4, :cond_5

    goto :goto_1

    :cond_4
    cmp-long v4, v9, v13

    if-gez v4, :cond_5

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v13, 0x3e8

    const-string v15, ""

    const-string v16, "-"

    cmp-long v17, v9, v13

    if-gtz v17, :cond_8

    iget v9, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_6

    move-object/from16 v15, v16

    :cond_6
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v10, v11, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v2, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    int-to-double v9, v0

    if-gez v0, :cond_7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v7

    :cond_7
    div-double/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_c

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v7, 0x3

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/2addr v4, v6

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_8
    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v5, v0, v13

    new-instance v0, Ljava/lang/StringBuilder;

    if-gtz v5, :cond_a

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_9

    move-object/from16 v15, v16

    :cond_9
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    :cond_a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_b

    move-object/from16 v15, v16

    :cond_b
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_c
    :goto_4
    return-object v3
.end method

.method public static formatStarsAmountString(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;
    .locals 2

    .line 0
    const v0, 0x3f46e979    # 0.777f

    const/16 v1, 0x2c

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmountString(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static formatStarsAmountString(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    const/16 v4, 0x21

    const-string v5, "."

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    if-eqz v3, :cond_0

    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    iget-wide v8, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v3, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_0
    iget-wide v8, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    if-gez v3, :cond_1

    cmp-long v14, v8, v12

    if-lez v14, :cond_1

    const/4 v14, -0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    cmp-long v14, v8, v12

    if-gez v14, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_0
    int-to-long v14, v14

    add-long/2addr v14, v8

    cmp-long v16, v8, v12

    if-nez v16, :cond_3

    if-gez v3, :cond_4

    goto :goto_1

    :cond_3
    cmp-long v16, v8, v12

    if-gez v16, :cond_4

    :goto_1
    const/4 v10, 0x1

    :cond_4
    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v10, :cond_5

    const-string v8, "-"

    goto :goto_2

    :cond_5
    const-string v8, ""

    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    move/from16 v10, p2

    invoke-static {v8, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    if-nez v3, :cond_6

    new-instance v3, Ljava/text/DecimalFormat;

    new-instance v8, Ljava/text/DecimalFormatSymbols;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v9, "0.################"

    invoke-direct {v3, v9, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    :cond_6
    sget-object v3, Lorg/telegram/ui/Stars/StarsIntroActivity;->floatFormat:Ljava/text/DecimalFormat;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    int-to-double v8, v0

    if-gez v0, :cond_7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v6

    :cond_7
    div-double/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/2addr v5, v11

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v5, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    const-string v0, " "

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StarsNano:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_9
    long-to-int v0, v8

    const-string v1, "Stars"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_a
    :goto_3
    return-object v2
.end method

.method public static getGiftStarsEmoji(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-string p0, "2\u20e3"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x9c4

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const-string p0, "3\u20e3"

    return-object p0

    :cond_1
    const-string p0, "4\u20e3"

    return-object p0
.end method

.method public static getPremiumGiftMonthsEmoji(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const-string p0, "1\u20e3"

    return-object p0

    :cond_0
    const-string p0, "5\u20e3"

    return-object p0

    :cond_1
    const-string p0, "4\u20e3"

    return-object p0

    :cond_2
    const-string p0, "3\u20e3"

    return-object p0

    :cond_3
    const-string p0, "2\u20e3"

    return-object p0
.end method

.method public static getTonGiftEmoji(J)Ljava/lang/String;
    .locals 3

    const-wide v0, 0x2540be400L

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-string p0, "2\u20e3"

    return-object p0

    :cond_0
    const-wide v0, 0xba43b7400L

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    const-string p0, "1\u20e3"

    return-object p0

    :cond_1
    const-string p0, "3\u20e3"

    return-object p0
.end method

.method public static getTransactionTitle(IZLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift:Z

    if-eqz v0, :cond_0

    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionPremiumGift:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    if-eqz v0, :cond_1

    iget p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_messages:I

    const-string p1, "StarsTransactionMessageFee"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip:Z

    if-eqz v0, :cond_2

    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionFloodskip:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget p0, Lorg/telegram/messenger/R$string;->StarMediaPurchase:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    sget p0, Lorg/telegram/messenger/R$string;->StarTransactionCommission:I

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    invoke-static {p1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_b

    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz p0, :cond_8

    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v0, p0, v2

    if-lez v0, :cond_7

    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    if-eqz p0, :cond_6

    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionRefundedUpgrade:I

    goto :goto_1

    :cond_6
    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionRefundedSent:I

    goto :goto_1

    :cond_7
    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionRefundedConverted:I

    :goto_1
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v0, p0, v2

    if-lez v0, :cond_9

    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionConverted:I

    goto :goto_2

    :cond_9
    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    if-eqz p0, :cond_a

    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionUpgraded:I

    goto :goto_2

    :cond_a
    sget p0, Lorg/telegram/messenger/R$string;->Gift2TransactionSent:I

    :goto_2
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    iget-boolean v1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    if-eqz v1, :cond_e

    iget v1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription_period:I

    const v4, 0x278d00

    if-ne v1, v4, :cond_c

    sget p0, Lorg/telegram/messenger/R$string;->StarSubscriptionPurchase:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/16 v4, 0x12c

    if-ne v1, v4, :cond_d

    const-string p0, "5-minute subscription fee"

    return-object p0

    :cond_d
    const/16 v4, 0x3c

    if-ne v1, v4, :cond_e

    const-string p0, "Minute subscription fee"

    return-object p0

    :cond_e
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_f

    sget p0, Lorg/telegram/messenger/R$string;->StarsGiveawayPrizeReceived:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v0, :cond_12

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_11

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget p0, Lorg/telegram/messenger/R$string;->StarsGiftSent:I

    goto :goto_3

    :cond_10
    sget p0, Lorg/telegram/messenger/R$string;->StarsGiftReceived:I

    :goto_3
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    sget p0, Lorg/telegram/messenger/R$string;->StarsGiftReceived:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    if-eqz p0, :cond_13

    return-object p0

    :cond_13
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_16

    cmp-long p0, v0, v2

    if-ltz p0, :cond_14

    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, ""

    goto :goto_4

    :cond_15
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_4
    return-object p0

    :cond_16
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerFragment;

    if-eqz v0, :cond_1a

    if-nez p1, :cond_19

    iget-boolean p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz p0, :cond_17

    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {p0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_5

    :cond_17
    iget-object p0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {p0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->negative()Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_5

    :cond_18
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionFragment:I

    goto :goto_6

    :cond_19
    :goto_5
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionWithdrawFragment:I

    :goto_6
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    instance-of p1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPremiumBot;

    if-eqz p1, :cond_1b

    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionBot:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    instance-of p0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAds;

    if-eqz p0, :cond_1c

    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionAds:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionUnsupported:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$addAvailabilityRow$102(Landroid/widget/TextView;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_2

    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    if-gtz v0, :cond_1

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    const-string v0, "Gift2QuantityIssuedNone"

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_issued:I

    const-string v2, "Gift2QuantityIssued1"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    const-string v1, "Gift2QuantityIssued2"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    if-gtz v0, :cond_3

    const-string v0, "Gift2Availability2ValueNone"

    goto :goto_0

    :cond_3
    int-to-long v1, p1

    const/16 p1, 0x2c

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Gift2Availability4Value"

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
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

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->onItemClick(Lorg/telegram/ui/Components/UItem;I)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_0
    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lorg/telegram/ui/Stars/BotStarsActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lorg/telegram/ui/Stars/BotStarsActivity;-><init>(IJ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->getGiftOptions()Ljava/util/ArrayList;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(IJLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return-void
.end method

.method private synthetic lambda$onItemClick$8(Lorg/telegram/ui/Components/UItem;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->stars_topup:I

    sget v2, Lorg/telegram/messenger/R$string;->StarsAcquired:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    long-to-int p1, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "StarsAcquiredInfo"

    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p3, v2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$openConfirmPurchaseSheet$10(Landroid/content/Context;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->StarsTOSLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$openConfirmPurchaseSheet$11(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private static synthetic lambda$openConfirmPurchaseSheet$12(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda75;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda75;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    const-wide/16 p0, 0x190

    invoke-static {p2, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$openConfirmPurchaseSheet$13(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda59;

    invoke-direct {p3, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-interface {p0, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$openConfirmPurchaseSheet$14(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$openConfirmPurchaseSheet$9(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V
    .locals 3

    iget-wide p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    :cond_1
    return-void
.end method

.method private static synthetic lambda$openStarsChannelInviteSheet$15(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V
    .locals 3

    iget-wide p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    :cond_1
    return-void
.end method

.method private static synthetic lambda$openStarsChannelInviteSheet$16(Landroid/content/Context;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->StarsSubscribeInfoLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$openStarsChannelInviteSheet$17(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private static synthetic lambda$openStarsChannelInviteSheet$18(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda101;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda101;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    const-wide/16 p0, 0x190

    invoke-static {p2, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$openStarsChannelInviteSheet$19(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda100;

    invoke-direct {p3, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda100;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-interface {p0, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$openStarsChannelInviteSheet$20(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setGiftImage$21(ZILjava/lang/String;Lorg/telegram/messenger/ImageReceiver;[Z)V
    .locals 12

    move-object v0, p3

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    if-eqz p0, :cond_0

    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->premiumTonStickerPack:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkTonGiftStickers()V

    return-void

    :cond_0
    iget-object v1, v1, Lorg/telegram/messenger/UserConfig;->premiumGiftsStickerPack:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkPremiumGiftStickers()V

    return-void

    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    :cond_2
    move-object v9, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v9, :cond_6

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    move-object v7, p2

    invoke-static {v6, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    :goto_1
    iget-object v7, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    iget-object v7, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_3

    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v8, v10, v4

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move-object v7, v3

    :goto_2
    if-nez v7, :cond_7

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_3

    :cond_6
    move-object v7, v3

    :cond_7
    :goto_3
    const/4 v4, 0x1

    if-eqz v7, :cond_8

    invoke-virtual {p3, v4}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$7;

    move-object/from16 v5, p4

    invoke-direct {v1, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$7;-><init>([Z)V

    invoke-virtual {p3, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v7, v1, v5}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v5

    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v6, 0xa0

    invoke-static {v1, v6, v4, v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    invoke-virtual {p3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    invoke-static {v1, v7}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-wide v6, v7, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-string v8, "tgs"

    const/4 v10, 0x1

    const-string v4, "160_160_nr"

    const-string v11, "160_160"

    move-object v0, p3

    move-object v1, v2

    move-object v2, v4

    move-object v4, v11

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_5

    :cond_8
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez v9, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZ)V

    :goto_5
    return-void
.end method

.method private static synthetic lambda$setGiftImage$22(Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$setGiftImage$23(Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$setGiftImage$24(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$showBoostsSheet$78([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$showBoostsSheet$79([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stories$Boost;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    iget p3, p3, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway_msg_id:I

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$showBoostsSheet$80(Landroid/content/Context;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->StarsTOSLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showBoostsSheet$81([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showBoostsSheet$82(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    return-void
.end method

.method private static synthetic lambda$showGiftResellPriceSheet$100([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    new-instance p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda95;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda95;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showGiftResellPriceSheet$94(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(ZZ)V

    return-void
.end method

.method private static synthetic lambda$showGiftResellPriceSheet$95([Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showGiftResellPriceSheet$96([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;J[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p8, 0x5

    const/4 p10, 0x0

    if-ne p9, p8, :cond_3

    aget-boolean p8, p0, p10

    const/4 p9, 0x1

    if-eqz p8, :cond_0

    return p9

    :cond_0
    if-eqz p1, :cond_2

    aput-boolean p9, p0, p10

    invoke-virtual {p2, p9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    :try_start_0
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, p2, p5

    if-gez p0, :cond_1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    return p9

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda96;

    invoke-direct {p2, p7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda96;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    return p9

    :cond_2
    aget-object p0, p7, p10

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_0
    return p9

    :cond_3
    return p10
.end method

.method private static synthetic lambda$showGiftResellPriceSheet$97([Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showGiftResellPriceSheet$98([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;J[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 1

    const/4 p8, 0x0

    aget-boolean v0, p0, p8

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    aput-boolean v0, p0, p8

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    :try_start_0
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, p2, p5

    if-gez p0, :cond_1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda93;

    invoke-direct {p2, p7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda93;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    return-void

    :cond_2
    aget-object p0, p7, p8

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showGiftResellPriceSheet$99(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$showMediaPriceSheet$83(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(ZZ)V

    return-void
.end method

.method private static synthetic lambda$showMediaPriceSheet$84(Landroid/content/Context;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->PaidContentInfoLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showMediaPriceSheet$85(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showMediaPriceSheet$86([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p5, 0x5

    const/4 p7, 0x0

    if-ne p6, p5, :cond_2

    aget-boolean p5, p0, p7

    const/4 p6, 0x1

    if-eqz p5, :cond_0

    return p6

    :cond_0
    if-eqz p1, :cond_1

    aput-boolean p6, p0, p7

    invoke-virtual {p2, p6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda85;

    invoke-direct {p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda85;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    aget-object p0, p4, p7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_0
    return p6

    :cond_2
    return p7
.end method

.method private static synthetic lambda$showMediaPriceSheet$87(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showMediaPriceSheet$88([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 2

    const/4 p5, 0x0

    aget-boolean v0, p0, p5

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, p0, p5

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda78;

    invoke-direct {p3, p2, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda78;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-interface {p1, p0, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    aget-object p0, p4, p5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$showMediaPriceSheet$89([ZLorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 1

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    aget-object p0, p2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showMediaPriceSheet$90([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 2

    const/4 p5, 0x0

    aget-boolean v0, p0, p5

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    aput-boolean v0, p0, p5

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda74;

    invoke-direct {p5, p0, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda74;-><init>([ZLorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-interface {p1, p2, p5}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    aget-object p0, p4, p5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showMediaPriceSheet$91(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$showMediaPriceSheet$92(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$showMediaPriceSheet$93([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    new-instance p0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda86;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda86;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showSoldOutGiftSheet$101([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$60(Landroid/content/Context;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->StarsTOSLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$61(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    aget-object p0, p1, v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {p3, p4}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$62(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda98;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda98;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJ)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$63(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_fulfillStarsSubscription;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_fulfillStarsSubscription;-><init>()V

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_fulfillStarsSubscription;->subscription_id:Ljava/lang/String;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_fulfillStarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda94;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda94;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IJ)V

    invoke-virtual {p1, v0, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$64(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;[Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Landroid/view/View;)V
    .locals 10

    move-object v7, p2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda79;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda79;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget-object v2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    iget-object v0, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    if-eqz p8, :cond_1

    const/16 v0, 0x8

    const/16 v5, 0x8

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gez v2, :cond_2

    const/4 v0, 0x2

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    const/4 v5, 0x7

    :goto_0
    move-object v0, v8

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v6, p9

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    goto :goto_1

    :cond_3
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$65(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    aget-object p0, p1, v1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->StarsSubscriptionRenewedToast:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->StarsSubscriptionRenewedToastText:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p4, v0, v1

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$66(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda87;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda87;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$67(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    :cond_0
    const/4 p6, 0x1

    invoke-virtual {p0, p6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance p6, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;

    invoke-direct {p6}, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p6, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->canceled:Ljava/lang/Boolean;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object v0, p6, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    iput-object p1, p6, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->subscription_id:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda76;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda76;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-virtual {p1, p6, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$68(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    aget-object p0, p1, v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p3, :cond_1

    iget-object p1, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelledBizToastText:I

    iget p2, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long p2, p2

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p2, p4, v2

    aput-object p3, p4, v1

    invoke-static {p1, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    iget-object p1, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    sget p1, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelledBotToastText:I

    iget p2, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long p2, p2

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p2, p4, v2

    aput-object p3, p4, v1

    invoke-static {p1, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelledToastText:I

    iget p2, p4, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long p2, p2

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-static {p6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelledToast:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_3
    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$69(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda97;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda97;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$70(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;ZZLorg/telegram/tgnet/TLObject;Landroid/view/View;)V
    .locals 11

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    move-object v2, p0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->canceled:Ljava/lang/Boolean;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object v6, p1

    iget-object v1, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_changeStarsSubscription;->subscription_id:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda84;

    move-object v1, v10

    move-object v3, p3

    move v4, p2

    move v5, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda84;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;IZLorg/telegram/tgnet/tl/TL_stars$StarsSubscription;ZLorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v9, v0, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$71(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$raw;->stars_send:I

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionCompleted:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    long-to-int p2, p1

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 p3, 0x1

    new-array v2, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "StarsSubscriptionCompletedText"

    invoke-static {p1, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$72(Ljava/lang/Long;IJ)V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda103;

    invoke-direct {p1, v1, p2, p3, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda103;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$Chat;)V

    const-wide/16 p2, 0xfa

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$73(IJLjava/lang/String;Ljava/lang/Long;)V
    .locals 4

    const-string v0, "paid"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda102;

    invoke-direct {p3, p4, p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda102;-><init>(Ljava/lang/Long;IJ)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$74(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLObject;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    instance-of p0, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz p0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-nez p0, :cond_0

    aget-object p0, p2, v0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_0
    iget-wide p2, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    invoke-static {p4}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;->hash:Ljava/lang/String;

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda99;

    invoke-direct {v0, p4, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda99;-><init>(IJ)V

    invoke-virtual {p0, p5, p1, v0}, Lorg/telegram/ui/Stars/StarsController;->subscribeTo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback2;)V

    goto :goto_0

    :cond_1
    aget-object p0, p2, v0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->LinkHashExpired:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$75(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance p6, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda92;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda92;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLObject;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$76(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[ZLandroid/content/Context;Landroid/view/View;)V
    .locals 11

    move-object v1, p0

    move-object v0, p1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;-><init>()V

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;->hash:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda77;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda77;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;)V

    invoke-virtual {v7, v6, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->invoice_slug:Ljava/lang/String;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    aput-boolean v2, p5, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://t.me/$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->invoice_slug:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$14;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$14;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p6

    invoke-static/range {v1 .. v10}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$showSubscriptionSheet$77(ILorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$25(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Landroid/view/View;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/nft/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$26(ZJLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 13

    move-object/from16 v0, p3

    if-eqz p0, :cond_0

    move-wide v6, p1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    move-wide v6, v1

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    iget v8, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    neg-long v9, v6

    iput-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    iget v8, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v3, 0x1

    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    move/from16 v8, p4

    invoke-direct {v3, v8, v5, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    new-instance v12, Lorg/telegram/ui/Stars/StarsIntroActivity$9;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {v12, v0, v1, v6, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$9;-><init>(Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/LinearLayout;J)V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$27(JI)V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    new-instance p0, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Lorg/telegram/ui/PostSuggestionsEditActivity;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PostSuggestionsEditActivity;-><init>(J)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "chat_id"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$28(Landroid/content/Context;[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/StarAppsSheet;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StarAppsSheet;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    aget-object v1, p1, p0

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object p0, p1, p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$29(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 7

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet;

    move-object v1, v0

    move-object v2, p1

    move v3, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p3, p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->show()V

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$30(Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 4

    if-eqz p4, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->StarGiftReasonUpgradeView:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda48;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda48;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    invoke-static {v2, v3, p3}, Lorg/telegram/ui/Components/ButtonSpan;->make(Ljava/lang/CharSequence;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$31([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$32(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/nft/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$33([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    cmp-long v2, p1, p3

    if-nez v2, :cond_0

    const-string p1, "my_profile"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string p1, "open_gifts"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$34([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    cmp-long v2, p1, p3

    if-nez v2, :cond_0

    const-string p1, "my_profile"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string p1, "open_gifts"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$35([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$36(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet;

    const/4 v0, 0x0

    aget-object p4, p4, v0

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v5, p4}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/lang/Runnable;)V

    invoke-virtual {v6}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$37([Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string p1, "user_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "my_profile"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "open_gifts"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$38([Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string p1, "user_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "my_profile"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "open_gifts"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$39([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$40(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet;

    const/4 v0, 0x0

    aget-object p4, p4, v0

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v5, p4}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/lang/Runnable;)V

    invoke-virtual {v6}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$41([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$42([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/telegram/ui/bots/AffiliateProgramFragment;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$43([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$44([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$45([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;)V
    .locals 6

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    move-object v0, p1

    move v1, p2

    move-object v2, p6

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;->showShareAffiliateAlert(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$46(ILandroid/content/Context;JJ[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    invoke-static {p0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda41;

    move-object v1, v8

    move-object v2, p6

    move-object v3, p1

    move v4, p0

    move-wide v5, p2

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda41;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Stars/BotStarsController;->getConnectedBot(Landroid/content/Context;JJLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$47([Lorg/telegram/ui/ActionBar/BottomSheet;J)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$48([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$49([Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string p1, "user_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "my_profile"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$50([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$51([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {p1, p2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionUnknownLink:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$52([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {p1, p2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionUnknownLink:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$53([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {p1, p2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lorg/telegram/messenger/R$string;->StarsTransactionUnknownLink:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$54([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)V
    .locals 2

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    neg-long p1, p1

    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget p1, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    const-string p2, "message_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$55(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$56([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->copy:I

    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionIDCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$57(Landroid/content/Context;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->StarsTOSLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$58(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Landroid/view/View;)V
    .locals 0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_url:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showTransactionSheet$59([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$updateButtonsLayouts$6(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateButtonsLayouts$7(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$4;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public static openConfirmPurchaseSheet(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/MessageObject;JLjava/lang/String;JLorg/telegram/tgnet/TLRPC$WebDocument;ILorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p3

    move-wide/from16 v10, p7

    new-instance v13, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v15

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v8, v3, v14, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x28

    invoke-static {v0, v3, v14}, Lorg/telegram/ui/Stars/StarsIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v16, 0x42a00000    # 80.0f

    const/16 v12, 0x50

    if-eqz v9, :cond_4

    iget-object v3, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-eqz v3, :cond_4

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$6;

    invoke-direct {v3, v0, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$6;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2, v4}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-eqz v4, :cond_2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4, v5, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v4, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    goto :goto_0

    :cond_1
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4, v5, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    const/16 v16, 0x0

    const/16 v20, 0x0

    const-string v5, "80_80_b2"

    const/16 v21, 0x0

    move-object v2, v3

    move-object v14, v3

    move-object v3, v4

    const/high16 v22, 0x41a00000    # 20.0f

    move-object v4, v5

    move-object/from16 v5, v21

    move-object/from16 v23, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v20

    move-object/from16 v24, v8

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :goto_2
    const/16 v2, 0x11

    goto :goto_3

    :cond_3
    move-object v14, v3

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    const/high16 v22, 0x41a00000    # 20.0f

    goto :goto_2

    :goto_3
    invoke-static {v12, v12, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v4, v23

    invoke-virtual {v4, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_4
    move-object v4, v6

    move-object/from16 v24, v8

    const/high16 v22, 0x41a00000    # 20.0f

    if-nez p9, :cond_5

    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v3, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v15, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/16 v3, 0x11

    invoke-static {v12, v12, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_5
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    invoke-static/range {p9 .. p9}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v26

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-string v27, "80_80"

    const/16 v28, 0x0

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v30}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    const/16 v6, 0x30

    invoke-static {v12, v12, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x57

    const/16 v6, 0x11

    invoke-static {v12, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "fonts/num.otf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v6, 0x1

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "XTR "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v12, v10

    int-to-long v6, v12

    const/16 v12, 0x2c

    invoke-static {v6, v7, v12}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x3f59999a    # 0.85f

    invoke-static {v6, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x40aa8f5c    # 5.33f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const v6, -0x114bfe

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v7, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v6, 0x3faa3d71    # 1.33f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v7, v8, v12, v6}, Landroid/view/View;->setPadding(IIII)V

    const/16 v6, 0x10

    const/16 v7, 0x77

    const/4 v8, -0x2

    invoke-static {v8, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x419547ae    # 18.66f

    const/16 v6, 0x51

    const/high16 v7, -0x40000000    # -2.0f

    invoke-static {v7, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    move/from16 v3, p2

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda43;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v30, -0x3f000000    # -8.0f

    const/16 v31, 0x0

    const/16 v25, -0x2

    const/high16 v26, -0x40000000    # -2.0f

    const/16 v27, 0x35

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x75

    const/4 v5, 0x7

    const/4 v6, -0x1

    invoke-static {v6, v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v5, v24

    invoke-virtual {v5, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-lez p10, :cond_7

    if-eqz p9, :cond_6

    goto :goto_6

    :cond_6
    sget v6, Lorg/telegram/messenger/R$string;->StarsConfirmSubscriptionTitle:I

    :goto_5
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_7
    if-eqz p9, :cond_8

    :goto_6
    move-object/from16 v6, p6

    goto :goto_7

    :cond_8
    sget v6, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseTitle:I

    goto :goto_5

    :goto_7
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p9, :cond_9

    const/4 v6, -0x8

    const/16 v28, -0x8

    goto :goto_8

    :cond_9
    const/16 v6, 0x8

    const/16 v28, 0x8

    :goto_8
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41600000    # 14.0f

    if-eqz p9, :cond_a

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    new-instance v8, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v8}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v8, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v7, v15, v8}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/16 v8, 0x1c

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    const/high16 v12, 0x41500000    # 13.0f

    invoke-virtual {v7, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v15}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v29, 0xa

    const/16 v30, 0x0

    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v26, 0x10

    const/16 v27, 0x6

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v29, 0x0

    const/16 v30, 0x2

    const/16 v25, 0x1c

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x8

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v9, :cond_1d

    iget-object v4, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_1d

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-eqz v4, :cond_1d

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    iget-object v4, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v4, :cond_b

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    :cond_b
    const-wide/16 v14, 0x0

    cmp-long v4, v7, v14

    if-gez v4, :cond_c

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v18

    cmp-long v4, v18, v14

    if-lez v4, :cond_c

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-boolean v12, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v12, :cond_c

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :cond_c
    cmp-long v4, v7, v14

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    if-ltz v4, :cond_d

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_f

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_f

    const/4 v7, 0x1

    goto :goto_a

    :cond_d
    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-nez v3, :cond_e

    const-string v4, ""

    goto :goto_9

    :cond_e
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_f
    :goto_9
    const/4 v7, 0x0

    :goto_a
    iget-object v3, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_b
    iget-object v14, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_13

    iget-object v14, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    instance-of v15, v14, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz v15, :cond_11

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_10

    const/4 v14, 0x1

    goto :goto_c

    :cond_10
    const/4 v14, 0x0

    goto :goto_c

    :cond_11
    instance-of v15, v14, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-eqz v15, :cond_10

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    :goto_c
    if-eqz v14, :cond_12

    const/4 v14, 0x1

    add-int/2addr v9, v14

    goto :goto_d

    :cond_12
    const/4 v14, 0x1

    add-int/2addr v12, v14

    :goto_d
    add-int/2addr v8, v14

    goto :goto_b

    :cond_13
    const/4 v14, 0x1

    const-string v3, "StarsConfirmPurchaseMedia_Photos"

    const-string v8, "StarsConfirmPurchaseMediaOne2"

    const-string v15, "StarsConfirmPurchaseMediaBotOne2"

    if-nez v9, :cond_16

    if-eqz v7, :cond_14

    move-object v8, v15

    :cond_14
    long-to-int v7, v10

    if-ne v12, v14, :cond_15

    sget v3, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseMedia_SinglePhoto:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    :goto_e
    const/4 v12, 0x2

    goto :goto_f

    :cond_15
    const/4 v9, 0x0

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v3, v12, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :goto_f
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v3, v12, v9

    aput-object v4, v12, v14

    invoke-static {v8, v7, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_16
    const-string v2, "StarsConfirmPurchaseMedia_Videos"

    if-nez v12, :cond_19

    if-eqz v7, :cond_17

    move-object v8, v15

    :cond_17
    long-to-int v3, v10

    if-ne v9, v14, :cond_18

    sget v2, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseMedia_SingleVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    :goto_10
    const/4 v9, 0x2

    goto :goto_11

    :cond_18
    const/4 v7, 0x0

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v2, v9, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :goto_11
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v7

    aput-object v4, v9, v14

    invoke-static {v8, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_19
    if-eqz v7, :cond_1a

    const-string v7, "StarsConfirmPurchaseMediaBotTwo2"

    goto :goto_12

    :cond_1a
    const-string v7, "StarsConfirmPurchaseMediaTwo2"

    :goto_12
    long-to-int v8, v10

    if-ne v12, v14, :cond_1b

    sget v3, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseMedia_SinglePhoto:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    const/4 v15, 0x0

    goto :goto_13

    :cond_1b
    const/4 v15, 0x0

    new-array v14, v15, [Ljava/lang/Object;

    invoke-static {v3, v12, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    :goto_13
    if-ne v9, v12, :cond_1c

    sget v2, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseMedia_SingleVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_1c
    new-array v14, v15, [Ljava/lang/Object;

    invoke-static {v2, v9, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_14
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v15

    aput-object v2, v9, v12

    const/4 v2, 0x2

    aput-object v4, v9, v2

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_15
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    :goto_16
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_1d
    if-lez p10, :cond_1e

    long-to-int v2, v10

    invoke-static {v15}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p6, v4, v7

    const/4 v8, 0x1

    aput-object v3, v4, v8

    const-string v3, "StarsConfirmSubscriptionText2"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_17
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_16

    :cond_1e
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    long-to-int v2, v10

    invoke-static {v15}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p6, v4, v7

    aput-object v3, v4, v8

    const-string v3, "StarsConfirmPurchaseText2"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :goto_18
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/16 v2, 0x11

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v19, 0x0

    const/16 v20, 0x12

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x6

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-lez p10, :cond_1f

    long-to-int v3, v10

    const-string v4, "StarsConfirmSubscriptionButton"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    :goto_19
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1a

    :cond_1f
    const/4 v4, 0x0

    long-to-int v3, v10

    const-string v6, "StarsConfirmPurchaseButton"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_19

    :goto_1a
    const/high16 v3, 0x42400000    # 48.0f

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v1, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    if-lez p10, :cond_20

    sget v1, Lorg/telegram/messenger/R$string;->StarsConfirmSubscriptionTOS:I

    goto :goto_1b

    :cond_20
    sget v1, Lorg/telegram/messenger/R$string;->StarsConfirmPurchaseTOS:I

    :goto_1b
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda44;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda44;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v4, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/high16 v8, 0x41400000    # 12.0f

    move/from16 p0, v4

    move/from16 p1, v6

    move/from16 p2, v7

    move/from16 p3, v8

    move/from16 p4, v0

    move/from16 p5, v1

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda45;

    move-object/from16 v3, p11

    invoke-direct {v1, v3, v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda46;

    move-object/from16 v2, p12

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda46;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-object v0
.end method

.method public static openStarsChannelInviteSheet(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v8, v4, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x28

    invoke-static {v0, v8, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v8

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x42a00000    # 80.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    new-instance v11, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v11}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iget v12, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->color:I

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setPeerColor(I)V

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setText(Ljava/lang/String;)V

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v12, :cond_0

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v12, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v9, v12}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const-string v12, "80_80"

    invoke-virtual {v8, v9, v12, v11, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/16 v9, 0x50

    const/16 v11, 0x11

    invoke-static {v9, v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->star_small_outline:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v12, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v13, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x1a

    invoke-static {v8, v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v14, 0x41d00000    # 26.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v13, v15}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v13, v15}, Landroid/view/View;->setTranslationY(F)V

    const v15, 0x3f99999a    # 1.2f

    invoke-virtual {v13, v15}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v13, v15}, Landroid/view/View;->setScaleY(F)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v8, v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v13, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v13, v8}, Landroid/view/View;->setTranslationY(F)V

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    move/from16 v9, p2

    invoke-direct {v8, v0, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;-><init>(Landroid/content/Context;I)V

    invoke-static {v8}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v9, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda88;

    invoke-direct {v9, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda88;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v18, -0x3f000000    # -8.0f

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x35

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x75

    const/4 v9, 0x7

    invoke-static {v10, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    sget v9, Lorg/telegram/messenger/R$string;->StarsSubscribeTitle:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v14, -0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x8

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v7, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget v14, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    const v15, 0x278d00

    if-ne v14, v15, :cond_1

    iget-wide v13, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    long-to-int v14, v13

    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v13, v15, v4

    const-string v13, "StarsSubscribeText"

    invoke-static {v13, v14, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    const/16 v15, 0x12c

    if-ne v14, v15, :cond_2

    const-string v14, "5 minutes"

    goto :goto_1

    :cond_2
    const-string v14, "a minute"

    :goto_1
    iget-wide v9, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    long-to-int v10, v9

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v4

    aput-object v14, v13, v6

    const-string v9, "StarsSubscribeTextTest"

    invoke-static {v9, v10, v13}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v21, 0x0

    const/16 v22, 0x16

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x6

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v7, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-static {v2, v8, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v21, 0x0

    const/16 v22, 0x16

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x6

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v7, Lorg/telegram/messenger/R$string;->StarsSubscribeButton:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v4, 0x30

    const/4 v7, -0x1

    invoke-static {v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v7, Lorg/telegram/messenger/R$string;->StarsSubscribeInfo:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda89;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda89;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v4, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v18, 0xe

    const/16 v19, 0x6

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/16 v15, 0x31

    const/16 v16, 0xe

    const/16 v17, 0xe

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda90;

    move-object/from16 v4, p4

    invoke-direct {v3, v4, v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda90;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda91;

    move-object/from16 v3, p5

    invoke-direct {v2, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda91;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {v12, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-object v0
.end method

.method public static replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 0
    const v0, 0x3f90a3d7    # 1.13f

    invoke-static {p0, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 0
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 0
    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 0
    instance-of p0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(ZLjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 0
    const v0, 0x3f90a3d7    # 1.13f

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(ZLjava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 0
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStars(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;FFF)Landroid/text/SpannableStringBuilder;
    .locals 5

    .line 0
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    :goto_0
    const-string p1, "\u2b50"

    if-eqz p0, :cond_2

    const-string v1, "TON"

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u00a0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    aget-object v3, p3, v1

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    if-eqz p0, :cond_4

    sget v4, Lorg/telegram/messenger/R$drawable;->ton:I

    goto :goto_2

    :cond_4
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    :goto_2
    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    if-eqz p3, :cond_5

    aput-object v3, p3, v1

    :cond_5
    :goto_3
    invoke-virtual {v3, p4, p5}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    iput p6, v3, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    if-eqz p0, :cond_6

    const p0, 0x3e4ccccd    # 0.2f

    mul-float p2, p2, p0

    :cond_6
    invoke-virtual {v3, p2, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 p2, 0x21

    invoke-virtual {v2, v3, v1, p0, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string p0, "\u2b50\ufe0f"

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const-string p0, "\u2b50 "

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const-string p0, "XTR "

    const-string p1, "XTR"

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static replaceStars(ZLjava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 5

    .line 0
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    aget-object v1, p2, p1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    if-eqz p0, :cond_3

    sget v2, Lorg/telegram/messenger/R$drawable;->ton:I

    goto :goto_1

    :cond_3
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    :goto_1
    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v2, 0x3f90a3d7    # 1.13f

    const v3, 0x3e6353f8    # 0.222f

    if-eqz p0, :cond_4

    const v4, 0x3e6353f8    # 0.222f

    goto :goto_2

    :cond_4
    const v4, 0x3f90a3d7    # 1.13f

    :goto_2
    if-eqz p0, :cond_5

    const v2, 0x3e6353f8    # 0.222f

    :cond_5
    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    :goto_3
    if-eqz p2, :cond_6

    aput-object v1, p2, p1

    :cond_6
    new-instance p0, Landroid/text/SpannableString;

    const-string p2, "\u2b50 "

    invoke-direct {p0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x21

    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string p1, "\u2b50\ufe0f"

    const-string v1, "\u2b50"

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {v1, v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const-string p1, "XTR "

    const-string p2, "XTR"

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p2, v0, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStarsWithPlain(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 0
    instance-of p0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static replaceStarsWithPlain(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 5

    .line 0
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    :goto_0
    const-string p1, "\u2b50"

    if-eqz p0, :cond_2

    const-string v1, "TON"

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    if-eqz p0, :cond_3

    sget v2, Lorg/telegram/messenger/R$drawable;->ton:I

    goto :goto_2

    :cond_3
    sget v2, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    :goto_2
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    aget-object v4, p3, v1

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    array-length v4, p3

    if-lez v4, :cond_5

    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    aput-object v4, p3, v1

    goto :goto_3

    :cond_5
    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    :goto_3
    if-eqz p0, :cond_6

    const p0, 0x3ea8f5c3    # 0.33f

    mul-float p2, p2, p0

    goto :goto_4

    :cond_6
    iput-boolean v1, v4, Lorg/telegram/ui/Components/ColoredImageSpan;->recolorDrawable:Z

    :goto_4
    invoke-virtual {v4, p2, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 p2, 0x21

    invoke-virtual {v3, v4, v1, p0, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string p0, "\u2b50\ufe0f"

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const-string p0, "\u2b50 "

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const-string p0, "XTR "

    const-string p1, "XTR"

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceMultipleCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;J)Ljava/lang/Runnable;
    .locals 0

    .line 0
    invoke-static {p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->getGiftStarsEmoji(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Z)Ljava/lang/Runnable;
    .locals 8

    .line 0
    const/4 v0, 0x1

    new-array v6, v0, [Z

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAccount()I

    move-result v0

    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda49;

    move-object v1, v7

    move v2, p3

    move v3, v0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda49;-><init>(ZILjava/lang/String;Lorg/telegram/messenger/ImageReceiver;[Z)V

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    if-eqz p3, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateTonGiftStickers:I

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    :goto_0
    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda50;

    invoke-direct {p3, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda50;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda51;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2, p0, p3, v0}, Lorg/telegram/messenger/NotificationCenter;->listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p0

    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda52;

    invoke-direct {p2, p1, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda52;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object p2
.end method

.method public static setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$Document;I)V
    .locals 17

    .line 0
    move-object/from16 v0, p1

    move/from16 v1, p2

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    return-void

    :cond_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const v5, 0x3eb33333    # 0.35f

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stars$StarGift;I)V
    .locals 0

    .line 0
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$Document;I)V

    return-void
.end method

.method public static setPremiumGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;I)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->getPremiumGiftMonthsEmoji(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static setTonGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;J)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->getTonGiftEmoji(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static showBoostsSheet(Landroid/content/Context;IJLorg/telegram/tgnet/tl/TL_stories$Boost;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 29

    move-object/from16 v0, p0

    move-wide/from16 v7, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v9, :cond_4

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v14, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v14, v0, v13, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-array v15, v12, [Lorg/telegram/ui/ActionBar/BottomSheet;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v6, v13, v2, v13, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v21, 0x0

    const/16 v22, 0xa

    const/16 v16, -0x1

    const/16 v17, 0x96

    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x46

    invoke-static {v0, v4, v13}, Lorg/telegram/ui/Stars/StarsIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v3, -0x1

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-direct {v5, v0, v12, v11}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;II)V

    iget-object v11, v5, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    iput v3, v11, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient2:I

    iput v3, v11, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    invoke-virtual {v11}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    const/16 v24, 0x0

    const/high16 v25, 0x41c00000    # 24.0f

    const/16 v19, 0xaa

    const/high16 v20, 0x432a0000    # 170.0f

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/high16 v23, 0x42000000    # 32.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v13}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v3, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v12, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v11, 0x11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-wide v3, v9, Lorg/telegram/tgnet/tl/TL_stories$Boost;->stars:J

    long-to-int v4, v3

    const-string v3, "BoostStars"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v24, 0x14

    const/16 v25, 0x4

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v22, 0x14

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const v4, -0x698401

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x413547ae    # 11.33f

    invoke-virtual {v2, v12, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const v4, 0x410547ae    # 8.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v1, v13, v4, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lorg/telegram/tgnet/tl/TL_stories$Boost;->multiplier:I

    if-nez v11, :cond_1

    const/4 v11, 0x1

    :cond_1
    const-string v12, "BoostingBoostsCount"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v11, Lorg/telegram/messenger/R$drawable;->mini_boost_badge:I

    const/4 v12, 0x2

    invoke-direct {v4, v11, v12}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    const v11, 0x3f28f5c3    # 0.66f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v11}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    const/16 v11, 0x21

    const/4 v12, 0x1

    invoke-virtual {v1, v4, v13, v12, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v24, 0x14

    const/16 v25, 0x4

    const/16 v19, -0x2

    const/16 v20, 0x14

    const/16 v21, 0x11

    const/16 v22, 0x14

    const/16 v23, 0x4

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lorg/telegram/ui/Components/TableView;

    invoke-direct {v11, v0, v10}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->BoostFrom:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v12, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda54;

    invoke-direct {v12, v15, v7, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda54;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move-object v1, v11

    move-object v4, v3

    move/from16 v3, p1

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-wide/from16 v4, p2

    move-object/from16 v28, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    sget v1, Lorg/telegram/messenger/R$string;->BoostGift:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v9, Lorg/telegram/tgnet/tl/TL_stories$Boost;->stars:J

    long-to-int v3, v2

    new-array v2, v13, [Ljava/lang/Object;

    move-object/from16 v4, v27

    invoke-static {v4, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    iget v1, v9, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway_msg_id:I

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->BoostReason:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->BoostReasonGiveaway:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda55;

    invoke-direct {v3, v15, v7, v8, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda55;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stories$Boost;)V

    invoke-virtual {v11, v1, v2, v3}, Lorg/telegram/ui/Components/TableView;->addRowLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->BoostDate:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget v5, v9, Lorg/telegram/tgnet/tl/TL_stories$Boost;->date:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget v6, v9, Lorg/telegram/tgnet/tl/TL_stories$Boost;->date:I

    move-object/from16 v19, v14

    int-to-long v13, v6

    mul-long v13, v13, v7

    invoke-direct {v5, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v6, v5

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    sget v1, Lorg/telegram/messenger/R$string;->BoostUntil:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget v5, v9, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    int-to-long v5, v5

    mul-long v5, v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget v6, v9, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    int-to-long v13, v6

    mul-long v13, v13, v7

    invoke-direct {v5, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41880000    # 17.0f

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v2, v28

    invoke-virtual {v2, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v1, v0, v10}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v3, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v3, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v3, Lorg/telegram/messenger/R$string;->StarsTransactionTOS:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda56;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda56;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v9, 0x40e00000    # 7.0f

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/high16 v6, 0x41600000    # 14.0f

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v1, v0, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda57;

    invoke-direct {v0, v15}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda57;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x41800000    # 16.0f

    const/4 v3, 0x0

    const/16 v5, 0x30

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41000000    # 8.0f

    move/from16 p0, v4

    move/from16 p1, v5

    move/from16 p2, v6

    move/from16 p3, v7

    move/from16 p4, v0

    move/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v15, v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v15, v1

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_3
    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    aget-object v2, v15, v1

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    aget-object v2, v15, v1

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda58;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Ljava/lang/Runnable;)V

    aget-object v0, v15, v1

    return-object v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showGiftResellPriceSheet(Landroid/content/Context;IJLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 26

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v9, p5

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v12, v1, Lorg/telegram/messenger/MessagesController;->starsStargiftResaleAmountMin:J

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/MessagesController;->starsStargiftResaleAmountMax:J

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v10, v3, Lorg/telegram/messenger/MessagesController;->starsStargiftResaleCommisionPermille:I

    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v14, 0x0

    invoke-direct {v3, v0, v14, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v4, v6, v7, v8, v11}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v7, Lorg/telegram/messenger/R$string;->ResellGiftTitle:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v15, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v20, 0x40800000    # 4.0f

    const/high16 v21, 0x41600000    # 14.0f

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/high16 v18, 0x40800000    # 4.0f

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    new-instance v6, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v6, v0, v9}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v6, v15}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setForceForceUseCenter(Z)V

    sget v16, Lorg/telegram/messenger/R$string;->ResellGiftPriceTitle:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    const/high16 v14, 0x42100000    # 36.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setLeftPadding(F)V

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v11, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v11, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-virtual {v11, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v11, v15, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v11, v7, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setInputType(I)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-static {v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setHighlightColor(I)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-static {v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v11, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    :goto_0
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda80;

    invoke-direct {v5, v6, v11}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda80;-><init>(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v11, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v8, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x0

    const/16 v20, 0x13

    const/16 v21, 0xe

    const/16 v22, 0x0

    invoke-static/range {v17 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v14, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x77

    const/4 v14, -0x1

    const/4 v7, -0x2

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v7, v15, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v11, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    const/16 v8, 0x30

    invoke-static {v14, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v6, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v14, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v24, 0x41600000    # 14.0f

    const/high16 v25, 0x41a80000    # 21.0f

    const/16 v20, -0x1

    const/16 v21, -0x2

    const/high16 v22, 0x41600000    # 14.0f

    const/high16 v23, 0x40400000    # 3.0f

    invoke-static/range {v20 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v15, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    long-to-float v7, v12

    int-to-float v8, v10

    const/high16 v21, 0x447a0000    # 1000.0f

    div-float v8, v8, v21

    mul-float v7, v7, v8

    float-to-int v7, v7

    const-string v14, "ResellGiftInfo"

    invoke-static {v14, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v14, 0x1

    invoke-virtual {v15, v14, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v14, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextColor(I)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    move/from16 v23, v10

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v10, 0x3

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v10, 0x13

    move-wide/from16 v24, v12

    const/4 v12, -0x1

    invoke-static {v12, v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v13, v10, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v14, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 v7, 0x5

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v7, 0x15

    const/4 v10, -0x1

    invoke-static {v10, v10, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v13, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v12, v0, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->ResellGiftButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v12, v0, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v0, 0x30

    invoke-static {v10, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/4 v3, 0x1

    new-array v14, v3, [Lorg/telegram/ui/ActionBar/BottomSheet;

    aput-object v0, v14, v5

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v13, v0}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2248"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v3

    move-wide/from16 v4, p2

    long-to-float v4, v4

    mul-float v4, v4, v8

    float-to-double v4, v4

    const-wide v7, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v7

    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->starsUsdWithdrawRate1000:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v7

    double-to-long v4, v4

    const-string v7, "USD"

    invoke-virtual {v3, v4, v5, v7}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v10, Lorg/telegram/ui/Stars/StarsIntroActivity$17;

    move-object v0, v10

    move-object v3, v11

    move-object v4, v6

    move-object/from16 v16, v6

    move-wide/from16 v5, v24

    move-object v7, v12

    move-object v8, v15

    move-object/from16 v9, p5

    move-object v15, v10

    move/from16 v10, v23

    move-object/from16 v17, v14

    move-object v14, v11

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Stars/StarsIntroActivity$17;-><init>(JLorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;JLorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;)V

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;

    move-object v2, v1

    move-object v3, v0

    move-object/from16 v4, p4

    move-object v5, v12

    move-object v6, v14

    move-object/from16 v7, v16

    move-wide/from16 v8, v24

    move-object/from16 v10, v17

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda81;-><init>([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;J[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda82;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda82;-><init>([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;J[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    aget-object v1, v17, v0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    aget-object v1, v17, v0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->needEnterText()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda83;

    move-object/from16 v2, v17

    invoke-direct {v1, v2, v14}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda83;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    if-eqz v0, :cond_2

    const-wide/16 v3, 0xc8

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x50

    :goto_2
    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 v0, 0x0

    aget-object v0, v2, v0

    return-object v0
.end method

.method public static showGiftResellPriceSheet(Landroid/content/Context;ILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 7

    .line 0
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/messenger/MessagesController;->starsStargiftResaleAmountMin:J

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showGiftResellPriceSheet(Landroid/content/Context;IJLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showMediaPriceSheet(Landroid/content/Context;JZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v8, 0x0

    invoke-direct {v2, v0, v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v3, v5, v6, v7, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v6, Lorg/telegram/messenger/R$string;->PaidContentTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v15, 0x40800000    # 4.0f

    const/high16 v16, 0x41900000    # 18.0f

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/high16 v13, 0x40800000    # 4.0f

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    new-instance v5, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setForceForceUseCenter(Z)V

    sget v11, Lorg/telegram/messenger/R$string;->PaidContentPriceTitle:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    const/high16 v11, 0x42100000    # 36.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setLeftPadding(F)V

    invoke-static {v7, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v10, v7}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v10, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v10, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v10, v9, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v10, v11, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    const/4 v7, 0x2

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setInputType(I)V

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-static {v7, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setHighlightColor(I)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-static {v7, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v10, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    :goto_0
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda60;

    invoke-direct {v7, v5, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/Components/OutlineTextContainerView;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v10, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v12, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/4 v15, 0x0

    const/16 v16, 0x13

    const/16 v17, 0xe

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0x77

    const/4 v13, -0x1

    invoke-static {v13, v14, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    const/16 v11, 0x30

    invoke-static {v13, v14, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v5, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v19, 0x41600000    # 14.0f

    const/16 v20, 0x0

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x15

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    sget v12, Lorg/telegram/messenger/R$string;->PaidContentInfo:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda61;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda61;-><init>(Landroid/content/Context;)V

    invoke-static {v12, v14}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-static {v12, v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v4, v9, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v12, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v12, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v18, 0x41600000    # 14.0f

    const/high16 v19, 0x41c00000    # 24.0f

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/high16 v16, 0x41600000    # 14.0f

    const/high16 v17, 0x40400000    # 3.0f

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v15, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-wide/16 v16, 0x0

    cmp-long v4, p1, v16

    if-lez v4, :cond_1

    sget v4, Lorg/telegram/messenger/R$string;->PaidContentUpdateButton:I

    goto :goto_1

    :cond_1
    sget v4, Lorg/telegram/messenger/R$string;->PaidContentButton:I

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    invoke-static {v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v15, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    cmp-long v4, p1, v16

    if-lez v4, :cond_2

    if-eqz p3, :cond_2

    new-instance v6, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v6, v0, v8, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->PaidContentClearButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v8, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;ZZ)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x30

    const/16 v20, 0x0

    const/high16 v21, 0x40800000    # 4.0f

    invoke-static/range {v18 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move-object v14, v6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    new-array v13, v9, [Lorg/telegram/ui/ActionBar/BottomSheet;

    aput-object v0, v13, v8

    cmp-long v0, p1, v16

    if-gtz v0, :cond_3

    const-string v0, ""

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v11, Lorg/telegram/ui/Stars/StarsIntroActivity$16;

    move-object v0, v11

    move-object v1, v10

    move-object v2, v5

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-object v6, v15

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$16;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;JZLorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/widget/TextView;)V

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-array v0, v9, [Z

    aput-boolean v8, v0, v8

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda62;

    move-object v11, v1

    move-object v12, v0

    move-object v2, v13

    move-object/from16 v13, p4

    move-object v6, v14

    move-object v14, v15

    move-object v3, v15

    move-object v15, v10

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda62;-><init>([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda63;

    move-object v11, v1

    move-object v14, v10

    move-object v15, v3

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda63;-><init>([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_4

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda64;

    move-object v11, v1

    move-object v12, v0

    move-object/from16 v13, p4

    move-object v14, v6

    move-object v15, v10

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda64;-><init>([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    aget-object v0, v2, v8

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    aget-object v0, v2, v8

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda65;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    aget-object v0, v2, v8

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->needEnterText()Z

    move-result v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda66;

    invoke-direct {v1, v2, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda66;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    if-eqz v0, :cond_6

    const-wide/16 v3, 0xc8

    goto :goto_4

    :cond_6
    const-wide/16 v3, 0x50

    :goto_4
    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    aget-object v0, v2, v8

    return-object v0
.end method

.method public static showSoldOutGiftSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v5, v0, v4, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v6, v8, v10, v7, v11}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v7, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    const/16 v10, 0xa0

    invoke-static {v8, v1, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stars$StarGift;I)V

    const/16 v16, 0x0

    const/16 v17, 0xa

    const/16 v11, 0xa0

    const/16 v12, 0xa0

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v15, -0x8

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    sget v9, Lorg/telegram/messenger/R$string;->Gift2SoldOutSheetTitle:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v15, 0x14

    const/16 v16, 0x4

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x11

    const/16 v13, 0x14

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v7, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    sget v8, Lorg/telegram/messenger/R$string;->Gift2SoldOutSheetSubtitle:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0x14

    const/4 v15, 0x4

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/16 v11, 0x11

    const/16 v12, 0x14

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Components/TableView;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->first_sale_date:I

    if-eqz v8, :cond_1

    sget v8, Lorg/telegram/messenger/R$string;->Gift2SoldOutSheetFirstSale:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->first_sale_date:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/TableView;->addRowDateTime(Ljava/lang/CharSequence;I)Landroid/widget/TableRow;

    :cond_1
    iget v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->last_sale_date:I

    if-eqz v8, :cond_2

    sget v8, Lorg/telegram/messenger/R$string;->Gift2SoldOutSheetLastSale:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->last_sale_date:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/TableView;->addRowDateTime(Ljava/lang/CharSequence;I)Landroid/widget/TableRow;

    :cond_2
    sget v8, Lorg/telegram/messenger/R$string;->Gift2SoldOutSheetValue:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u2b50\ufe0f "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    const/16 v12, 0x2c

    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const v10, 0x3f4ccccd    # 0.8f

    invoke-static {v9, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    iget-boolean v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v8, :cond_3

    move/from16 v8, p1

    invoke-static {v7, v8, v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->addAvailabilityRow(Lorg/telegram/ui/Components/TableView;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_3
    const/4 v12, 0x0

    const/high16 v13, 0x41400000    # 12.0f

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x0

    const/high16 v11, 0x41880000    # 17.0f

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v0, -0x1

    const/16 v2, 0x30

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    new-array v2, v3, [Lorg/telegram/ui/ActionBar/BottomSheet;

    aput-object v0, v2, v4

    aget-object v0, v2, v4

    iput-boolean v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda67;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda67;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v0, v2, v4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, v2, v4

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_4
    aget-object v0, v2, v4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    aget-object v0, v2, v4

    return-object v0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showSubscriptionSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 39

    move-object/from16 v7, p0

    move/from16 v11, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    const/4 v12, 0x0

    const/4 v1, 0x1

    if-eqz v3, :cond_21

    if-nez v7, :cond_0

    goto/16 :goto_16

    :cond_0
    new-instance v13, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v13, v7, v12, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-array v14, v1, [Lorg/telegram/ui/ActionBar/BottomSheet;

    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v15, v4, v6, v2, v9}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v21, 0x0

    const/16 v22, 0xa

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-array v6, v1, [Z

    new-instance v10, Lorg/telegram/ui/Stars/StarsIntroActivity$12;

    invoke-direct {v10, v6, v14}, Lorg/telegram/ui/Stars/StarsIntroActivity$12;-><init>([Z[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v9, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    invoke-virtual {v4, v10, v9}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v17, v13

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const-string v9, ""

    const-wide/16 v24, 0x0

    cmp-long v18, v12, v24

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    if-ltz v18, :cond_1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v18

    xor-int/lit8 v19, v18, 0x1

    move-object/from16 v31, v0

    move-object/from16 v27, v2

    move-object/from16 v30, v5

    move/from16 v29, v18

    move/from16 v28, v19

    goto :goto_1

    :cond_1
    move-object/from16 v27, v2

    neg-long v1, v12

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v1, v9

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_0
    move-object/from16 v31, v0

    move-object/from16 v30, v1

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_1
    iget-object v0, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v0, :cond_3

    const/high16 v0, 0x41a80000    # 21.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v0, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v0}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v20, "100_100"

    const/16 v21, 0x0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v23}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    :goto_2
    move-object/from16 v18, v6

    goto :goto_3

    :cond_3
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    cmp-long v1, v12, v24

    if-ltz v1, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v4, v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object/from16 v18, v6

    neg-long v5, v12

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v4, v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :goto_3
    const/16 v0, 0x64

    const/16 v1, 0x11

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    move-object/from16 v5, v27

    invoke-virtual {v5, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$drawable;->star_small_outline:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v4, :cond_5

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x1c

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x42080000    # 34.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x420c0000    # 35.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    const v6, 0x3f8ccccd    # 1.1f

    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleY(F)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x1c

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x42080000    # 34.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    sget v2, Lorg/telegram/messenger/R$string;->StarsSubscriptionTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :goto_5
    const/16 v37, 0x14

    const/16 v38, 0x4

    const/16 v32, -0x1

    const/16 v33, -0x2

    const/16 v34, 0x11

    const/16 v35, 0x14

    const/16 v36, 0x0

    invoke-static/range {v32 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget v6, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    const v5, 0x278d00

    const v1, 0x3f4ccccd    # 0.8f

    if-ne v6, v5, :cond_7

    sget v6, Lorg/telegram/messenger/R$string;->StarsSubscriptionPrice:I

    iget-wide v4, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v2, v16

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-static {v2, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_7
    const/16 v2, 0x12c

    if-ne v6, v2, :cond_8

    const-string v2, "5min"

    goto :goto_7

    :cond_8
    const-string v2, "min"

    :goto_7
    sget v6, Lorg/telegram/messenger/R$string;->StarsSubscriptionPrice:I

    move/from16 v22, v6

    iget-wide v5, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    const/4 v4, 0x1

    aput-object v2, v6, v4

    move/from16 v2, v22

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :goto_8
    const/16 v37, 0x14

    const/16 v38, 0x4

    const/16 v32, -0x1

    const/16 v33, -0x2

    const/16 v34, 0x11

    const/16 v35, 0x14

    const/16 v36, 0x0

    invoke-static/range {v32 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/TableView;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const v2, 0x414a8f5c    # 12.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const v6, 0x411547ae    # 9.33f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    new-instance v4, Lorg/telegram/ui/AvatarSpan;

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-direct {v4, v1, v11, v6}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    cmp-long v6, v12, v24

    if-ltz v6, :cond_b

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v9, 0x1

    :goto_a
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v4, v6}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    move-object/from16 v6, v21

    move-object/from16 v21, v10

    goto :goto_c

    :cond_b
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move-object/from16 v22, v9

    move-object/from16 v21, v10

    neg-long v9, v12

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-nez v6, :cond_c

    const/4 v9, 0x1

    goto :goto_b

    :cond_c
    const/4 v9, 0x0

    :goto_b
    if-eqz v6, :cond_d

    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v22, v10

    :cond_d
    invoke-virtual {v4, v6}, Lorg/telegram/ui/AvatarSpan;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    move-object/from16 v6, v22

    :goto_c
    new-instance v10, Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x  "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v6, 0x21

    const/4 v5, 0x1

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$13;

    invoke-direct {v4, v14, v12, v13}, Lorg/telegram/ui/Stars/StarsIntroActivity$13;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/4 v5, 0x3

    invoke-virtual {v10, v4, v5, v11, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v9, :cond_10

    cmp-long v4, v12, v24

    if-gez v4, :cond_e

    sget v4, Lorg/telegram/messenger/R$string;->StarsSubscriptionChannel:I

    goto :goto_d

    :cond_e
    if-eqz v28, :cond_f

    sget v4, Lorg/telegram/messenger/R$string;->StarsSubscriptionBusiness:I

    goto :goto_d

    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->StarsSubscriptionBot:I

    :goto_d
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    :cond_10
    cmp-long v1, v12, v24

    if-ltz v1, :cond_12

    iget-object v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v28, :cond_11

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionBusinessProduct:I

    goto :goto_e

    :cond_11
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionBotProduct:I

    :goto_e
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    :cond_12
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionSince:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget v9, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    iget-object v10, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget v10, v10, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    const-wide/16 v23, 0x3e8

    mul-long v9, v9, v23

    invoke-direct {v6, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v6

    new-instance v9, Ljava/util/Date;

    iget v10, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    iget-object v11, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget v11, v11, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    mul-long v10, v10, v23

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v10, v9

    const/4 v5, 0x1

    aput-object v6, v10, v5

    invoke-static {v4, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    int-to-long v9, v1

    iget-boolean v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->canceled:Z

    if-nez v1, :cond_15

    iget-boolean v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->bot_canceled:Z

    if-eqz v1, :cond_13

    goto :goto_f

    :cond_13
    iget v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v5, v1

    cmp-long v1, v9, v5

    if-lez v1, :cond_14

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionUntilExpired:I

    goto :goto_10

    :cond_14
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionUntilRenews:I

    goto :goto_10

    :cond_15
    :goto_f
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionUntilExpires:I

    :goto_10
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    iget v11, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    move-wide/from16 v26, v12

    int-to-long v11, v11

    mul-long v11, v11, v23

    invoke-direct {v6, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v6

    new-instance v11, Ljava/util/Date;

    iget v12, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v12, v12

    mul-long v12, v12, v23

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v5, 0x1

    aput-object v6, v11, v5

    invoke-static {v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v32, -0x1

    const/16 v33, -0x2

    const/16 v34, 0x0

    const/high16 v35, 0x41880000    # 17.0f

    invoke-static/range {v32 .. v37}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionTOS:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda68;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda68;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v36, 0x41600000    # 14.0f

    const/high16 v37, 0x40e00000    # 7.0f

    const/high16 v34, 0x41600000    # 14.0f

    const/high16 v35, 0x41700000    # 15.0f

    invoke-static/range {v32 .. v37}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v11, v0

    const/16 v0, 0x30

    const/4 v4, -0x1

    const/4 v6, 0x4

    cmp-long v13, v9, v11

    if-gez v13, :cond_1e

    iget-boolean v9, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->can_refulfill:Z

    if-eqz v9, :cond_19

    new-instance v9, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v9, v7, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v9, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v29, :cond_16

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionBotRefulfillInfo:I

    goto :goto_11

    :cond_16
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionRefulfillInfo:I

    :goto_11
    iget v5, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v10, v5

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v11, v2

    invoke-static {v1, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v35, 0x41d00000    # 26.0f

    const/high16 v36, 0x41700000    # 15.0f

    const/16 v31, -0x1

    const/16 v32, -0x2

    const/high16 v33, 0x41d00000    # 26.0f

    const/high16 v34, 0x40e00000    # 7.0f

    invoke-static/range {v31 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x1

    invoke-direct {v11, v7, v1, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v29, :cond_17

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionBotRefulfill:I

    goto :goto_12

    :cond_17
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionRefulfill:I

    :goto_12
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v15, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda69;

    move-object v0, v12

    move-object v1, v11

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v14

    move-wide/from16 v5, v26

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, v28

    move-object/from16 v13, v21

    move-object/from16 v10, v30

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;[Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    :goto_13
    move-object/from16 v0, v17

    goto/16 :goto_15

    :cond_19
    move-object/from16 v13, v21

    iget-boolean v9, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->bot_canceled:Z

    if-eqz v9, :cond_1b

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v28, :cond_1a

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionBusinessCancelledText:I

    goto :goto_14

    :cond_1a
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionBotCancelledText:I

    :goto_14
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v6, 0x41d00000    # 26.0f

    const/high16 v7, 0x41700000    # 15.0f

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x41d00000    # 26.0f

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_13

    :cond_1b
    iget-boolean v9, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->canceled:Z

    if-eqz v9, :cond_1d

    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    invoke-static {v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v2, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelledText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v22, 0x41d00000    # 26.0f

    const/high16 v23, 0x41700000    # 15.0f

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/high16 v20, 0x41d00000    # 26.0f

    const/high16 v21, 0x40e00000    # 7.0f

    invoke-static/range {v18 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    if-nez v1, :cond_1c

    iget-object v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->invoice_slug:Ljava/lang/String;

    if-eqz v1, :cond_18

    :cond_1c
    new-instance v9, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x1

    invoke-direct {v9, v7, v1, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionRenew:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v15, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda70;

    move-object v0, v7

    move-object v1, v9

    move-object/from16 v2, p2

    move/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, v31

    move-object/from16 v6, v30

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_13

    :cond_1d
    new-instance v9, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v9, v7, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v9, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancelInfo:I

    iget v5, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v10, v5

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v2, v10

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v22, 0x41d00000    # 26.0f

    const/high16 v23, 0x41700000    # 15.0f

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/high16 v20, 0x41d00000    # 26.0f

    const/high16 v21, 0x40e00000    # 7.0f

    invoke-static/range {v18 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-direct {v9, v7, v1, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->StarsSubscriptionCancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setTextColor(I)V

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v15, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda71;

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, p2

    move/from16 v3, p1

    move-object v4, v14

    move/from16 v5, v28

    move/from16 v6, v29

    move-object/from16 v7, v31

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;ZZLorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_13

    :cond_1e
    move-object/from16 v13, v21

    new-instance v9, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v9, v7, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v9, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionExpiredInfo:I

    iget v5, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v10, v5

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v11, v2

    invoke-static {v1, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v23, 0x41d00000    # 26.0f

    const/high16 v24, 0x41700000    # 15.0f

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/high16 v21, 0x41d00000    # 26.0f

    const/high16 v22, 0x40e00000    # 7.0f

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    if-nez v1, :cond_1f

    iget-object v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->invoice_slug:Ljava/lang/String;

    if-eqz v1, :cond_18

    :cond_1f
    new-instance v9, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x1

    invoke-direct {v9, v7, v1, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionAgain:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v15, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;

    move-object v0, v10

    move-object v1, v9

    move-object/from16 v2, p2

    move/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, v18

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;I[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[ZLandroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_13

    :goto_15
    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v14, v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda73;

    move/from16 v3, p1

    invoke-direct {v2, v3, v13}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda73;-><init>(ILorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    aget-object v0, v14, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_20

    aget-object v2, v14, v1

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_20
    aget-object v0, v14, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    aget-object v0, v14, v1

    return-object v0

    :cond_21
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static showTransactionSheet(Landroid/content/Context;IILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 7

    .line 0
    new-instance v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;-><init>()V

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iput-object p3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    iget-wide v0, p5, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;->stars:J

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p2

    iput-object p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-object p2, p5, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftStars;->transaction_id:Ljava/lang/String;

    iput-object p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    iput-object p3, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object p4, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->received_by:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showTransactionSheet(Landroid/content/Context;IILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 7

    .line 0
    new-instance v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;-><init>()V

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iput-object p3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    new-instance p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;-><init>()V

    iput-object p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, p5, Lorg/telegram/tgnet/TLRPC$MessageAction;->cryptoAmount:J

    iput-wide v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget-object p2, p5, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftTon;->transaction_id:Ljava/lang/String;

    iput-object p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    iput-object p3, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object p4, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->received_by:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showTransactionSheet(Landroid/content/Context;IILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 7

    .line 0
    new-instance v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;-><init>()V

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iget-object v1, p5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;->boost_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    iget-wide v0, p5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;->stars:J

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p2

    iput-object p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-object p2, p5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;->transaction_id:Ljava/lang/String;

    iput-object p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    iget p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    or-int/lit16 p2, p2, 0x2000

    iput p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    iget p2, p5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPrizeStars;->giveaway_msg_id:I

    iput p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->giveaway_post_id:I

    iput-object p3, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object p4, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->received_by:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showTransactionSheet(Landroid/content/Context;IILorg/telegram/tgnet/TLRPC$TL_messageActionPaymentRefunded;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 7

    .line 0
    new-instance v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;-><init>()V

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p2

    iput-object p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentRefunded;->charge:Lorg/telegram/tgnet/TLRPC$TL_paymentCharge;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_paymentCharge;->id:Ljava/lang/String;

    iput-object p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showTransactionSheet(Landroid/content/Context;ZILorg/telegram/tgnet/TLRPC$TL_payments_paymentReceiptStars;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 7

    .line 0
    new-instance v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;-><init>()V

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->title:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->title:Ljava/lang/String;

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->description:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;-><init>()V

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->bot_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->date:I

    iput v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->total_amount:J

    neg-long v0, v0

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->transaction_id:Ljava/lang/String;

    iput-object p3, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 59

    .line 0
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    const-string v8, "/"

    const-string v6, "\u2b50\ufe0f "

    const-string v5, "fragment"

    const-wide/16 v16, 0x0

    const-string v18, "+"

    const/4 v11, 0x0

    if-eqz v14, :cond_0

    if-nez v9, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_44

    :cond_1
    iget-object v4, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    instance-of v12, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    iget v7, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v7, 0x2000

    if-eqz v0, :cond_2

    const/16 v25, 0x1

    goto :goto_0

    :cond_2
    const/16 v25, 0x0

    :goto_0
    const/high16 v0, 0x20000

    and-int/2addr v0, v7

    if-eqz v0, :cond_3

    iget-boolean v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    if-nez v0, :cond_3

    const/16 v26, 0x1

    goto :goto_1

    :cond_3
    const/16 v26, 0x0

    :goto_1
    if-nez v26, :cond_4

    const/high16 v0, 0x10000

    and-int/2addr v0, v7

    if-eqz v0, :cond_4

    iget-boolean v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    if-nez v0, :cond_4

    const/16 v27, 0x1

    goto :goto_2

    :cond_4
    const/16 v27, 0x0

    :goto_2
    invoke-virtual {v4}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result v28

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->negative()Z

    move-result v29

    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v7, v9, v11, v15}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x1

    new-array v4, v0, [Lorg/telegram/ui/ActionBar/BottomSheet;

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-nez v25, :cond_6

    iget-boolean v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-nez v3, :cond_6

    iget-boolean v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_resale:Z

    if-eqz v3, :cond_5

    iget-object v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v3, 0x41a00000    # 20.0f

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v19, 0x41000000    # 8.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v11, v2, v3, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean v1, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_resale:Z

    const-string v32, "\u202f\u2b50\ufe0f"

    const-string v3, ""

    const-string v0, " "

    move/from16 v36, v12

    if-eqz v1, :cond_c

    iget-object v1, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v2, :cond_c

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-object v1, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v12, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v1, v12}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v1, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    const-class v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-object/from16 v24, v1

    const/high16 v19, 0x41a00000    # 20.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move-object/from16 v30, v2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    new-instance v2, Landroid/graphics/RadialGradient;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v31, v0

    iget v0, v12, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    const/high16 v33, -0x1000000

    or-int v0, v0, v33

    move-object/from16 v45, v3

    iget v3, v12, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int v3, v3, v33

    filled-new-array {v0, v3}, [I

    move-result-object v42

    const/4 v0, 0x2

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    sget-object v44, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v38, v2

    move/from16 v41, v1

    move-object/from16 v43, v3

    invoke-direct/range {v38 .. v44}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v38, Landroid/graphics/Matrix;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$8;

    move-object/from16 v46, v37

    const/high16 v15, 0x41a00000    # 20.0f

    move-object v0, v1

    move-object/from16 v39, v6

    move-object/from16 v15, v24

    move-object v6, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move-object/from16 v34, v7

    move-object/from16 v7, v30

    move-object/from16 v2, v38

    move-object/from16 v24, v3

    move-object/from16 v47, v45

    move-object/from16 v3, v19

    move-object/from16 v48, v4

    const/high16 v10, 0x41900000    # 18.0f

    move-object/from16 v4, v24

    move-object/from16 v49, v5

    move-object/from16 v5, v31

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$8;-><init>(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/graphics/RadialGradient;Landroid/graphics/Paint;Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    iget-object v1, v15, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget-object v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/16 v3, 0xa0

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stars$StarGift;I)V

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v50, 0xa0

    const/16 v51, 0xa0

    const/16 v52, 0x11

    const/16 v53, 0x0

    const/16 v54, 0x14

    invoke-static/range {v50 .. v56}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9, v13, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-static {v9, v15, v1, v0}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v50, -0x2

    const/16 v51, -0x2

    const/16 v52, 0x11

    const/16 v53, 0x0

    const/16 v54, 0x1

    invoke-static/range {v50 .. v56}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41500000    # 13.0f

    const/4 v2, 0x0

    invoke-static {v9, v1, v2, v2}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iget v2, v12, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->text_color:I

    or-int v2, v2, v33

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget v2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    const-string v3, "Gift2CollectionNumber"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v54, 0x5

    invoke-static/range {v50 .. v56}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v9, v10, v2, v1}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    if-eqz v28, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v18, v47

    :goto_5
    invoke-static {v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v7, 0x3

    new-array v10, v7, [Ljava/lang/CharSequence;

    aput-object v18, v10, v2

    aput-object v5, v10, v1

    const/4 v1, 0x2

    aput-object v32, v10, v1

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-boolean v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v2, :cond_9

    sget v2, Lorg/telegram/messenger/R$string;->StarsRefunded:I

    :goto_6
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->appendStatus(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;

    goto :goto_7

    :cond_9
    iget-boolean v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->failed:Z

    if-eqz v2, :cond_a

    sget v2, Lorg/telegram/messenger/R$string;->StarsFailed:I

    goto :goto_6

    :cond_a
    iget-boolean v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->pending:Z

    if-eqz v2, :cond_b

    sget v2, Lorg/telegram/messenger/R$string;->StarsPending:I

    goto :goto_6

    :cond_b
    :goto_7
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v55, 0x0

    const/16 v56, 0x11

    const/16 v50, -0x2

    const/16 v51, -0x2

    const/16 v52, 0x11

    const/16 v53, 0x0

    const/16 v54, 0xb

    invoke-static/range {v50 .. v56}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v12, p6

    move-object/from16 v57, v8

    move-object/from16 v19, v34

    move-object/from16 v10, v39

    move-object/from16 v5, v46

    move-object/from16 v15, v48

    const/4 v6, 0x3

    move-wide/from16 v7, p2

    goto/16 :goto_20

    :cond_c
    move-object/from16 v46, v0

    move-object/from16 v47, v3

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move-object/from16 v39, v6

    move-object/from16 v34, v7

    const/high16 v10, 0x41900000    # 18.0f

    const/high16 v15, 0x41a00000    # 20.0f

    new-instance v12, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v12, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iget-boolean v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift:Z

    const/4 v1, -0x8

    if-eqz v0, :cond_d

    invoke-virtual {v12}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift_months:I

    invoke-static {v12, v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setPremiumGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;I)Ljava/lang/Runnable;

    :goto_8
    move/from16 v15, p1

    move-object/from16 v57, v8

    move-object/from16 v19, v34

    move-object/from16 v10, v39

    const/high16 v2, 0x41900000    # 18.0f

    :goto_9
    const/16 v37, 0xa0

    const/16 v38, 0xa0

    const/16 v41, -0x8

    goto/16 :goto_12

    :cond_d
    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v0, :cond_f

    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_e

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;

    iget-object v1, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const v2, 0x3ee147ae    # 0.44f

    const/16 v3, 0x5e

    invoke-direct {v0, v12, v1, v3, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;-><init>(Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stars$StarGift;IF)V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move/from16 v15, p1

    move-object/from16 v57, v8

    move-object/from16 v19, v34

    move-object/from16 v10, v39

    const/high16 v2, 0x41900000    # 18.0f

    const/16 v37, 0x5e

    const/16 v38, 0x5e

    const/16 v41, 0x2

    goto/16 :goto_12

    :cond_e
    invoke-virtual {v12}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/16 v3, 0xa0

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stars$StarGift;I)V

    goto :goto_8

    :cond_f
    if-nez v25, :cond_10

    iget-boolean v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v0, :cond_11

    :cond_10
    move/from16 v15, p1

    move-object/from16 v57, v8

    move-object/from16 v19, v34

    move-object/from16 v10, v39

    const/high16 v2, 0x41900000    # 18.0f

    goto/16 :goto_11

    :cond_11
    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    :goto_a
    move-object/from16 v51, v2

    const/4 v0, 0x0

    goto :goto_b

    :cond_12
    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x1

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    const/16 v51, 0x0

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    const/16 v54, 0x0

    const/16 v55, 0x0

    const-string v52, "100_100"

    const/16 v53, 0x0

    move-object/from16 v50, v12

    invoke-virtual/range {v50 .. v56}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v0, 0x64

    const/16 v1, 0x64

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda11;

    move-object v0, v7

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move/from16 v5, p4

    move-object/from16 v10, v39

    move-object/from16 v6, p6

    move-object v15, v7

    move-object/from16 v19, v34

    move-object v7, v12

    move-object/from16 v57, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda11;-><init>(ZJLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move/from16 v15, p1

    const/high16 v2, 0x41900000    # 18.0f

    goto/16 :goto_13

    :cond_14
    move-object/from16 v57, v8

    move-object/from16 v19, v34

    move-object/from16 v10, v39

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    if-eqz v1, :cond_19

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v0, :cond_15

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v0}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v41

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-string v42, "100_100"

    const/16 v43, 0x0

    move-object/from16 v40, v12

    invoke-virtual/range {v40 .. v45}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    move/from16 v15, p1

    const/high16 v2, 0x41900000    # 18.0f

    goto :goto_e

    :cond_15
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    if-eqz v27, :cond_16

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    move/from16 v15, p1

    const/high16 v2, 0x41900000    # 18.0f

    goto :goto_c

    :cond_16
    iget-boolean v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    move/from16 v15, p1

    const/high16 v2, 0x41900000    # 18.0f

    if-eqz v0, :cond_17

    if-eqz v15, :cond_17

    move-wide/from16 v0, p2

    goto :goto_c

    :cond_17
    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    :goto_c
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    cmp-long v4, v0, v16

    if-ltz v4, :cond_18

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_d
    invoke-virtual {v12, v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_e

    :cond_18
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_d

    :goto_e
    const/16 v37, 0x64

    const/16 v38, 0x64

    const/16 v41, 0x0

    goto/16 :goto_12

    :cond_19
    move/from16 v15, p1

    const/high16 v2, 0x41900000    # 18.0f

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAppStore;

    if-eqz v1, :cond_1a

    const-string v5, "ios"

    :goto_f
    const/16 v0, 0x64

    goto :goto_10

    :cond_1a
    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPlayMarket;

    if-eqz v1, :cond_1b

    const-string v5, "android"

    goto :goto_f

    :cond_1b
    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPremiumBot;

    if-eqz v1, :cond_1c

    const-string v5, "premiumbot"

    goto :goto_f

    :cond_1c
    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerFragment;

    if-eqz v1, :cond_1d

    move-object/from16 v5, v49

    goto :goto_f

    :cond_1d
    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAds;

    if-eqz v1, :cond_1e

    const-string v5, "ads"

    goto :goto_f

    :cond_1e
    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAPI;

    if-eqz v0, :cond_1f

    const-string v5, "api"

    goto :goto_f

    :cond_1f
    const-string v5, "?"

    goto :goto_f

    :goto_10
    invoke-static {v0, v5}, Lorg/telegram/ui/Cells/SessionCell;->createDrawable(ILjava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13

    :goto_11
    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    if-eqz v0, :cond_20

    invoke-virtual {v12}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    invoke-static {v12, v0, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setTonGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;J)Ljava/lang/Runnable;

    goto/16 :goto_9

    :cond_20
    invoke-virtual {v12}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    invoke-static {v12, v0, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;J)Ljava/lang/Runnable;

    goto/16 :goto_9

    :goto_12
    const/16 v42, 0x0

    const/16 v43, 0xa

    const/16 v39, 0x11

    const/16 v40, 0x0

    invoke-static/range {v37 .. v43}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_13
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    move-object/from16 v12, p6

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v13, v15, v14}, Lorg/telegram/ui/Stars/StarsIntroActivity;->getTransactionTitle(IZLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v42, 0x24

    const/16 v43, 0x4

    const/16 v37, -0x1

    const/16 v38, -0x2

    const/16 v39, 0x11

    const/16 v40, 0x24

    const/16 v41, 0x0

    invoke-static/range {v37 .. v43}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v28, :cond_21

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    goto :goto_14

    :cond_21
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    :goto_14
    invoke-static {v2, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    if-eqz v28, :cond_22

    goto :goto_15

    :cond_22
    move-object/from16 v18, v47

    :goto_15
    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v3, 0x2

    aput-object v32, v5, v3

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v3, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-boolean v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-eqz v3, :cond_23

    sget v3, Lorg/telegram/messenger/R$string;->StarsRefunded:I

    :goto_16
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->appendStatus(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;

    goto :goto_17

    :cond_23
    iget-boolean v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->failed:Z

    if-eqz v3, :cond_24

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    invoke-static {v3, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lorg/telegram/messenger/R$string;->StarsFailed:I

    goto :goto_16

    :cond_24
    iget-boolean v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->pending:Z

    if-eqz v3, :cond_25

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_color_yellow:I

    invoke-static {v3, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lorg/telegram/messenger/R$string;->StarsPending:I

    goto :goto_16

    :cond_25
    :goto_17
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v42, 0x24

    const/16 v43, 0x4

    const/16 v37, -0x1

    const/16 v38, -0x2

    const/16 v39, 0x11

    const/16 v40, 0x24

    const/16 v41, 0x0

    invoke-static/range {v37 .. v43}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    if-eqz v2, :cond_28

    iget v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    if-lez v2, :cond_28

    if-eqz v28, :cond_28

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v3, Lorg/telegram/messenger/R$string;->StarsTransactionMessageFeeInfo:I

    iget v5, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    rsub-int v5, v5, 0x3e8

    invoke-static {v5}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v6, v2

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    move-wide/from16 v7, p2

    const/4 v6, 0x3

    cmp-long v4, v7, v2

    if-eqz v4, :cond_26

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_26
    move-object/from16 v5, v46

    goto :goto_18

    :cond_27
    move-object/from16 v5, v46

    goto :goto_19

    :goto_18
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->StarsTransactionMessageFeeInfoLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/16 v4, 0xa0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda22;

    invoke-direct {v3, v7, v8, v13}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda22;-><init>(JI)V

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v42, 0x24

    const/16 v43, 0x4

    const/16 v37, -0x1

    const/16 v38, -0x2

    const/16 v39, 0x11

    const/16 v40, 0x24

    const/16 v41, 0x0

    invoke-static/range {v37 .. v43}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v15, v48

    goto/16 :goto_20

    :cond_28
    move-wide/from16 v7, p2

    move-object/from16 v5, v46

    const/4 v6, 0x3

    iget-object v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    instance-of v2, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    if-nez v2, :cond_29

    if-nez v25, :cond_2a

    iget-boolean v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v2, :cond_29

    goto :goto_1a

    :cond_29
    move-object/from16 v15, v48

    goto/16 :goto_1f

    :cond_2a
    :goto_1a
    iget-object v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    goto :goto_1b

    :cond_2b
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    :goto_1b
    iget-object v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v3, :cond_2c

    const/4 v3, 0x0

    goto :goto_1c

    :cond_2c
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->received_by:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    :goto_1c
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_2d

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v4, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-static {v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v18

    const/4 v6, 0x2

    new-array v15, v6, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v18, v15, v6

    const/4 v6, 0x1

    aput-object v32, v15, v6

    invoke-static {v15}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v15, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v6, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    if-eqz v2, :cond_2e

    sget v2, Lorg/telegram/messenger/R$string;->ActionGiftStarsSubtitle:I

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v6, v1

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_2e
    sget v1, Lorg/telegram/messenger/R$string;->ActionGiftStarsSubtitleYou:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->GiftStarsSubtitleLinkName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/16 v6, 0xa0

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda26;

    move-object/from16 v15, v48

    invoke-direct {v3, v9, v15}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda26;-><init>(Landroid/content/Context;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/CharSequence;

    const/16 v18, 0x0

    aput-object v1, v4, v18

    aput-object v5, v4, v3

    const/4 v1, 0x2

    aput-object v2, v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v42, 0x24

    const/16 v43, 0x4

    const/16 v37, -0x1

    const/16 v38, -0x2

    const/16 v39, 0x11

    const/16 v40, 0x24

    const/16 v41, 0x0

    invoke-static/range {v37 .. v43}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_20

    :goto_1f
    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    goto :goto_1e

    :cond_2f
    :goto_20
    new-instance v3, Lorg/telegram/ui/Components/TableView;

    invoke-direct {v3, v9, v12}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/16 v4, 0x21

    const v18, 0x411547ae    # 9.33f

    const v20, 0x414a8f5c    # 12.66f

    if-eqz v0, :cond_44

    iget-boolean v1, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_upgrade:Z

    if-eqz v1, :cond_33

    iget v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_30

    iget v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    if-lez v0, :cond_30

    sget v0, Lorg/telegram/messenger/R$string;->StarGiftReason:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StarGiftReasonUpgrade:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/TableView$TableRowContent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;

    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;-><init>()V

    iget v10, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    iput v10, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;->msg_id:I

    invoke-static/range {p4 .. p4}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v10

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, v0, v13, v9, v12}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v10, v1, v2}, Lorg/telegram/ui/Stars/StarsController;->getUserStarGift(Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_30
    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    if-eqz v1, :cond_32

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    sget v0, Lorg/telegram/messenger/R$string;->StarGiftUpgradeGiftFrom:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, v15, v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda28;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move-object/from16 v16, v0

    move-object v0, v3

    move-wide/from16 v23, v1

    move-object v1, v10

    const/high16 v10, 0x41c00000    # 24.0f

    move/from16 v2, p4

    move-object/from16 v21, v11

    move-object v11, v3

    move-wide/from16 v3, v23

    move-object/from16 v58, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_31
    :goto_21
    move-object v10, v9

    :goto_22
    move-object v1, v12

    move v9, v13

    move-object v6, v14

    :goto_23
    move/from16 v7, v36

    const/high16 v3, 0x41c00000    # 24.0f

    const/16 v4, 0x21

    :goto_24
    const/4 v12, 0x3

    goto/16 :goto_33

    :cond_32
    move-object/from16 v58, v5

    move-object/from16 v21, v11

    const/high16 v10, 0x41c00000    # 24.0f

    move-object v11, v3

    move-object v10, v9

    move-object v1, v12

    move v9, v13

    move-object v6, v14

    move/from16 v7, v36

    const/high16 v3, 0x41c00000    # 24.0f

    goto :goto_24

    :cond_33
    move-object/from16 v58, v5

    move-object/from16 v21, v11

    const/high16 v5, 0x41c00000    # 24.0f

    move-object v11, v3

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_3b

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    sget v1, Lorg/telegram/messenger/R$string;->Gift2Gift:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda29;

    invoke-direct {v3, v9, v13, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda29;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v11, v1, v2, v3}, Lorg/telegram/ui/Components/TableView;->addRowLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_34
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v16

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-boolean v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift_resale:Z

    if-eqz v2, :cond_38

    sget v2, Lorg/telegram/messenger/R$string;->StarGiftReason:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-nez v29, :cond_36

    if-eqz v3, :cond_35

    sget v3, Lorg/telegram/messenger/R$string;->StarGiftReasonPurchase:I

    goto :goto_25

    :cond_35
    sget v3, Lorg/telegram/messenger/R$string;->StarGiftReasonSale:I

    :goto_25
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-wide/from16 v23, v0

    move-wide/from16 v26, v16

    goto :goto_28

    :cond_36
    if-eqz v3, :cond_37

    sget v3, Lorg/telegram/messenger/R$string;->StarGiftReasonSale:I

    goto :goto_26

    :cond_37
    sget v3, Lorg/telegram/messenger/R$string;->StarGiftReasonPurchase:I

    :goto_26
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_27

    :cond_38
    sget v2, Lorg/telegram/messenger/R$string;->StarGiftReason:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->StarGiftReasonTransfer:I

    goto :goto_26

    :goto_27
    move-wide/from16 v26, v0

    move-wide/from16 v23, v16

    :goto_28
    cmp-long v0, v23, v16

    if-eqz v0, :cond_39

    sget v0, Lorg/telegram/messenger/R$string;->Gift2From:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v28, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda30;

    move-object/from16 v30, v28

    move-object/from16 v31, v15

    move-wide/from16 v32, v23

    move-wide/from16 v34, v16

    invoke-direct/range {v30 .. v35}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda30;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V

    move-object v0, v11

    move/from16 v2, p4

    move-wide/from16 v3, v23

    move-object/from16 v5, v28

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_39
    cmp-long v0, v26, v16

    if-eqz v0, :cond_3a

    sget v0, Lorg/telegram/messenger/R$string;->Gift2To:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda31;

    move-object/from16 v30, v5

    move-object/from16 v31, v15

    move-wide/from16 v32, v26

    move-wide/from16 v34, v16

    invoke-direct/range {v30 .. v35}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda31;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JJ)V

    move-object v0, v11

    move/from16 v2, p4

    move-wide/from16 v3, v26

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_3a
    cmp-long v0, v23, v16

    if-nez v0, :cond_31

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    if-eqz v0, :cond_31

    iget v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    if-lez v0, :cond_31

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->toDouble()D

    move-result-wide v0

    iget-object v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->toDouble()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget v2, Lorg/telegram/messenger/R$string;->StarsTransactionFullPrice:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v11, v2, v0}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto/16 :goto_21

    :cond_3b
    iget-boolean v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->refund:Z

    if-nez v0, :cond_43

    cmp-long v0, v7, v16

    if-nez v0, :cond_3c

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    move-wide/from16 v16, v0

    goto :goto_29

    :cond_3c
    move-wide/from16 v16, v7

    :goto_29
    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v28, :cond_40

    cmp-long v0, v3, v16

    if-eqz v0, :cond_3e

    sget v0, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeFrom:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda32;

    invoke-direct {v5, v15, v14, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda32;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    if-eqz v10, :cond_3d

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {v3, v4}, Lorg/telegram/messenger/UserObject;->areGiftsDisabled(J)Z

    move-result v0

    if-nez v0, :cond_3d

    sget v0, Lorg/telegram/messenger/R$string;->Gift2ButtonSendGift:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_2a

    :cond_3d
    const/4 v10, 0x0

    :goto_2a
    new-instance v24, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-wide/from16 v26, v3

    move-object/from16 v28, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v5, v28

    move-object v6, v10

    move-wide v8, v7

    move-object/from16 v7, v24

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    goto :goto_2b

    :cond_3e
    move-wide v8, v7

    :goto_2b
    sget v0, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeTo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v15, v13}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda2;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    move-object v0, v11

    move/from16 v2, p4

    move-wide/from16 v3, v16

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_3f
    :goto_2c
    move-object/from16 v10, p0

    goto/16 :goto_22

    :cond_40
    move-wide v8, v7

    move-wide v6, v3

    cmp-long v0, v6, v16

    if-eqz v0, :cond_41

    sget v0, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeFrom:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, v15, v13}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda3;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    move-object v0, v11

    move/from16 v2, p4

    move-wide/from16 v3, v16

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_41
    sget v0, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeTo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, v15, v14, v6, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda4;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    if-eqz v10, :cond_42

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {v6, v7}, Lorg/telegram/messenger/UserObject;->areGiftsDisabled(J)Z

    move-result v0

    if-nez v0, :cond_42

    sget v0, Lorg/telegram/messenger/R$string;->Gift2ButtonSendGift:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_2d

    :cond_42
    const/4 v10, 0x0

    :goto_2d
    new-instance v17, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-wide v3, v6

    move-object/from16 v23, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;IJ[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v5, v23

    move-object v6, v10

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    goto :goto_2c

    :cond_43
    move-wide v8, v7

    goto :goto_2c

    :cond_44
    move-object/from16 v58, v5

    move-wide v8, v7

    move-object/from16 v21, v11

    const/16 v5, 0x2c

    move-object v11, v3

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    if-eqz v1, :cond_4c

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    iget-boolean v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->paid_message:Z

    if-eqz v0, :cond_46

    if-eqz v28, :cond_45

    sget v0, Lorg/telegram/messenger/R$string;->Gift2From:I

    goto :goto_2e

    :cond_45
    sget v0, Lorg/telegram/messenger/R$string;->Gift2To:I

    :goto_2e
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v15, v6, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda6;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move-object v0, v11

    move/from16 v2, p4

    move-object/from16 v16, v3

    move-wide v3, v6

    const/16 v6, 0x2c

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    if-eqz v0, :cond_3f

    iget v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    if-lez v0, :cond_3f

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->toDouble()D

    move-result-wide v0

    iget-object v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->toDouble()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget v2, Lorg/telegram/messenger/R$string;->StarsTransactionFullPrice:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v11, v2, v0}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto/16 :goto_2c

    :cond_46
    if-eqz v26, :cond_47

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    sget v0, Lorg/telegram/messenger/R$string;->StarAffiliateReason:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StarAffiliateReasonProgram:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v15, v8, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda7;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    invoke-virtual {v11, v0, v1, v2}, Lorg/telegram/ui/Components/TableView;->addRowLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    sget v0, Lorg/telegram/messenger/R$string;->StarAffiliate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, v15, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda8;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move-object v0, v11

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    sget v0, Lorg/telegram/messenger/R$string;->StarAffiliateReferredUser:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda9;

    invoke-direct {v5, v15, v6, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda9;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move-object v0, v11

    move-wide v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    sget v0, Lorg/telegram/messenger/R$string;->StarAffiliateCommission:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v14, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->starref_commission_permille:I

    invoke-static {v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto/16 :goto_2c

    :cond_47
    if-eqz v27, :cond_48

    sget v0, Lorg/telegram/messenger/R$string;->StarAffiliateReason:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v0, Lorg/telegram/messenger/R$string;->StarAffiliateReasonProgram:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda10;

    move-object v0, v3

    move/from16 v1, p4

    move-object/from16 v2, p0

    move-object v9, v3

    move-wide/from16 v3, p2

    move-object v12, v5

    move-wide v7, v6

    move-wide v5, v7

    move-wide v13, v7

    move-object v7, v15

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda10;-><init>(ILandroid/content/Context;JJ[Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v11, v10, v12, v9}, Lorg/telegram/ui/Components/TableView;->addRowLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    sget v0, Lorg/telegram/messenger/R$string;->StarAffiliateMiniApp:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, v15, v13, v14}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda12;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    move-object v0, v11

    move/from16 v2, p4

    move-wide v3, v13

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    move-object/from16 v10, p0

    move/from16 v9, p4

    move-object/from16 v6, p5

    :goto_2f
    move-object/from16 v1, p6

    goto/16 :goto_23

    :cond_48
    move-wide v13, v6

    if-eqz v25, :cond_49

    sget v0, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeFrom:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda13;

    move-object/from16 v6, p5

    move-wide v7, v13

    invoke-direct {v5, v15, v6, v7, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda13;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    move-object v0, v11

    move/from16 v2, p4

    move-wide v3, v7

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    sget v0, Lorg/telegram/messenger/R$string;->StarGiveawayPrizeTo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda14;

    move/from16 v9, p4

    invoke-direct {v5, v15, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda14;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    move-object v0, v11

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    sget v0, Lorg/telegram/messenger/R$string;->StarGiveawayReason:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StarGiveawayReasonLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, v15, v6, v7, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda15;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;J)V

    invoke-virtual {v11, v0, v1, v2}, Lorg/telegram/ui/Components/TableView;->addRowLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    sget v0, Lorg/telegram/messenger/R$string;->StarGiveawayGift:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmountString(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-object/from16 v10, p0

    goto :goto_2f

    :cond_49
    move/from16 v9, p4

    move-object/from16 v6, p5

    move-wide v7, v13

    iget-boolean v0, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->subscription:Z

    if-eqz v0, :cond_4a

    if-nez p1, :cond_4a

    sget v0, Lorg/telegram/messenger/R$string;->StarSubscriptionTo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda16;

    move-object/from16 v10, p0

    invoke-direct {v5, v15, v7, v8, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda16;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V

    :goto_30
    move-object v0, v11

    move/from16 v2, p4

    move-wide v3, v7

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    goto :goto_2f

    :cond_4a
    move-object/from16 v10, p0

    iget-boolean v0, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift:Z

    if-eqz v0, :cond_4b

    sget v0, Lorg/telegram/messenger/R$string;->Gift2To:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda17;

    invoke-direct {v5, v15, v7, v8, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda17;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V

    move-object v0, v11

    move/from16 v2, p4

    move-wide v3, v7

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionPremiumGiftDuration:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->premium_gift_months:I

    const-string v2, "Months"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto/16 :goto_2f

    :cond_4b
    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionRecipient:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda18;

    invoke-direct {v5, v15, v7, v8, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda18;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JLandroid/content/Context;)V

    goto :goto_30

    :cond_4c
    move-object/from16 v10, p0

    move v9, v13

    move-object v6, v14

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerFragment;

    if-eqz v1, :cond_4f

    iget-boolean v0, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->gift:Z

    if-eqz v0, :cond_4e

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-object/from16 v1, p6

    invoke-direct {v0, v10, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    new-instance v2, Lorg/telegram/ui/AvatarSpan;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-direct {v2, v0, v9, v3}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    if-eqz v36, :cond_4d

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionTONFromFragment:I

    goto :goto_31

    :cond_4d
    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionUnknown:I

    :goto_31
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    move-object/from16 v7, v49

    invoke-static {v7, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;I)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v5

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v8, v7}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/AvatarSpan;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v4, 0x21

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8, v7, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$10;

    move/from16 v7, v36

    invoke-direct {v2, v15, v10, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$10;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;Z)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/4 v12, 0x3

    invoke-virtual {v5, v2, v12, v8, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lorg/telegram/messenger/R$string;->StarsTransactionRecipient:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2, v0}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    goto :goto_33

    :cond_4e
    move-object/from16 v1, p6

    move/from16 v7, v36

    const/high16 v3, 0x41c00000    # 24.0f

    const/16 v4, 0x21

    const/4 v12, 0x3

    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionSource:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Fragment:I

    :goto_32
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_33

    :cond_4f
    move-object/from16 v1, p6

    move/from16 v7, v36

    const/high16 v3, 0x41c00000    # 24.0f

    const/16 v4, 0x21

    const/4 v12, 0x3

    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerAppStore;

    if-eqz v2, :cond_50

    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionSource:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->AppStore:I

    goto :goto_32

    :cond_50
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPlayMarket;

    if-eqz v2, :cond_51

    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionSource:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->PlayMarket:I

    goto :goto_32

    :cond_51
    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeerPremiumBot;

    if-eqz v0, :cond_52

    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionSource:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->StarsTransactionBot:I

    goto :goto_32

    :cond_52
    :goto_33
    iget-object v0, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransactionPeer;

    if-eqz v2, :cond_5b

    iget v2, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_5b

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v13

    if-eqz p1, :cond_53

    move-wide/from16 v13, p2

    :cond_53
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v4, v13

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_5b

    new-instance v2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v2, v10, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v2, v4, v5, v8, v12}, Landroid/view/View;->setPadding(IIII)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    new-instance v4, Landroid/text/SpannableStringBuilder;

    move-object/from16 v5, v47

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_58

    iget-object v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 p1, v5

    new-instance v5, Lorg/telegram/ui/ImageReceiverSpan;

    invoke-direct {v5, v2, v9, v3}, Lorg/telegram/ui/ImageReceiverSpan;-><init>(Landroid/view/View;IF)V

    instance-of v3, v12, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_54

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/high16 v16, 0x41c00000    # 24.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    move/from16 v36, v7

    const/4 v7, 0x1

    invoke-static {v3, v10, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v10, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v10}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    :goto_35
    move-object/from16 v27, v3

    goto :goto_36

    :cond_54
    move/from16 v36, v7

    const/4 v7, 0x1

    const/high16 v16, 0x41c00000    # 24.0f

    instance-of v3, v12, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v3, :cond_55

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v3, v10, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v7, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v7}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    goto :goto_35

    :cond_55
    const/16 v27, 0x0

    :goto_36
    if-eqz v27, :cond_56

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ImageReceiverSpan;->setRoundRadius(F)V

    iget-object v3, v5, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v28, "24_24"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    new-instance v3, Landroid/text/SpannableString;

    const-string v7, "x"

    invoke-direct {v3, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v10, 0x21

    const/4 v12, 0x0

    invoke-virtual {v3, v5, v12, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v3, v58

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x1

    add-int/2addr v8, v5

    :goto_37
    const/4 v5, 0x3

    goto :goto_38

    :cond_56
    move-object/from16 v3, v58

    goto :goto_37

    :goto_38
    if-lt v8, v5, :cond_57

    goto :goto_39

    :cond_57
    move-object/from16 v10, p0

    move-object/from16 v5, p1

    move-object/from16 v58, v3

    move/from16 v7, v36

    const/high16 v3, 0x41c00000    # 24.0f

    goto/16 :goto_34

    :cond_58
    move/from16 v36, v7

    move-object/from16 v3, v58

    :goto_39
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_59

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_3a
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3b

    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v57

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->msg_id:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :goto_3b
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0, v15, v13, v14, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda19;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;JLorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)V

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$11;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$11;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda20;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->reaction:Z

    if-eqz v0, :cond_5a

    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionMessage:I

    goto :goto_3c

    :cond_5a
    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionMedia:I

    :goto_3c
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v2}, Lorg/telegram/ui/Components/TableView;->addRowUnpadded(Ljava/lang/CharSequence;Landroid/view/View;)Landroid/widget/TableRow;

    goto :goto_3d

    :cond_5b
    move/from16 v36, v7

    :goto_3d
    iget-object v0, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    if-nez v25, :cond_5d

    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionID:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x19

    if-le v3, v4, :cond_5c

    const/16 v3, 0x9

    goto :goto_3e

    :cond_5c
    const/16 v3, 0xa

    :goto_3e
    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda21;

    invoke-direct {v4, v15, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda21;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v11, v0, v2, v3, v4}, Lorg/telegram/ui/Components/TableView;->addRowMonospaced(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_5d
    iget-boolean v0, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip:Z

    if-eqz v0, :cond_5e

    iget v0, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip_number:I

    if-lez v0, :cond_5e

    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionFloodskipNumberName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->floodskip_number:I

    const-string v3, "StarsTransactionFloodskipNumber"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    :cond_5e
    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionDate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget v5, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    int-to-long v7, v5

    const-wide/16 v12, 0x3e8

    mul-long v7, v7, v12

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget v7, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->date:I

    int-to-long v7, v7

    mul-long v7, v7, v12

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v7, v5

    const/4 v3, 0x1

    aput-object v4, v7, v3

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    iget-object v0, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v0, :cond_60

    iget-boolean v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v3, :cond_5f

    invoke-static {v11, v9, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->addAvailabilityRow(Lorg/telegram/ui/Components/TableView;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_5f
    iget-object v0, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v3, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->description:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/TableView;->addFullRow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/TableView$TableRowFullContent;

    :cond_60
    const/high16 v26, 0x41800000    # 16.0f

    const/16 v27, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/high16 v24, 0x41800000    # 16.0f

    const/high16 v25, 0x41880000    # 17.0f

    invoke-static/range {v22 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    move-object/from16 v3, v21

    invoke-virtual {v3, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/16 v4, 0x20

    and-int/2addr v0, v4

    if-eqz v0, :cond_61

    sget v0, Lorg/telegram/messenger/R$string;->StarsTransactionTONDate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget v7, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_date:I

    int-to-long v7, v7

    mul-long v7, v7, v12

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    new-instance v7, Ljava/util/Date;

    iget v8, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->transaction_date:I

    int-to-long v8, v8

    mul-long v8, v8, v12

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v5, v7, v4

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    :cond_61
    if-nez v36, :cond_62

    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionTOS:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda23;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda23;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3f

    :cond_62
    move-object/from16 v2, p0

    :goto_3f
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget v1, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-eqz v1, :cond_63

    sget v1, Lorg/telegram/messenger/R$string;->StarsTransactionViewInBlockchainExplorer:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :goto_40
    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_41

    :cond_63
    const/4 v4, 0x0

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_40

    :goto_41
    const/high16 v11, 0x41800000    # 16.0f

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x30

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v1, v19

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v15, v3

    iput-boolean v3, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    iget v1, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->flags:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-eqz v1, :cond_64

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, v2, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda24;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;)V

    :goto_42
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    goto :goto_43

    :cond_64
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, v15}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda25;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    goto :goto_42

    :goto_43
    aget-object v1, v15, v0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_65

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_65

    aget-object v2, v15, v0

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_65
    aget-object v1, v15, v0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    aget-object v0, v15, v0

    :goto_44
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateBalance()V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v2

    const v3, 0x3f28f5c3    # 0.66f

    const/16 v4, 0x20

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->StarsBuyMore:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->StarsBuy:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->overall_revenue:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->updateButtonsLayouts(ZZ)V

    return-void
.end method

.method private updateButtonsLayouts(ZZ)V
    .locals 4

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtons:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Z)V

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    const/16 v2, 0x8

    :cond_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public attachedTransactionsLayout()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

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

    new-instance v9, Lorg/telegram/ui/Stars/StarsIntroActivity$5;

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda42;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v6, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$5;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v9
.end method

.method protected createContentView()Lorg/telegram/ui/GradientHeaderActivity$ContentView;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$NestedFrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$NestedFrameLayout;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public createParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x4b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    iput-boolean v10, v0, Lorg/telegram/ui/GradientHeaderActivity;->useFillLastLayoutManager:Z

    const/high16 v1, 0x436e0000    # 238.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/GradientHeaderActivity;->particlesViewHeight:I

    new-instance v11, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;-><init>(Landroid/content/Context;IZJILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$1;

    invoke-direct {v1, v0, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$1;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->emptyLayout:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/GradientHeaderActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v3, 0x2

    invoke-direct {v1, v9, v2, v3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;II)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    iput v4, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient2:I

    iput v4, v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v4, v0, Lorg/telegram/ui/GradientHeaderActivity;->particlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/16 v16, 0x0

    const/high16 v17, 0x41c00000    # 24.0f

    const/16 v11, 0xbe

    const/high16 v12, 0x433e0000    # 190.0f

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/high16 v15, 0x42000000    # 32.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lorg/telegram/messenger/R$string;->TelegramStars:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$string;->TelegramStarsInfo2:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda33;

    invoke-direct {v5, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda33;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->aboveTitleView:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Lorg/telegram/ui/GradientHeaderActivity;->configureHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v1, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object v4, v0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v1, v0, Lorg/telegram/ui/GradientHeaderActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda34;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance v1, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    iget-object v4, v0, Lorg/telegram/ui/GradientHeaderActivity;->contentView:Landroid/widget/FrameLayout;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v10, v10, v10, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v10, v2, v10}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v7, "S"

    invoke-direct {v4, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    new-instance v4, Lorg/telegram/ui/ImageReceiverSpan;

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/high16 v11, 0x42280000    # 42.0f

    invoke-direct {v4, v7, v8, v11}, Lorg/telegram/ui/ImageReceiverSpan;-><init>(Landroid/view/View;IF)V

    iget-object v7, v4, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v8, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v12, Lorg/telegram/messenger/R$raw;->star_reaction:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "s"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-direct {v8, v12, v13, v14, v11}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v4, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ImageReceiverSpan;->enableShadow(Z)V

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lorg/telegram/ui/ImageReceiverSpan;->translate(FF)V

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceIcon:Landroid/text/SpannableStringBuilder;

    const/16 v8, 0x21

    invoke-virtual {v7, v4, v10, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v16, 0x41c00000    # 24.0f

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x42200000    # 40.0f

    const/16 v13, 0x11

    const/high16 v14, 0x41c00000    # 24.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTitleView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v4, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTitleView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->YourStarsBalance:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTitleView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->starBalanceTitleView:Landroid/widget/TextView;

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$2;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$2;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v7, v11}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const-string v7, ""

    invoke-virtual {v5, v7, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda35;

    invoke-direct {v7, v0, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->oneButtonsLayout:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->buyButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v11, 0x30

    const/16 v12, 0x77

    invoke-static {v6, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$3;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$3;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v6, v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->topupButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string v6, "x  "

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v11, Lorg/telegram/messenger/R$drawable;->mini_topup:I

    invoke-direct {v7, v11, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    invoke-virtual {v5, v7, v10, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v7, Lorg/telegram/messenger/R$string;->StarsTopUp:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->topupButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v7, v5, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->topupButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v7, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda36;

    invoke-direct {v7, v0, v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->topupButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/4 v11, -0x1

    const/16 v12, 0x30

    const/high16 v13, 0x41880000    # 17.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v7, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v7, Lorg/telegram/messenger/R$drawable;->mini_stats:I

    invoke-direct {v6, v7, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    invoke-virtual {v5, v6, v10, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v3, Lorg/telegram/messenger/R$string;->StarsStats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v3, v5, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v5, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda37;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->twoButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->withdrawButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v17, 0x0

    invoke-static/range {v11 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    const/high16 v16, 0x41a00000    # 20.0f

    const/16 v17, 0x0

    const/high16 v12, 0x42400000    # 48.0f

    const/16 v13, 0x11

    const/high16 v14, 0x41a00000    # 20.0f

    const/high16 v15, 0x41880000    # 17.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v4, v10, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v4, "G  "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v5, Lorg/telegram/messenger/R$drawable;->menu_stars_gift:I

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v3, v4, v10, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v4, Lorg/telegram/messenger/R$string;->TelegramStarsGift:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v4, v3, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda38;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->updateBalance()V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Stars/BotStarsController;->preloadStarsStats(J)V

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object v3

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v1

    iget-wide v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    if-eqz v3, :cond_1

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->overall_revenue:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v2, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity;->updateButtonsLayouts(ZZ)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->saveScrollPosition()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

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

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    iget-boolean p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->hadTransactions:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p3

    if-eq p2, p3, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->hadTransactions:Z

    invoke-virtual {p0}, Lorg/telegram/ui/GradientHeaderActivity;->saveScrollPosition()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

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

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

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
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->updateBalance()V

    :cond_7
    :goto_2
    return-void
.end method

.method protected drawActionBarShadow()Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->attachedTransactionsLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->getHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asFullyCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->balanceLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->giftButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->starsGiftsEnabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->starrefConnectAllowed:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    sget v3, Lorg/telegram/messenger/R$drawable;->filled_earn_stars:I

    sget v4, Lorg/telegram/messenger/R$string;->UserAffiliateProgramRowTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/ChatEditActivity;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->UserAffiliateProgramRowText:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x4

    invoke-static {v6, v2, v3, v4, v5}, Lorg/telegram/ui/bots/AffiliateProgramFragment$ColorfulTextCell$Factory;->as(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->hasSubscriptions()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lorg/telegram/messenger/R$string;->StarMySubscriptions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v2, p2, Lorg/telegram/ui/Stars/StarsController;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p2, Lorg/telegram/ui/Stars/StarsController;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView$Factory;->asSubscription(Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->isLoadingSubscriptions()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x21

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->didFullyLoadSubscriptions()Z

    move-result v1

    if-nez v1, :cond_6

    sget v1, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    sget v2, Lorg/telegram/messenger/R$string;->StarMySubscriptionsExpand:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x3

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->hadTransactions:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->transactionsLayout:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFullscreenCustom(Landroid/view/View;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    :goto_4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->emptyLayout:Landroid/view/View;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    goto :goto_4

    :goto_5
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

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

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
    .locals 4

    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->expanded:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->expanded:Z

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto/16 :goto_1

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->getGiftOptions()Ljava/util/ArrayList;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(IJLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    goto/16 :goto_1

    :cond_1
    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->loadSubscriptions()V

    goto :goto_0

    :cond_2
    const/4 v0, -0x4

    if-ne p2, v0, :cond_4

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

    goto :goto_1

    :cond_4
    const-class p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    if-eqz p2, :cond_6

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda53;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;Lorg/telegram/ui/Components/UItem;)V

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Stars/StarsController;->buy(Landroid/app/Activity;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Lorg/telegram/messenger/Utilities$Callback2;)V

    goto :goto_1

    :cond_5
    const-class p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView$Factory;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showSubscriptionSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_6
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onPause()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/GradientHeaderActivity;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    return-void
.end method
