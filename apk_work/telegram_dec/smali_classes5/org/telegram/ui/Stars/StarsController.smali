.class public Lorg/telegram/ui/Stars/StarsController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;,
        Lorg/telegram/ui/Stars/StarsController$MessageId;,
        Lorg/telegram/ui/Stars/StarsController$GiftsList;,
        Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;,
        Lorg/telegram/ui/Stars/StarsController$IGiftsList;
    }
.end annotation


# static fields
.field private static volatile Instance:[[Lorg/telegram/ui/Stars/StarsController;

.field private static final lockObjects:[[Ljava/lang/Object;


# instance fields
.field public balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

.field private balanceLoaded:Z

.field private balanceLoading:Z

.field public final birthdaySortedGifts:Ljava/util/ArrayList;

.field public final currentAccount:I

.field private currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

.field public currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

.field private final endReached:[Z

.field public final giftLists:Landroid/util/LongSparseArray;

.field private giftOptions:Ljava/util/ArrayList;

.field private giftOptionsLoaded:Z

.field private giftOptionsLoading:Z

.field private giftPreviews:Lj$/util/concurrent/ConcurrentHashMap;

.field public final gifts:Ljava/util/ArrayList;

.field private giftsCacheLoaded:Z

.field public giftsHash:I

.field public giftsLoaded:Z

.field public giftsLoading:Z

.field public giftsRemoteTime:J

.field private giveawayOptions:Ljava/util/ArrayList;

.field private giveawayOptionsLoaded:Z

.field private giveawayOptionsLoading:Z

.field public final insufficientSubscriptions:Ljava/util/ArrayList;

.field private insufficientSubscriptionsLoading:Z

.field public final justAgreedToNotAskDialogs:Lj$/util/concurrent/ConcurrentHashMap;

.field private lastBalanceLoaded:J

.field private final loading:[Z

.field public minus:J

.field private final offset:[Ljava/lang/String;

.field private options:Ljava/util/ArrayList;

.field private optionsLoaded:Z

.field private optionsLoading:Z

.field private paymentFormOpened:Z

.field private final postponedPaidMessages:Lj$/util/concurrent/ConcurrentHashMap;

.field public final sendingMessagesCount:Lj$/util/concurrent/ConcurrentHashMap;

.field private final sendingPaidMessagesIds:Ljava/util/Set;

.field public final sortedGifts:Ljava/util/ArrayList;

.field public final subscriptions:Ljava/util/ArrayList;

.field public subscriptionsEndReached:Z

.field public subscriptionsLoading:Z

.field public subscriptionsOffset:Ljava/lang/String;

.field public final ton:Z

.field public final transactions:[Ljava/util/ArrayList;

.field public final transactionsExist:[Z


# direct methods
.method public static synthetic $r8$lambda$-RZjEMxvYCtyuSt_61udmFKLPfw(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$80(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0CbP5pj7F7P1HDfgSiiePMUv7Lo(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$50(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0bmoQrHCgPb1sopt2TC7WXuHkEA(Lorg/telegram/ui/Stars/StarsController;ILorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadTransactions$17(ILorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1i1nlBO3X5J4gM1KgJFtNOWaWEE(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$38(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3pUoPbVGZsjlMj5QTo2KToh9AEc(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buy$30(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$41Zk51GUJYyGjQ9NhlXqEhewH5M(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$79(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4N2EMp1bWgnkKHL8WX9a8ax88o0(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$42(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4lsX7SSqtstrM0vD2KRuA8x8Sps(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$40(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5LJK0nJQfKZ1qdJ3Q9pENaAIdQU(Lorg/telegram/ui/Stars/StarsController;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$getOptions$2(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$67sUnhKcsc6RgeV2cBQjiis7CxQ(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$getPaidRevenue$148(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6JEx8_TrfbXFHKbKcMqJfI7YAVM(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$getOptions$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6jX9-Dab3_DzikP78lhmkp-Rwv8(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$getResellingGiftForm$136(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6oxdMonxiNsfmY_HYNH-PjtUF7I(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$90(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$71M4iF328AGMmc4MleP8xrfpq1Q(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadStarGifts$106(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7FYlwkzBQ6cxAtQ8PJltXft8vzs(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyPremiumGift$121(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8RIADxFUJE6nR9745iR3r7cnYBg(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadStarGifts$102(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8S9fwiWKQY64lRcnVMPHf2SOWYU(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$pay$64(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$91WsDiYUJPjolDzHHV177eWySrw(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$56(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9g2PRtNLFoFx8i07jM4c9fOJ04c(Lorg/telegram/ui/Stars/StarsController;[ZJ[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/messenger/Utilities$Callback;II[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Stars/StarsController;->lambda$getStarGift$113([ZJ[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/messenger/Utilities$Callback;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BOnj8DLsNxJahnVyGG36KXgFA_U(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadStarGifts$103(Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BbneXcS265i5fG2WwiwTs5BnoVA(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/String;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$92(Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/String;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BsMauLOcbyhrhsDCcNl4lgwEei0(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;IJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$saveStarGiftsCached$110(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bt5QekNXuVf6Q6STPhcXwlZhQQA(Lorg/telegram/ui/Stars/StarsController;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$beforeSendingMessage$152(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$CF66qXDDwdTTuqetn0vk8E4mPJA(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$62(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CNQ41l37SdswbgSGQ-7busCmyUU(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p14}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyStarGift$131(Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DErIybbYfQ854cklBZI8aDA5518(Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$buy$35(Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DRcRo4H7xRsZHcu9fbSAa2BDsy8(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadSubscriptions$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E2pgljsMpDTlGFSzrWlQyTVBVlc(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$getGiftOptions$9(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EOwRo-6RAibLoJMYmUqnoGU6u10(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$getStarGiftsRemote$111(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EuTKw3x_fs3wYPpUoRfB97rlpD8(Lorg/telegram/ui/Stars/StarsController;Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;Lcom/android/billingclient/api/BillingResult;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$48(Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;Lcom/android/billingclient/api/BillingResult;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FCCrCbIFwIK9MP9FxmwCAw9tliw(Lorg/telegram/ui/Stars/StarsController;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$getGiveawayOptions$12(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FRZeScknA6YrbNU1kriAH6bC2Vk(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;[ZILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Stars/StarsController;->lambda$openPaymentForm$68([ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;[ZILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FRim_ui_250cBn8YUlO_9lsnwXQ(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$buy$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FrIE6lBmfM1k7us_BodGqm1lTLQ(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$getResellingGiftForm$134(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$G9VmJLYg7_ZH0FRGVlTkjvt-1bA(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyResellingGift$140(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GGFoqgCTDi67QW1O8m9QU0_l6Ps(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyResellingGift$137(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$GItNK2oXeWkweaBadMq7oAZDbbc(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadInsufficientSubscriptions$21(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GU6eooh1RQsjm2A9ue07t4ruWvQ(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$58(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GVqWnHWIjEmLvTniSF7wHbjMeo8()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Stars/StarsController;->lambda$showStarsTopupInternal$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$Gbvf9DH0oJ5VsAnCO-7T-SsH5P4(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$49(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HWn2u8BUYnNcfcAHVVah92tcs4Y(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$41(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HXx1EzrECNvylgkPWkHrqZOEGNY(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$55(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HvmJ62FicKm0RQQVOBWgWPj4zdg(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$getOptions$4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ITW2Iik_5IqionYfy7LcMZuGRcw(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyResellingGift$142(Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IkZLdQGnMoBlO4kw7LQkpSbq4kY(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$54(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J8fuZu3TkOxx51WJIp3a5Afzpw0(Lorg/telegram/ui/Stars/StarsController;[ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$89([ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JOmo2jJGWZwvx-npyxfGlcSKZAs(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$getResellingGiftForm$135(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JQtYXydnbvYbfSPPiy7NMNT1UkI(Lorg/telegram/ui/Stars/StarsController;Ljava/lang/Runnable;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$openPaymentForm$66(Ljava/lang/Runnable;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JXQG-lRm1HTbT0yavfgmbYhrmng(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$52(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jp_pZ0iyoWyrcwBpITHC6YsXiM4(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$84(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JzUJAo6YXgqIt22IsdThn_DQ6lU(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyStarGift$123(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L1Im6MTpBfr9oKzasG9SqKi0FlI(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyStarGift$132(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LJA61Htjvl--sb7cft-FmMy3Rd8(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadStarGifts$101(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ldtw7jCqG_FC_pi9idOvf3i9oYA(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$getStarGiftsRemote$112(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M6_mLfFCWVXOn1xGYLFvT2meKsY(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyStarGift$128(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MJdSoWK4CTwte4cus4ccMb8rD-8(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadInsufficientSubscriptions$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MMWtfYJBPiAUTyzKvw5X7ukwj6I(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadStarGifts$104(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MuwfEWSST-OAT5rSjAcAunaYPTQ(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessageObject;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputInvoice;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p15}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$86(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessageObject;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputInvoice;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N4Q4pfKNiiMlcRy-DII8I9qqz4Y(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buy$34(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N82GEYp3BvEwTa0iV0yywKpdhxo(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessageObject;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputInvoice;JLorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p15}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$85(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessageObject;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputInvoice;JLorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NmzP04uKlI6aUI9IW1aocwMcmCo(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyResellingGift$139(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ORTyUYwwiux6gPqSiF14ITk8l0U(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyPremiumGift$122(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PQN-sam9xP1WQU53sMyKAJHppp0(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyStarGift$124([ZLorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PTFsip6v49tfC3_Z0SWdmaRCQyc(Lorg/telegram/ui/Stars/StarsController;[ZJLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyPremiumGift$116([ZJLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QEvEEyUL6sSBRUtpNRsU7uZZ2d8(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;JJZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsController;->lambda$stopPaidMessages$149(Lorg/telegram/tgnet/TLObject;JJZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QPuFJ6ifrK_25Bjgcttx4BfPUjo(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p14}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyStarGift$130(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QUXqqFn5RfiPGM1aldJNCXrri_w(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$updateMediaPrice$94(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qobo3ysRaIGdmaNh6nsqCdiX_R4(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$getGiveawayOptions$14(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QyeXIYYWo68_mwcW4Tp3-NZSXNU(Lorg/telegram/ui/Stars/StarsController;Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Lcom/android/billingclient/api/BillingResult;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$61(Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Lcom/android/billingclient/api/BillingResult;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RDudJPa6DBaAEl1U8xbN5ZNekVQ(Lorg/telegram/ui/Stars/StarsController;Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$beforeSendingFinalRequest$153(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$STvw91Nl1iUIyfvmTuimHnU7nsM(Lorg/telegram/messenger/Utilities$Callback3;Ljava/util/ArrayList;IJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$getStarGiftsCached$108(Lorg/telegram/messenger/Utilities$Callback3;Ljava/util/ArrayList;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sa4se0wMPExGS1bSwo9z7ofUhbs(Lorg/telegram/ui/Stars/StarsController;JJZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsController;->lambda$stopPaidMessages$150(JJZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SgzQxyLplUyP3m1plPBcfwQZe6o(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyPremiumGift$120(Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SqW43CU9X5rkmJ3zKigPy_81PWY(Lorg/telegram/ui/Stars/StarsController;J[ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/Stars/StarsController;->lambda$openPaymentForm$71(J[ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;ILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T6t5kJP4MDEAl-bMFZ889IevwSM(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$81([ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TH4WPTAX62ZDRWN6kpStZqRLvxs(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$getUserStarGift$146(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TgT3MynLYPKE6ZVb0tkBZKyVo_E(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyResellingGift$138([ZLorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$URwfflcKYUwRheceH-B4mKvlQYc(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$buy$28(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UWon6LcgZn-ftrsCWmL7Ghso3DE(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$getOptions$5(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ule_wszzFKoAau6BDrXPpC2leo8(Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Ljava/util/List;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$60(Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Ljava/util/List;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Us9pnX4ICTEIGHoYchoexwVRQpM(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadStarGifts$100(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Vs_ywekFO1Ckzhs1kuEDghnu2GI(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$83(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XR9EsXeH550JhyzqVdx4zkR-fw8(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$getGiftOptions$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YipJ_lNDMZwm5SSSXbtnnyZFex0(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyPremiumGift$118(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z3IUMcJD6ICp3OAQh79f9ZaY7nU(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$getGiftOptions$10(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZOpfiq4HTYapQjLnzatqZWszlsM(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$getGiveawayOptions$15(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_CaaQE60qTIO-9s-LAkjRqiU8go()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Stars/StarsController;->lambda$showStarsTopupInternal$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$a2qcG_CF3BQhoiP7hSQh56K6RdQ(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadStarGifts$105(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aUXHaEjBJoTRLw17pXrAHfsMUDo(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$37(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aX5YnyaCL8sahsfWpDRqQS4Ffuc(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$getStarGiftsCached$109(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback3;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aYsmyMnEjMg7MiWuBLzaPs9t8Bg(Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Ljava/util/List;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$47(Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Ljava/util/List;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b7n4Xkga8tF3q667jc3QykwqdNI(Lorg/telegram/tgnet/TLObject;Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$46(Lorg/telegram/tgnet/TLObject;Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dDVmgm-PFHBhm3NQ591YnR9aR8s(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$openPaymentForm$72([ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$deJyltirXToTnmOnXJMSLHPFZRA(Lorg/telegram/messenger/Utilities$Callback;[ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$82(Lorg/telegram/messenger/Utilities$Callback;[ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eEu9W2xMXiItx0hDmsXYC1aIeN0(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$39(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eZZ3YfnlrB8Rhdh9_JE3qe4QHrA(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buy$29(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eg3uiHI8e_tLwG9HJYQ0IHgdm1Q(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$getBalance$0(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$epO9vC2rP7V1A3hOQ8jrQFbUOok(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback;[Z[ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$openPaymentForm$69(Lorg/telegram/messenger/Utilities$Callback;[Z[ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fAkLQbO5Aqt9MxR9Nu4eZawjuw8(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$getGiveawayOptions$13(Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fLsSVWbKVHXOcWUdry_JmhBQask(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$buy$36(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fRQzQCOIx20WDslf6AR0j5Yo4F4(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$45(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fRendxPcUDz5_yMV2wx4wdPgGMQ(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$subscribeTo$78([ZLorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fXJcu2qs2wlpY-9WM2rbVqxxwlQ(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyResellingGift$141(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$flACazvr-JHdB4UgEvu7ji4HAfQ(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$getStarGiftPreview$143(Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fo7h6XLQYPMxbo8Y0QmL04CzFMA(Lorg/telegram/ui/Stars/StarsController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$pay$65(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$g2Yu4hA79lPjHRDzxDUjcEH5u2I(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$buy$31(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gF8ltFeuI57iYH_Gifz-SnPd6VE(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$pay$63(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h9YnBLbWJreqUu_hoKaVDjDWfOo(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyPremiumGift$119(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hJCd3LtosTWvkCE3rKPfiqMbzxc(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$sendPaidReaction$98(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hsqTHx_ys9IlI4ex42YSj7USV5M(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$44(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j2kZ3-TUVuqEfHIbcjteQk233Uk(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadSubscriptions$19(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jB3uWSbVFhI6C4YE7w1k_ZogJk8(Lorg/telegram/ui/Stars/StarsController;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$getBalance$1(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jEBDH9KYUsN2YaBlBVAMkOI1ZDo(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$51(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jGAzhtKysss8v4OnxeOTnjv0Tp4(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$sendPaidReaction$99(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jrXc0sNvoUY9F9rtaL-pzfu-CEo(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$91(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kbAD7BpEa74bhP6cw7ZRffBjcCw(Lorg/telegram/ui/Stars/StarsController;[ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;[ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsController;->lambda$subscribeTo$74([ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;[ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kiFbuDeLtfLxTFNKSyshr7haojU(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/tl/TL_stars$StarGifts;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadStarGifts$107(Lorg/telegram/tgnet/tl/TL_stars$StarGifts;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lpDexVxIhqG0MCvTdMrK8ad0mrY(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyStarGift$133(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mgTD02bkLunGcg52Og0OFxe2Fl4(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$getUserStarGift$145(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nG0zK4QkjDCJo3pETctNU0vmKhI(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGift$43(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nadFl9CkQFfHIYek7Zj3-B51CGo(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyStarGift$125(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o3rsUqG2k0w1hFkXcP03hws9edI(Lorg/telegram/ui/Stars/StarsController;ILorg/telegram/messenger/Utilities$Callback;[ZLorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$openPaymentForm$70(ILorg/telegram/messenger/Utilities$Callback;[ZLorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p5_YgKj2tyzgcCbCSeGMUID4Gy4(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyStarGift$129(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$qE9Zs7WyGEKPaMBs3-dblGFThSk(Lorg/telegram/tgnet/TLObject;Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$59(Lorg/telegram/tgnet/TLObject;Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qQaSoh4tsDlXULA6tHmBOxJ7qqw(Lorg/telegram/messenger/Utilities$Callback2;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$buy$32(Lorg/telegram/messenger/Utilities$Callback2;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rNofGyji6emKcqkdemp_5_zNgOs(Lorg/telegram/ui/Stars/StarsController;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$loadTransactions$18(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s-7R69qiUn6Ln9T19z4-bwvx0HY(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarsController;->lambda$updateMediaPrice$95(Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sX6keYetb5L2e1ZX7Bvp_YppqqQ(Lorg/telegram/ui/Stars/StarsController;JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$getStarGiftPreview$144(JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$siQ4nEhnubXG2m33E6fPnGuzL5s(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyPremiumGift$117(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tj1ESstrX9Zd2qx9NoxPX6tjQQ4(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buy$33(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tqy42fpvzOBY6_NH5yWEoodkogw(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$getPaidRevenue$147(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uXH8rQE2M6SGRR7Olan2U9YZxt4(Lorg/telegram/ui/Stars/StarsController;ZLjava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$beforeSendingMessage$151(ZLjava/util/HashSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uoBewVkLtm0TZ5i1ukNhA4c3qik(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyPremiumGift$115(Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v4TRXFP4gJcTOzhWTOPLUVS1nhk(Lorg/telegram/ui/Stars/StarsController;[Z[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$getStarGift$114([Z[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhRt34eLrCGVvMcX2z3ExcJ1rdE(Lorg/telegram/ui/Stars/StarsController;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$getGiftOptions$7(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w3jBTeH02jGEJ4ohTYgkH7wtkUU(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$getOptions$3(Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w5Ky-g7LhyEWFTO-58ygUdFZPKY(Lorg/telegram/ui/Stars/StarsController;Ljava/lang/Runnable;ZJILorg/telegram/messenger/MessageObject;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Stars/StarsController;->lambda$updateMediaPrice$97(Ljava/lang/Runnable;ZJILorg/telegram/messenger/MessageObject;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wJQar96j6YtvG_3jhJiROy7mhts(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$buy$26(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wNJonyjdy-9Z4FZ9RC6-80nAQhM(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$88(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wm29Spc6NQ_z3WvYoJAQsgNG3PY(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$updateMediaPrice$93(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x5SfXJ4lmsTW7j2KOiyeVeUoOyc(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyStarGift$126(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xDn315W0NC2tnKniVlDn--ecfB8(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$57(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yEd-1V-7_3rbDrgkOKE-bzrjriM(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->lambda$getGiftOptions$8(Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yV6q7CdJK6WXDtnzZld0gtRFjbE(Lorg/telegram/messenger/Utilities$Callback;[ZLorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$subscribeTo$76(Lorg/telegram/messenger/Utilities$Callback;[ZLorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2Cz6VDLPoS8iBsgp4ssRzpFdH4(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyStarGift$127(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z7xBlRzIInDwczCXov2fXx3zRjQ(Lorg/telegram/ui/Stars/StarsController;Landroid/app/Activity;JLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$showStarsTopup$23(Landroid/app/Activity;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zHrlS10JfmXFgJaYqG_4POoUuEk(Lorg/telegram/ui/Stars/StarsController;JI[ZLorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Stars/StarsController;->lambda$subscribeTo$77(JI[ZLorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zKHmMPyFpZ3ZGocqVqOpug9MBVg(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarsController;->lambda$buyGiveaway$53(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zSf1Ixy5O01ZT_aMdOi-A1Xo-0w(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->lambda$getGiveawayOptions$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zZFuAwHulTIC84UqBuyIl9rmHug(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback;[Z[ZLorg/telegram/messenger/Utilities$Callback2;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$subscribeTo$75(Lorg/telegram/messenger/Utilities$Callback;[Z[ZLorg/telegram/messenger/Utilities$Callback2;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zZquM3yVVoCgyvKEhybrB3BleR0(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;ZJILorg/telegram/messenger/MessageObject;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Stars/StarsController;->lambda$updateMediaPrice$96(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;ZJILorg/telegram/messenger/MessageObject;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$zcOFQ6YN5Xq-O0Jcn6o9mWXitk0(Lorg/telegram/ui/Stars/StarsController;[ZILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarsController;->lambda$openPaymentForm$67([ZILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zhvuPNrZ2590ovDki8ChEu4ceCc(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->lambda$payAfterConfirmed$87(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$znJy1AHu4aZaErIcGD--MC8oLPo([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->lambda$subscribeTo$73([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v0, v1, v4

    const-class v5, Lorg/telegram/ui/Stars/StarsController;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/telegram/ui/Stars/StarsController;

    sput-object v1, Lorg/telegram/ui/Stars/StarsController;->Instance:[[Lorg/telegram/ui/Stars/StarsController;

    new-array v1, v0, [I

    aput v3, v1, v2

    aput v0, v1, v4

    const-class v2, Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    sput-object v1, Lorg/telegram/ui/Stars/StarsController;->lockObjects:[[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    sget-object v5, Lorg/telegram/ui/Stars/StarsController;->lockObjects:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/util/ArrayList;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    iput-object v4, p0, Lorg/telegram/ui/Stars/StarsController;->transactions:[Ljava/util/ArrayList;

    new-array v0, v3, [Z

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->transactionsExist:[Z

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->offset:[Ljava/lang/String;

    new-array v0, v3, [Z

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->loading:[Z

    new-array v0, v3, [Z

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->endReached:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->insufficientSubscriptions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->sortedGifts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->birthdaySortedGifts:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftLists:Landroid/util/LongSparseArray;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftPreviews:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->justAgreedToNotAskDialogs:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->sendingMessagesCount:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->sendingPaidMessagesIds:Ljava/util/Set;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->postponedPaidMessages:Lj$/util/concurrent/ConcurrentHashMap;

    iput p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    iput-boolean p2, p0, Lorg/telegram/ui/Stars/StarsController;->ton:Z

    return-void
.end method

.method private bulletinError(Ljava/lang/String;)V
    .locals 5

    .line 0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    :goto_0
    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private bulletinError(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V
    .locals 0

    .line 0
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Ljava/lang/String;)V

    return-void
.end method

.method public static findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static findAttributes(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getAllowedPaidStars(Lorg/telegram/tgnet/TLObject;)J
    .locals 4

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->allow_paid_stars:J

    return-wide v0

    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->allow_paid_stars:J

    return-wide v0

    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->allow_paid_stars:J

    return-wide v0

    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->allow_paid_stars:J

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0

    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->allow_paid_stars:J

    return-wide v0

    :cond_4
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getFormStarsPrice(Lorg/telegram/tgnet/TLRPC$PaymentForm;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getInstance(I)Lorg/telegram/ui/Stars/StarsController;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(ILorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/ui/Stars/StarsController;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;
    .locals 3

    .line 0
    sget-object v0, Lorg/telegram/ui/Stars/StarsController;->Instance:[[Lorg/telegram/ui/Stars/StarsController;

    aget-object v0, v0, p1

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Stars/StarsController;->lockObjects:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    aget-object v1, v0, p0

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/ui/Stars/StarsController;->Instance:[[Lorg/telegram/ui/Stars/StarsController;

    aget-object v0, v0, p1

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Stars/StarsController;->Instance:[[Lorg/telegram/ui/Stars/StarsController;

    aget-object v0, v0, p1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsController;-><init>(IZ)V

    aput-object v2, v0, p0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static getPeer(Lorg/telegram/tgnet/TLObject;)J
    .locals 2

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getStarGiftsCached(Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda35;

    invoke-direct {v3, v1, v0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback3;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getStarGiftsRemote(ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$getStarGifts;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$getStarGifts;-><init>()V

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stars$getStarGifts;->hash:I

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda24;

    invoke-direct {v1, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    return-object p0
.end method

.method public static isEnoughAmount(ILorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {p0, v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(ILorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getBalanceAmount()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide p0

    cmp-long v3, v1, p0

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$beforeSendingFinalRequest$153(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->sendingPaidMessagesIds:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->postponedPaidMessages:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$beforeSendingMessage$151(ZLjava/util/HashSet;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$beforeSendingMessage$152(ZI)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->sendingPaidMessagesIds:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->postponedPaidMessages:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$buy$26(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 2

    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    if-eqz p0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {p0, p1, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-eq p1, v0, :cond_1

    if-eqz p0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$buy$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p1, p3, p4, v2}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object v2, p1

    goto :goto_0

    :cond_2
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz p1, :cond_3

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {v2, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    :cond_3
    :goto_0
    if-eqz v2, :cond_6

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda107;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda107;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p2}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    iput-boolean v1, p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    iput-boolean v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p3, "UNKNOWN_RESPONSE"

    invoke-interface {p2, p1, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$buy$28(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buy$29(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "PRODUCT_NOT_FOUND"

    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buy$30(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "PRODUCT_NO_ONETIME_OFFER_DETAILS"

    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buy$31(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buy$32(Lorg/telegram/messenger/Utilities$Callback2;Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/BillingController;->getResponseCodeString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StarsController.buy onResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    new-instance v1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda115;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda115;-><init>(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buy$33(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buy$34(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 1

    const-string v0, "StarsController.buy onCanceled"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda120;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda120;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buy$35(Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Landroid/app/Activity;)V
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "StarsController.buy queryProductDetails done: no products"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    new-instance p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda98;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda98;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "StarsController.buy queryProductDetails done: no details"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    new-instance p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda99;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda99;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->currency:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v4

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->currency:Ljava/lang/String;

    invoke-virtual {v4, p3}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result p3

    int-to-double v4, p3

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v2, v2, v4

    double-to-long v2, v2

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->amount:J

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p3

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda100;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda100;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {p3, v1, v2}, Lorg/telegram/messenger/BillingController;->addResultListener(Ljava/lang/String;Landroidx/core/util/Consumer;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p3

    new-instance v1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda101;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda101;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {p3, v1}, Lorg/telegram/messenger/BillingController;->setOnCanceled(Ljava/lang/Runnable;)V

    const-string p1, "StarsController.buy launchBillingFlow"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v1, p0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p4, p3, p2, p0}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$buy$36(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6

    new-instance p4, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda74;

    move-object v0, p4

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda74;-><init>(Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Landroid/app/Activity;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buyGift$37(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 2

    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    if-eqz p0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {p0, p1, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-eq p1, v0, :cond_1

    if-eqz p0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$buyGift$38(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p1, p3, p4, v2}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object v2, p1

    goto :goto_0

    :cond_2
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz p1, :cond_3

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {v2, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    :cond_3
    :goto_0
    if-eqz v2, :cond_6

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda134;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda134;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p2}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    iput-boolean v1, p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    iput-boolean v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p3, "UNKNOWN_RESPONSE"

    invoke-interface {p2, p1, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$buyGift$39(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda127;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda127;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buyGift$40(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "PRODUCT_NOT_FOUND"

    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buyGift$41(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "PRODUCT_NO_ONETIME_OFFER_DETAILS"

    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buyGift$42(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buyGift$43(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/BillingController;->getResponseCodeString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buyGift$44(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buyGift$45(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buyGift$46(Lorg/telegram/tgnet/TLObject;Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p1

    new-instance p7, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda13;

    invoke-direct {p7, p2, p3}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda13;-><init>(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {p0, p1, p7}, Lorg/telegram/messenger/BillingController;->addResultListener(Ljava/lang/String;Landroidx/core/util/Consumer;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda14;

    invoke-direct {p1, p3}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/BillingController;->setOnCanceled(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p2, p3}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p4, p1, p5, p2}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    if-eqz p0, :cond_1

    if-eqz p3, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p1, "PURCHASE_FORBIDDEN"

    :goto_0
    invoke-interface {p3, p0, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p7, :cond_2

    iget-object p1, p7, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "SERVER_ERROR"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic lambda$buyGift$47(Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Ljava/util/List;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    new-instance v9, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda152;

    move-object v0, v9

    move-object/from16 v1, p6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda152;-><init>(Lorg/telegram/tgnet/TLObject;Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buyGift$48(Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;Lcom/android/billingclient/api/BillingResult;Landroid/app/Activity;)V
    .locals 9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda137;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda137;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda138;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda138;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->currency:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v3

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v3

    iget-object p4, p4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->currency:Ljava/lang/String;

    invoke-virtual {v3, p4}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result p4

    int-to-double v3, p4

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v0, v0, v3

    double-to-long v0, v0

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->amount:J

    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;-><init>()V

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v8, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda139;

    move-object v1, v8

    move-object v3, p5

    move-object v4, p2

    move-object v5, p6

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda139;-><init>(Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Ljava/util/List;)V

    invoke-virtual {v0, p4, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$buyGift$49(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 9

    new-instance v8, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;Lcom/android/billingclient/api/BillingResult;Landroid/app/Activity;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buyGiveaway$50(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 2

    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PAID:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    if-eqz p0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {p0, p1, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-eq p1, v0, :cond_1

    if-eqz p0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$buyGiveaway$51(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p1, p3, p4, v2}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object v2, p1

    goto :goto_0

    :cond_2
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz p1, :cond_3

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {v2, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    :cond_3
    :goto_0
    if-eqz v2, :cond_6

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda121;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda121;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p2}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    iput-boolean v1, p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    iput-boolean v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p3, "UNKNOWN_RESPONSE"

    invoke-interface {p2, p1, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$buyGiveaway$52(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda103;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda103;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buyGiveaway$53(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "PRODUCT_NOT_FOUND"

    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buyGiveaway$54(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "PRODUCT_NO_ONETIME_OFFER_DETAILS"

    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buyGiveaway$55(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buyGiveaway$56(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/BillingController;->getResponseCodeString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buyGiveaway$57(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$buyGiveaway$58(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buyGiveaway$59(Lorg/telegram/tgnet/TLObject;Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p1

    new-instance p7, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda147;

    invoke-direct {p7, p2, p3}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda147;-><init>(Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {p0, p1, p7}, Lorg/telegram/messenger/BillingController;->addResultListener(Ljava/lang/String;Landroidx/core/util/Consumer;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda148;

    invoke-direct {p1, p3}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda148;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/BillingController;->setOnCanceled(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p2, p3}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p4, p1, p5, p2}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    if-eqz p0, :cond_1

    if-eqz p3, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p1, "PURCHASE_FORBIDDEN"

    :goto_0
    invoke-interface {p3, p0, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p7, :cond_2

    iget-object p1, p7, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "SERVER_ERROR"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic lambda$buyGiveaway$60(Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Ljava/util/List;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    new-instance v9, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda142;

    move-object v0, v9

    move-object/from16 v1, p6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda142;-><init>(Lorg/telegram/tgnet/TLObject;Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buyGiveaway$61(Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Lcom/android/billingclient/api/BillingResult;Landroid/app/Activity;)V
    .locals 10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda124;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda124;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda125;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda125;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;-><init>()V

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda126;

    move-object v1, v9

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda126;-><init>(Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback2;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Ljava/util/List;)V

    invoke-virtual {v8, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$buyGiveaway$62(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda106;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda106;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Lcom/android/billingclient/api/BillingResult;Landroid/app/Activity;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buyPremiumGift$115(Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "NO_BALANCE"

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController;->buyPremiumGift(JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private synthetic lambda$buyPremiumGift$116([ZJLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController;->buyPremiumGift(JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private static synthetic lambda$buyPremiumGift$117(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buyPremiumGift$118(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$buyPremiumGift$119(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-wide/from16 v3, p9

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-nez v7, :cond_0

    invoke-static {v6}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v6

    :goto_0
    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    const/4 v10, 0x0

    if-nez v7, :cond_8

    if-eqz v1, :cond_3

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v7, "BALANCE_TOO_LOW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v9, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v0, v10}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-static/range {p4 .. p5}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_2
    new-array v10, v2, [Z

    aput-boolean v5, v10, v5

    new-instance v14, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    new-instance v18, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide/from16 v3, p9

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stars/StarsController;[ZJLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V

    const/16 v16, 0x6

    move-object v11, v14

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object v0, v14

    move-wide/from16 v14, p6

    move-object/from16 v17, p8

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    new-instance v1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda11;

    invoke-direct {v1, v9, v10}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/Utilities$Callback2;[Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "STARGIFT_USAGE_LIMITED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v9, :cond_7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v0, v3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-eqz v9, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v0, v10}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    sget v3, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v1, "FAILED_SEND_STARS"

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_7
    :goto_2
    return-void

    :cond_8
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda12;

    invoke-direct {v6, v8, v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    if-eqz v9, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v0, v10}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    iget v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/BirthdayController;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "bdayhint_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a
    iget v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show_gift_for_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$buyPremiumGift$120(Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 15

    new-instance v14, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda146;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda146;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buyPremiumGift$121(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    if-nez v1, :cond_0

    const-string v0, "NO_PAYMENT_FORM"

    move-object/from16 v1, p2

    invoke-direct {v12, v1, v0}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    move-object/from16 v2, p3

    invoke-interface {v2, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v2, p3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    new-instance v13, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;

    invoke-direct {v13}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;-><init>()V

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->form_id:J

    iput-wide v3, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->form_id:J

    move-object/from16 v1, p4

    iput-object v1, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v5, v3

    goto :goto_0

    :cond_1
    iget v0, v12, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda136;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda136;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-virtual {v14, v13, v15}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$buyPremiumGift$122(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 14

    new-instance v13, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda122;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda122;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buyResellingGift$137(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "NO_BALANCE"

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController;->buyResellingGift(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private synthetic lambda$buyResellingGift$138([ZLorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController;->buyResellingGift(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private static synthetic lambda$buyResellingGift$139(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buyResellingGift$140(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$buyResellingGift$141(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-wide/from16 v5, p11

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v7, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-nez v7, :cond_0

    invoke-static {v4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v4

    :goto_0
    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    const/4 v10, 0x0

    if-nez v7, :cond_8

    if-eqz v1, :cond_3

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v7, "BALANCE_TOO_LOW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v9, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v0, v10}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-static/range {p4 .. p5}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_2
    new-array v10, v2, [Z

    aput-boolean v3, v10, v3

    new-instance v14, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    new-instance v18, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda149;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-wide/from16 v5, p11

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda149;-><init>(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback2;)V

    const/16 v16, 0x6

    move-object v11, v14

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object v0, v14

    move-wide/from16 v14, p6

    move-object/from16 v17, p8

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    new-instance v1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda150;

    invoke-direct {v1, v9, v10}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda150;-><init>(Lorg/telegram/messenger/Utilities$Callback2;[Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "STARGIFT_USAGE_LIMITED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v9, :cond_7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v0, v5}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-eqz v9, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v0, v10}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    sget v5, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v1, "FAILED_SEND_STARS"

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_7
    :goto_2
    return-void

    :cond_8
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda151;

    invoke-direct {v4, v8, v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda151;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsController;->invalidateStarGifts()V

    invoke-virtual {v8, v5, v6}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    if-eqz v9, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v0, v10}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    iget v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/BirthdayController;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "bdayhint_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a
    iget v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show_gift_for_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$buyResellingGift$142(Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 15

    new-instance v14, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda133;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda133;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buyStarGift$123(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "NO_BALANCE"

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move-object v6, p7

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController;->buyStarGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private synthetic lambda$buyStarGift$124([ZLorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController;->buyStarGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private static synthetic lambda$buyStarGift$125(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buyStarGift$126(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private static synthetic lambda$buyStarGift$127(Lorg/telegram/ui/ProfileActivity;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->scrollToSharedMedia()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$buyStarGift$128(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLjava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    sget v0, Lorg/telegram/messenger/R$string;->StarsGiftCompleted:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    long-to-int p3, p2

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, p2, v1

    const-string p4, "StarsGiftCompletedChannelText"

    invoke-static {p4, p3, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private static synthetic lambda$buyStarGift$129(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V
    .locals 2

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    sget v0, Lorg/telegram/messenger/R$string;->StarsGiftCompleted:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    long-to-int p3, p2

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "StarsGiftCompletedText"

    invoke-static {v1, p3, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$buyStarGift$130(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v11, p3

    move-wide/from16 v12, p6

    move-object/from16 v3, p9

    move-wide/from16 v6, p12

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v4, v9, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-nez v4, :cond_0

    invoke-static {v9}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v4

    :goto_0
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    const/4 v14, 0x0

    if-nez v5, :cond_8

    if-eqz v1, :cond_3

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "BALANCE_TOO_LOW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v10, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v11, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v11, v0, v14}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-static/range {p4 .. p5}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_2
    new-array v14, v8, [Z

    aput-boolean v2, v14, v2

    new-instance v15, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    new-instance v16, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p9

    move/from16 v4, p10

    move/from16 v5, p11

    move-wide/from16 v6, p12

    move-object/from16 v8, p14

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V

    const/4 v5, 0x6

    move-object v0, v15

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-wide/from16 v3, p6

    move-object/from16 v6, p8

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda3;

    invoke-direct {v0, v11, v14}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback2;[Z)V

    invoke-virtual {v15, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v15}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "STARGIFT_USAGE_LIMITED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v11, :cond_7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v11, v0, v3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-eqz v11, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v11, v0, v14}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    sget v3, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v1, "FAILED_SEND_STARS"

    :goto_1
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_7
    :goto_2
    return-void

    :cond_8
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda4;

    invoke-direct {v4, v10, v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsController;->invalidateStarGifts()V

    invoke-virtual {v10, v6, v7}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    invoke-virtual {v10, v8}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    if-eqz v11, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v11, v0, v14}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    iget v0, v10, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/BirthdayController;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v10, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "bdayhint_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v4, v6, v0

    if-gez v4, :cond_e

    iget v0, v10, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v4, v6

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_b

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stargifts_count:I

    add-int/2addr v1, v8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stargifts_count:I

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    const/high16 v11, 0x40000

    or-int/2addr v1, v11

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    iget v1, v10, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->putChatFull(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    :cond_b
    instance-of v0, v9, Lorg/telegram/ui/ProfileActivity;

    if-eqz v0, :cond_d

    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v14

    cmp-long v1, v14, v6

    if-nez v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->scrollToSharedMedia()V

    :cond_c
    invoke-static {v9}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget-object v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    sget v3, Lorg/telegram/messenger/R$string;->StarsGiftCompleted:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    long-to-int v4, v12

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p8, v5, v2

    const-string v9, "StarsGiftCompletedChannelText"

    invoke-static {v9, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_3

    :cond_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "chat_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "open_gifts"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v11, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    new-instance v14, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda5;

    move-object v0, v14

    move-object v1, v11

    move-object/from16 v2, p9

    move-wide/from16 v3, p6

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLjava/lang/String;)V

    invoke-virtual {v11, v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->whenFullyVisible(Ljava/lang/Runnable;)V

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_3

    :cond_e
    instance-of v0, v9, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_f

    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-nez v4, :cond_f

    invoke-static {v9}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget-object v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    sget v3, Lorg/telegram/messenger/R$string;->StarsGiftCompleted:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    long-to-int v4, v12

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "StarsGiftCompletedText"

    invoke-static {v5, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_3

    :cond_f
    invoke-static/range {p12 .. p13}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, v3, v12, v13}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->whenFullyVisible(Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_3
    iget v0, v10, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show_gift_for_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$buyStarGift$131(Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 17

    new-instance v16, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda153;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move-object/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda153;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$buyStarGift$132(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 17

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;

    if-nez v1, :cond_0

    const-string v0, "NO_PAYMENT_FORM"

    move-object/from16 v1, p2

    invoke-direct {v14, v1, v0}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    move-object/from16 v2, p3

    invoke-interface {v2, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v2, p3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;

    new-instance v15, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;

    invoke-direct {v15}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;-><init>()V

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->form_id:J

    iput-wide v3, v15, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->form_id:J

    move-object/from16 v1, p4

    iput-object v1, v15, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v5, v3

    goto :goto_0

    :cond_1
    iget v0, v14, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v11, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v14, v11

    move-wide/from16 v11, p11

    move-object/from16 v16, v13

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda141;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v14}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$buyStarGift$133(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    new-instance v15, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda129;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda129;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getBalance$0(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 12

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->balanceLoaded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stars/StarsController;->lastBalanceLoaded:J

    instance-of v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    iget v2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->transactions:[Ljava/util/ArrayList;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_8

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsController;->transactions:[Ljava/util/ArrayList;

    aget-object v7, v7, v3

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsController;->transactions:[Ljava/util/ArrayList;

    iget-object v8, v6, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v8, v8, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v10, v8, v4

    if-lez v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x2

    :goto_1
    aget-object v7, v7, v8

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    const/4 v6, 0x3

    if-ge v2, v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsController;->transactionsExist:[Z

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsController;->transactions:[Ljava/util/ArrayList;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsController;->transactionsExist:[Z

    aget-boolean v7, v7, v2

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v7, 0x1

    :goto_4
    aput-boolean v7, v6, v2

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsController;->endReached:[Z

    iget v7, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/2addr v7, v1

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_5
    aput-boolean v7, v6, v2

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsController;->loading:[Z

    aput-boolean v3, v7, v2

    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsController;->offset:[Ljava/lang/String;

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    goto :goto_6

    :cond_6
    iget-object v6, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->next_offset:Ljava/lang/String;

    :goto_6
    aput-object v6, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptions:Ljava/util/ArrayList;

    iget-object v7, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-boolean v3, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsLoading:Z

    iget-object v6, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions_next_offset:Ljava/lang/String;

    iput-object v6, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsOffset:Ljava/lang/String;

    iget v6, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_9

    const/4 v6, 0x1

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    :goto_8
    iput-boolean v6, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsEndReached:Z

    const/4 v6, 0x1

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v7, v7, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v9, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v11, v7, v9

    if-eqz v11, :cond_b

    const/4 v0, 0x1

    :cond_b
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iput-wide v4, p0, Lorg/telegram/ui/Stars/StarsController;->minus:J

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_a
    iput-boolean v3, p0, Lorg/telegram/ui/Stars/StarsController;->balanceLoading:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarsController;->balanceLoaded:Z

    if-eqz v0, :cond_d

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_d
    if-eqz v2, :cond_e

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_e
    if-eqz v6, :cond_f

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_f
    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$getBalance$1(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda48;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getGiftOptions$10(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, p1, Lorg/telegram/tgnet/Vector;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/telegram/tgnet/Vector;

    iget-object p1, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->store_product:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->loadingStorePrice:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Stars/StarsController;->giftOptionsLoaded:Z

    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftOptions:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController;->giftOptionsLoading:Z

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->starGiftOptionsLoaded:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda81;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda81;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/BillingController;->whenSetuped(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$getGiftOptions$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda68;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda68;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getGiftOptions$7(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BILLING_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/BillingController;->getResponseCodeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->store_product:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->currency:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result v1

    int-to-double v5, v1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-long v3, v3

    iput-wide v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->amount:J

    iput-boolean p1, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->loadingStorePrice:Z

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsController;->giftOptions:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarsController;->giftOptions:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarsController;->giftOptions:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

    if-eqz p3, :cond_6

    iget-boolean v0, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->loadingStorePrice:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->missingStorePrice:Z

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_7
    iget p2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->starGiftOptionsLoaded:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getGiftOptions$8(Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda128;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda128;-><init>(Lorg/telegram/ui/Stars/StarsController;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getGiftOptions$9(Ljava/util/ArrayList;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->store_product:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda88;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda88;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method private synthetic lambda$getGiveawayOptions$12(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BILLING_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/BillingController;->getResponseCodeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->store_product:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->currency:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result v1

    int-to-double v5, v1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-long v3, v3

    iput-wide v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->amount:J

    iput-boolean p1, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->loadingStorePrice:Z

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsController;->giveawayOptions:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarsController;->giveawayOptions:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarsController;->giveawayOptions:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    if-eqz p3, :cond_6

    iget-boolean v0, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->loadingStorePrice:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->missingStorePrice:Z

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_7
    iget p2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->starGiveawayOptionsLoaded:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getGiveawayOptions$13(Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda135;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda135;-><init>(Lorg/telegram/ui/Stars/StarsController;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getGiveawayOptions$14(Ljava/util/ArrayList;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->store_product:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda123;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda123;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method private synthetic lambda$getGiveawayOptions$15(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, p1, Lorg/telegram/tgnet/Vector;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/telegram/tgnet/Vector;

    iget-object p1, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->store_product:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->loadingStorePrice:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Stars/StarsController;->giveawayOptionsLoaded:Z

    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->giveawayOptions:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController;->giveawayOptionsLoading:Z

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->starGiveawayOptionsLoaded:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda91;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda91;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/BillingController;->whenSetuped(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$getGiveawayOptions$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda85;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda85;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getOptions$2(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BILLING_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/BillingController;->getResponseCodeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->store_product:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->currency:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result v1

    int-to-double v5, v1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-long v3, v3

    iput-wide v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->amount:J

    iput-boolean p1, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->loadingStorePrice:Z

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsController;->options:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarsController;->options:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarsController;->options:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    if-eqz p3, :cond_6

    iget-boolean v0, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->loadingStorePrice:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->missingStorePrice:Z

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_7
    iget p2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getOptions$3(Ljava/util/ArrayList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda87;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda87;-><init>(Lorg/telegram/ui/Stars/StarsController;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getOptions$4(Ljava/util/ArrayList;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->store_product:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda80;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda80;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method private synthetic lambda$getOptions$5(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, p1, Lorg/telegram/tgnet/Vector;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/telegram/tgnet/Vector;

    iget-object p1, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->store_product:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->loadingStorePrice:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Stars/StarsController;->optionsLoaded:Z

    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->options:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController;->optionsLoading:Z

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda58;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/BillingController;->whenSetuped(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$getOptions$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda56;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$getPaidRevenue$147(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_account$paidMessagesRevenue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$paidMessagesRevenue;

    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_account$paidMessagesRevenue;->stars_amount:J

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private static synthetic lambda$getPaidRevenue$148(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda71;

    invoke-direct {p2, p1, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getResellingGiftForm$134(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "NO_BALANCE"

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2, p3, p4, p1}, Lorg/telegram/ui/Stars/StarsController;->getResellingGiftForm(Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$getResellingGiftForm$135(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;

    if-nez v0, :cond_0

    const-string p1, "NO_PAYMENT_FORM"

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$getResellingGiftForm$136(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda111;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda111;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getStarGift$113([ZJ[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/messenger/Utilities$Callback;II[Ljava/lang/Object;)V
    .locals 0

    const/4 p7, 0x0

    aget-boolean p8, p1, p7

    if-eqz p8, :cond_0

    return-void

    :cond_0
    sget p8, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    if-ne p6, p8, :cond_1

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->getStarGift(J)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    aput-boolean p3, p1, p7

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    aget-object p3, p4, p7

    invoke-virtual {p1, p3, p8}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-interface {p5, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$getStarGift$114([Z[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v0, p1, v1

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    aget-object p2, p2, v1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private synthetic lambda$getStarGiftPreview$143(Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftUpgradePreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftPreviews:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftUpgradePreview;

    invoke-virtual {v0, p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {p4, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$getStarGiftPreview$144(JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p5, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda102;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda102;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$getStarGiftsCached$108(Lorg/telegram/messenger/Utilities$Callback3;Ljava/util/ArrayList;IJ)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getStarGiftsCached$109(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 10

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "SELECT data, hash, time FROM star_gifts2 ORDER BY pos ASC"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    invoke-static {v4, v5, v0}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    long-to-int p0, v4

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, p0

    const/4 p0, 0x0

    :goto_2
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_3
    move v7, p0

    move-wide v8, v1

    new-instance p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda47;

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/messenger/Utilities$Callback3;Ljava/util/ArrayList;IJ)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_4
    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static synthetic lambda$getStarGiftsRemote$111(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGifts;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stars$StarGifts;

    :goto_0
    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private static synthetic lambda$getStarGiftsRemote$112(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda50;

    invoke-direct {p2, p1, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getUserStarGift$145(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    if-eqz p1, :cond_2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    :goto_0
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_savedStarGifts;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    instance-of v0, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;->msg_id:I

    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    if-eq v0, v2, :cond_3

    :cond_0
    instance-of v0, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;

    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->saved_id:J

    iget-wide v4, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_1
    invoke-interface {p4, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getUserStarGift$146(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p5, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda69;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadInsufficientSubscriptions$21(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->insufficientSubscriptionsLoading:Z

    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->insufficientSubscriptions:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->updateBalance(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)V

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadInsufficientSubscriptions$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda43;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$loadStarGifts$100(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    return p0
.end method

.method private static synthetic lambda$loadStarGifts$101(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->birthday:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$loadStarGifts$102(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    return p0
.end method

.method private synthetic lambda$loadStarGifts$103(Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsCacheLoaded:Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->birthdaySortedGifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->birthdaySortedGifts:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->birthdaySortedGifts:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda32;-><init>()V

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda33;-><init>()V

    invoke-static {v0, v1}, Lj$/util/Comparator$-EL;->thenComparingInt(Ljava/util/Comparator;Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->sortedGifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->sortedGifts:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->sortedGifts:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda34;-><init>()V

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stars/StarsController;->giftsHash:I

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Stars/StarsController;->giftsRemoteTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsController;->giftsLoading:Z

    iget p2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->loadStarGifts()V

    return-void
.end method

.method private static synthetic lambda$loadStarGifts$104(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    return p0
.end method

.method private static synthetic lambda$loadStarGifts$105(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->birthday:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$loadStarGifts$106(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)I
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    return p0
.end method

.method private synthetic lambda$loadStarGifts$107(Lorg/telegram/tgnet/tl/TL_stars$StarGifts;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsLoading:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarsController;->giftsLoaded:Z

    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGifts;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGifts;

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGifts;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGifts;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGifts;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->birthdaySortedGifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->birthdaySortedGifts:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->birthdaySortedGifts:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda29;

    invoke-direct {v2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda29;-><init>()V

    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda30;

    invoke-direct {v3}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda30;-><init>()V

    invoke-static {v2, v3}, Lj$/util/Comparator$-EL;->thenComparingInt(Ljava/util/Comparator;Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->sortedGifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->sortedGifts:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->sortedGifts:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda31;

    invoke-direct {v2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda31;-><init>()V

    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGifts;->hash:I

    iput v1, p0, Lorg/telegram/ui/Stars/StarsController;->giftsHash:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stars/StarsController;->giftsRemoteTime:J

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGifts;->gifts:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsHash:I

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsController;->giftsRemoteTime:J

    :goto_0
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Stars/StarsController;->saveStarGiftsCached(Ljava/util/ArrayList;IJ)V

    goto :goto_1

    :cond_0
    instance-of p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftsNotModified;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsHash:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stars/StarsController;->giftsRemoteTime:J

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$loadSubscriptions$19(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsLoading:Z

    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptions:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsEndReached:Z

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions_next_offset:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsOffset:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->updateBalance(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)V

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadSubscriptions$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda54;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadTransactions$17(ILorg/telegram/tgnet/TLObject;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->loading:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    instance-of v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->transactions:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->transactionsExist:[Z

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->transactions:[Ljava/util/ArrayList;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->transactionsExist:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, v0, p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->endReached:[Z

    iget v2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    aput-boolean v3, v0, p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->offset:[Ljava/lang/String;

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->next_offset:Ljava/lang/String;

    :goto_3
    aput-object v2, v0, p1

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsController;->updateBalance(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)V

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starTransactionsLoaded:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadTransactions$18(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda52;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Stars/StarsController;ILorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$openPaymentForm$66(Ljava/lang/Runnable;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "NO_BALANCE"

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController;->openPaymentForm(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$openPaymentForm$67([ZILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    if-lez p2, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "paid"

    goto :goto_0

    :cond_1
    const-string p1, "failed"

    :goto_0
    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    if-eqz p4, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$openPaymentForm$68([ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;[ZILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/ui/Stars/StarsController;[ZILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual {p0, p2, p3, p4, v0}, Lorg/telegram/ui/Stars/StarsController;->payAfterConfirmed(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$openPaymentForm$69(Lorg/telegram/messenger/Utilities$Callback;[Z[ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p5, 0x0

    aget-boolean p2, p2, p5

    if-nez p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    iput-boolean p5, p0, Lorg/telegram/ui/Stars/StarsController;->paymentFormOpened:Z

    aget-boolean p1, p3, p5

    if-nez p1, :cond_0

    if-eqz p4, :cond_0

    const-string p1, "cancelled"

    invoke-interface {p4, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-boolean p1, p3, p5

    :cond_0
    return-void
.end method

.method private synthetic lambda$openPaymentForm$70(ILorg/telegram/messenger/Utilities$Callback;[ZLorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    aput-boolean v0, p3, p1

    if-eqz p4, :cond_3

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "paid"

    goto :goto_0

    :cond_2
    const-string p1, "failed"

    :goto_0
    invoke-interface {p4, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$openPaymentForm$71(J[ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p13

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, v10, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v4, v2, p1

    if-gez v4, :cond_4

    iget v2, v10, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v1, v10, Lorg/telegram/ui/Stars/StarsController;->paymentFormOpened:Z

    if-eqz v12, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v12, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    aget-boolean v2, p3, v1

    if-nez v2, :cond_1

    if-eqz v11, :cond_1

    const-string v2, "cancelled"

    invoke-interface {v11, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    aput-boolean v0, p3, v1

    :cond_1
    invoke-static/range {p5 .. p6}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_2
    new-array v15, v0, [Z

    aput-boolean v1, v15, v1

    new-instance v14, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    if-eqz p7, :cond_3

    const/16 v1, 0x9

    const/16 v18, 0x9

    goto :goto_0

    :cond_3
    const/16 v18, 0x0

    :goto_0
    new-instance v20, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda44;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p3

    move/from16 v7, p12

    move-object/from16 v8, p4

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;[ZILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    move-object v13, v14

    move-object v0, v14

    move-object/from16 v14, p5

    move-object v1, v15

    move-object/from16 v15, p6

    move-wide/from16 v16, p1

    move-object/from16 v19, p8

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda45;

    move-object/from16 p5, v2

    move-object/from16 p6, p0

    move-object/from16 p7, p13

    move-object/from16 p8, v1

    move-object/from16 p9, p3

    move-object/from16 p10, p4

    invoke-direct/range {p5 .. p10}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback;[Z[ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    goto :goto_1

    :cond_4
    new-instance v6, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda46;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Stars/StarsController;ILorg/telegram/messenger/Utilities$Callback;[ZLorg/telegram/messenger/Utilities$Callback;)V

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    invoke-virtual {v10, v0, v1, v2, v6}, Lorg/telegram/ui/Stars/StarsController;->payAfterConfirmed(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$openPaymentForm$72([ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->paymentFormOpened:Z

    aget-boolean v1, p1, v0

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "cancelled"

    invoke-interface {p2, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p2, 0x1

    aput-boolean p2, p1, v0

    :cond_0
    return-void
.end method

.method private synthetic lambda$pay$63(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    if-eqz v0, :cond_0

    move-object v4, p1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsController;->openPaymentForm(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_0
    const-string p1, "NO_PAYMENT_FORM"

    invoke-direct {p0, p5, p1}, Lorg/telegram/ui/Stars/StarsController;->bulletinError(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V

    :goto_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$pay$64(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda72;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$pay$65(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$payAfterConfirmed$79(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private static synthetic lambda$payAfterConfirmed$80(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$payAfterConfirmed$81([ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda131;

    invoke-direct {p1, p5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda131;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0, p2, p3, p4, p1}, Lorg/telegram/ui/Stars/StarsController;->payAfterConfirmed(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private static synthetic lambda$payAfterConfirmed$82(Lorg/telegram/messenger/Utilities$Callback;[ZLandroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$payAfterConfirmed$83(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    invoke-virtual {p0, p2, p3, p1, p4}, Lorg/telegram/ui/Stars/StarsController;->payAfterConfirmed(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    sget p1, Lorg/telegram/messenger/R$raw;->error:I

    sget p2, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    if-eqz p6, :cond_2

    iget-object p3, p6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p3, "FAILED_GETTING_FORM"

    :goto_0
    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p3, p4, p6

    invoke-static {p2, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_1
    return-void
.end method

.method private synthetic lambda$payAfterConfirmed$84(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    new-instance v8, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda114;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda114;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$payAfterConfirmed$85(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessageObject;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputInvoice;JLorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v3, p3

    move-wide/from16 v12, p5

    move-object/from16 v4, p10

    move-wide/from16 v1, p11

    move-object/from16 v5, p13

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    iput-boolean v10, v7, Lorg/telegram/ui/Stars/StarsController;->paymentFormOpened:Z

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v14, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-nez v14, :cond_0

    invoke-static {v11}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v11

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v11

    :goto_0
    instance-of v14, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    const/4 v15, 0x0

    if-eqz v14, :cond_6

    if-eqz v8, :cond_1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v5}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    sget-object v5, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda92;

    invoke-direct {v8, v7, v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda92;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    if-eqz v3, :cond_2

    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-eqz v0, :cond_2

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$string;->StarsMediaPurchaseCompleted:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    long-to-int v6, v12

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p7, v8, v10

    const-string v10, "StarsMediaPurchaseCompletedInfo"

    invoke-static {v10, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v11, v0, v5, v6}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_3

    :cond_2
    sget v0, Lorg/telegram/messenger/R$raw;->stars_send:I

    if-lez p8, :cond_3

    sget v5, Lorg/telegram/messenger/R$string;->StarsBotSubscriptionCompleted:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    long-to-int v8, v12

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p9, v6, v10

    aput-object p7, v6, v9

    const-string v10, "StarsBotSubscriptionCompletedInfo"

    invoke-static {v10, v8, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v11, v0, v5, v6}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget v5, Lorg/telegram/messenger/R$string;->StarsPurchaseCompleted:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    long-to-int v8, v12

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p9, v6, v10

    aput-object p7, v6, v9

    const-string v10, "StarsPurchaseCompletedInfo"

    invoke-static {v10, v8, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :goto_3
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    :cond_4
    instance-of v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    if-eqz v0, :cond_5

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v7, v9}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    :goto_4
    if-eqz v3, :cond_e

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExtendedMedia;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getExtendedMedia;-><init>()V

    :goto_5
    iget v4, v7, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExtendedMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExtendedMedia;->id:Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v7, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_7

    :cond_6
    if-eqz v5, :cond_9

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "BALANCE_TOO_LOW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v7, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v8, :cond_7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v11, p4

    move-object/from16 v14, p14

    invoke-static {v11, v14}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_8
    move-object/from16 v11, p4

    move-object/from16 v14, p14

    new-array v15, v9, [Z

    aput-boolean v10, v15, v10

    new-instance v10, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    new-instance v16, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda93;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p10

    move-object/from16 v5, p15

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda93;-><init>(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V

    const/4 v0, 0x0

    move-object v9, v10

    move-object v1, v10

    move-object/from16 v10, p4

    move-object/from16 v11, p14

    move-wide/from16 v12, p5

    move v14, v0

    move-object v0, v15

    move-object/from16 v15, p7

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda94;

    invoke-direct {v2, v8, v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda94;-><init>(Lorg/telegram/messenger/Utilities$Callback;[Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    goto/16 :goto_7

    :cond_9
    move-object/from16 v14, p14

    if-eqz v5, :cond_b

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "FORM_EXPIRED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    invoke-static/range {p14 .. p14}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    :cond_a
    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget v1, v7, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda95;

    move-object/from16 p4, v2

    move-object/from16 p5, p0

    move-object/from16 p6, p3

    move-object/from16 p7, p10

    move-object/from16 p8, p2

    move-object/from16 p9, v11

    invoke-direct/range {p4 .. p9}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda95;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_7

    :cond_b
    if-eqz v8, :cond_c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_c
    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    sget v4, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    if-eqz v5, :cond_d

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_6

    :cond_d
    const-string v5, "FAILED_SEND_STARS"

    :goto_6
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v5, v6, v10

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v0, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    if-eqz v3, :cond_e

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExtendedMedia;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getExtendedMedia;-><init>()V

    goto/16 :goto_5

    :cond_e
    :goto_7
    return-void
.end method

.method private synthetic lambda$payAfterConfirmed$86(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessageObject;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputInvoice;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v2, p14

    move-object/from16 v14, p15

    new-instance v17, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda77;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessageObject;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputInvoice;JLorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;)V

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$payAfterConfirmed$87(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private static synthetic lambda$payAfterConfirmed$88(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$payAfterConfirmed$89([ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda7;

    invoke-direct {p1, p4}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/Stars/StarsController;->payAfterConfirmed(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private static synthetic lambda$payAfterConfirmed$90(Lorg/telegram/messenger/Utilities$Callback2;[ZLandroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$payAfterConfirmed$91(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v1, p6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-boolean v3, v6, Lorg/telegram/ui/Stars/StarsController;->paymentFormOpened:Z

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v4

    :goto_0
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda143;

    invoke-direct {v5, v6, v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda143;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Updates;->update:Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    if-eqz v10, :cond_1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;->channel_id:J

    neg-long v10, v10

    goto :goto_1

    :cond_1
    move-wide v10, v8

    :goto_1
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;->channel_id:J

    neg-long v10, v10

    :cond_2
    add-int/2addr v1, v2

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    cmp-long v0, v10, v8

    if-nez v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$raw;->stars_send:I

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionCompleted:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v11, p3

    long-to-int v5, v11

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p5, v7, v3

    const-string v3, "StarsSubscriptionCompletedText"

    invoke-static {v3, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v4, v0, v1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_5
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    :cond_6
    invoke-virtual {v6, v2}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Stars/StarsController;->invalidateSubscriptions(Z)V

    goto/16 :goto_4

    :cond_7
    move-wide/from16 v11, p3

    if-eqz v1, :cond_a

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "BALANCE_TOO_LOW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v6, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v7, :cond_8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    invoke-static/range {p7 .. p8}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_9
    new-array v15, v2, [Z

    aput-boolean v3, v15, v3

    new-instance v14, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    move-object/from16 v4, p9

    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    new-instance v16, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda144;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p10

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda144;-><init>(Lorg/telegram/ui/Stars/StarsController;[ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback2;)V

    const/4 v0, 0x1

    move-object v8, v14

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-wide/from16 v11, p3

    move-object v1, v13

    move v13, v0

    move-object v0, v14

    move-object v14, v1

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda145;

    invoke-direct {v2, v7, v1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda145;-><init>(Lorg/telegram/messenger/Utilities$Callback2;[Z)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    goto :goto_4

    :cond_a
    if-eqz v7, :cond_b

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v0, v5}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    sget v5, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    if-eqz v1, :cond_c

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_3

    :cond_c
    const-string v1, "FAILED_SEND_STARS"

    :goto_3
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_4
    return-void
.end method

.method private synthetic lambda$payAfterConfirmed$92(Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/String;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13

    new-instance v12, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda140;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p9

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p10

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda140;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$saveStarGiftsCached$110(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;IJ)V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM star_gifts2"

    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    if-eqz p1, :cond_0

    const-string v1, "REPLACE INTO star_gifts2 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    iget-wide v2, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    int-to-long v3, p2

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :goto_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_1
    return-void

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_2
    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private synthetic lambda$sendPaidReaction$98(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JLjava/lang/Long;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController;->sendPaidReaction(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JZZLjava/lang/Long;)Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    return-void
.end method

.method private synthetic lambda$sendPaidReaction$99(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JLjava/lang/Long;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController;->sendPaidReaction(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JZZLjava/lang/Long;)Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    return-void
.end method

.method private synthetic lambda$showStarsTopup$23(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->showStarsTopupInternal(Landroid/app/Activity;JLjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$showStarsTopupInternal$24()V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$showStarsTopupInternal$25()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$stopPaidMessages$149(Lorg/telegram/tgnet/TLObject;JJZ)V
    .locals 9

    const/4 v0, 0x1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    neg-long v4, p2

    move-object v3, p0

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Stars/StarsController;->processUpdateMonoForumNoPaidException(JJZ)V

    goto/16 :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->settings:Lorg/telegram/tgnet/TLRPC$PeerSettings;

    if-eqz p1, :cond_1

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    and-int/lit16 p2, p2, -0x4001

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$PeerSettings;->flags:I

    iput-wide v1, p1, Lorg/telegram/tgnet/TLRPC$PeerSettings;->charge_paid_message_stars:J

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dialog_bar_paying_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    neg-long v1, p4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p3, p6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->loadPeerSettings(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ContactsController;->loadPrivacySettings(Z)V

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesFeeUpdated:I

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p3, p4, p5

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$stopPaidMessages$150(JJZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance p7, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda61;

    move-object v0, p7

    move-object v1, p0

    move-object v2, p6

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;JJZ)V

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$subscribeTo$73([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    if-eqz p1, :cond_1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "paid"

    goto :goto_0

    :cond_0
    const-string p0, "failed"

    :goto_0
    invoke-interface {p1, p0, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$subscribeTo$74([ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;[ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda130;

    invoke-direct {p1, p4, p5, p6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda130;-><init>([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-direct {p0, p2, p3, p1}, Lorg/telegram/ui/Stars/StarsController;->payAfterConfirmed(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private synthetic lambda$subscribeTo$75(Lorg/telegram/messenger/Utilities$Callback;[Z[ZLorg/telegram/messenger/Utilities$Callback2;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p5, 0x0

    aget-boolean p2, p2, p5

    if-nez p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    iput-boolean p5, p0, Lorg/telegram/ui/Stars/StarsController;->paymentFormOpened:Z

    aget-boolean p1, p3, p5

    if-nez p1, :cond_0

    if-eqz p4, :cond_0

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "cancelled"

    invoke-interface {p4, p2, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-boolean p1, p3, p5

    :cond_0
    return-void
.end method

.method private static synthetic lambda$subscribeTo$76(Lorg/telegram/messenger/Utilities$Callback;[ZLorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    aput-boolean v0, p1, p0

    if-eqz p2, :cond_2

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "paid"

    goto :goto_0

    :cond_1
    const-string p0, "failed"

    :goto_0
    invoke-interface {p2, p0, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$subscribeTo$77(JI[ZLorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v4, p8

    move-object/from16 v11, p10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, v8, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v5, v2, p1

    if-gez v5, :cond_3

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v1, v8, Lorg/telegram/ui/Stars/StarsController;->paymentFormOpened:Z

    if-eqz v11, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v11, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    aget-boolean v2, v9, v1

    if-nez v2, :cond_1

    if-eqz v10, :cond_1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "cancelled"

    invoke-interface {v10, v3, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-boolean v0, v9, v1

    :cond_1
    invoke-static/range {p6 .. p7}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_2
    new-array v15, v0, [Z

    aput-boolean v1, v15, v1

    new-instance v14, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    new-instance v19, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda108;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p9

    move-object/from16 v4, p8

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda108;-><init>(Lorg/telegram/ui/Stars/StarsController;[ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;[ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback;)V

    const/16 v17, 0x1

    move-object v12, v14

    move-object v0, v13

    move-object/from16 v13, p6

    move-object v6, v14

    move-object/from16 v14, p7

    move-object v3, v15

    move-wide/from16 v15, p1

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    new-instance v7, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda109;

    move-object v0, v7

    move-object/from16 v2, p10

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda109;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback;[Z[ZLorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda110;

    invoke-direct {v0, v11, v9, v10}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda110;-><init>(Lorg/telegram/messenger/Utilities$Callback;[ZLorg/telegram/messenger/Utilities$Callback2;)V

    move-object/from16 v1, p9

    invoke-direct {v8, v1, v4, v0}, Lorg/telegram/ui/Stars/StarsController;->payAfterConfirmed(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback2;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$subscribeTo$78([ZLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->paymentFormOpened:Z

    aget-boolean v1, p1, v0

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "cancelled"

    invoke-interface {p2, v2, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x1

    aput-boolean p2, p1, v0

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateMediaPrice$93(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$updateMediaPrice$94(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;)V
    .locals 6

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController;->updateMediaPrice(Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateMediaPrice$95(Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance p6, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda119;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda119;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateMediaPrice$96(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;ZJILorg/telegram/messenger/MessageObject;J)V
    .locals 10

    move-object v6, p0

    move-object v0, p1

    move-object v1, p3

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v2, :cond_1

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda96;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda96;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_0

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;-><init>()V

    iget v0, v6, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-wide v1, p5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;->id:Ljava/util/ArrayList;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v6, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda97;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p8

    move-wide/from16 v3, p9

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda97;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;)V

    invoke-virtual {v8, v7, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateMediaPrice$97(Ljava/lang/Runnable;ZJILorg/telegram/messenger/MessageObject;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13

    new-instance v12, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda86;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p9

    move-object v3, p1

    move-object/from16 v4, p10

    move v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda86;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;ZJILorg/telegram/messenger/MessageObject;J)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private needsUndoButton(Lorg/telegram/messenger/MessageObject;J)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;->isUndoRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->needsPaidMessageAlert(IJ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->justAgreedToNotAskDialogs:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1388

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->sendingMessagesCount:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_3

    return v1

    :cond_3
    const-wide/16 v3, 0x64

    cmp-long p1, p2, v3

    if-gez p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private payAfterConfirmed(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 14

    .line 0
    move-object/from16 v8, p2

    if-eqz v8, :cond_0

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-nez v0, :cond_1

    :cond_0
    move-object v11, p0

    goto :goto_0

    :cond_1
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    if-nez v6, :cond_2

    return-void

    :cond_2
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceChatInviteSubscription;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceChatInviteSubscription;-><init>()V

    move-object v9, p1

    iput-object v9, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceChatInviteSubscription;->hash:Ljava/lang/String;

    new-instance v10, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;

    invoke-direct {v10}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;-><init>()V

    iget-wide v1, v8, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_form_id:J

    iput-wide v1, v10, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->form_id:J

    iput-object v0, v10, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    move-object v11, p0

    iget v0, v11, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda118;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda118;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/String;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;)V

    invoke-virtual {v12, v10, v13}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    return-void
.end method

.method private saveStarGiftsCached(Ljava/util/ArrayList;IJ)V
    .locals 8

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda51;

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;IJ)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p0, Lorg/telegram/messenger/R$string;->StarsNotAvailableTitle:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->StarsNotAvailableText:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private showStarsTopupInternal(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v2, v0, p2

    if-gez v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    new-instance v10, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda41;

    invoke-direct {v10}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda41;-><init>()V

    const/4 v5, 0x0

    const/4 v8, 0x4

    move-object v3, v0

    move-object v4, p1

    move-wide v6, p2

    move-object v9, p4

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->stars_topup:I

    sget p3, Lorg/telegram/messenger/R$string;->StarsTopupLinkEnough:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$string;->StarsTopupLinkTopupAnyway:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda42;-><init>()V

    invoke-virtual {p1, p2, p3, p4, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 p2, 0x1388

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private updateMediaPrice(Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;Z)V
    .locals 16

    .line 0
    move-object/from16 v10, p0

    move-object/from16 v7, p1

    if-nez v7, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    iget v1, v10, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    const v2, 0x8000

    or-int/2addr v2, v1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    iget-object v2, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->schedule_date:I

    iput v6, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    const v2, 0xc000

    or-int/2addr v1, v2

    iput v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;-><init>()V

    move-wide/from16 v8, p2

    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->stars_amount:J

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    instance-of v12, v3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-nez v12, :cond_1

    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v12, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v12, :cond_2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v3, v13, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    :goto_1
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    instance-of v12, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v12, :cond_3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v3, v13, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iput-object v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget v0, v10, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda66;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/lang/Runnable;ZJILorg/telegram/messenger/MessageObject;J)V

    invoke-virtual {v12, v11, v13}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method


# virtual methods
.method public balanceAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->balanceLoaded:Z

    return v0
.end method

.method public beforeSendingFinalRequest(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/lang/Runnable;)Z
    .locals 5

    .line 0
    const/4 v0, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getAllowedPaidStars(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    return v0

    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsController;->sendingPaidMessagesIds:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->postponedPaidMessages:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda39;

    invoke-direct {v3, p0, p1, p3}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/util/HashSet;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    xor-int/lit8 p1, v1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public beforeSendingFinalRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;)Z
    .locals 5

    .line 0
    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getAllowedPaidStars(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->sendingPaidMessagesIds:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->postponedPaidMessages:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    :cond_3
    return v0
.end method

.method public beforeSendingMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->paid_message_stars:J

    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-gtz v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, v5, v6}, Lorg/telegram/ui/Stars/StarsController;->needsUndoButton(Lorg/telegram/messenger/MessageObject;J)Z

    move-result v9

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-eqz v9, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->sendingPaidMessagesIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    new-instance v7, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda27;

    invoke-direct {v7, p0, v9}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stars/StarsController;Z)V

    new-instance v8, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda28;

    invoke-direct {v8, p0, v9, v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stars/StarsController;ZI)V

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stars/StarsController;->showPaidMessageToast(JLorg/telegram/messenger/MessageObject;JLorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public buy(Landroid/app/Activity;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;-><init>()V

    iget-wide v2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->stars:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->stars:J

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->currency:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->currency:Ljava/lang/String;

    iget-wide v2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->amount:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->amount:J

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->store_product:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    const-string v3, "StarsController.buy starts queryProductDetails"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v3

    new-array v0, v0, [Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda59;

    invoke-direct {v2, p3, v1, p2, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Landroid/app/Activity;)V

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void

    :cond_4
    :goto_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;-><init>()V

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->stars:J

    iput-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->stars:J

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->currency:Ljava/lang/String;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->currency:Ljava/lang/String;

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->amount:J

    iput-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->amount:J

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;-><init>()V

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->stars:J

    iput-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->stars:J

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->amount:J

    iput-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->amount:J

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->currency:Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsTopup;->currency:Ljava/lang/String;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;-><init>()V

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    :cond_5
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0, p3, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public buyGift(Landroid/app/Activity;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;JLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;-><init>()V

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->stars:J

    iput-wide v1, v5, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->stars:J

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->currency:Ljava/lang/String;

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->currency:Ljava/lang/String;

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->amount:J

    iput-wide v1, v5, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->amount:J

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p3

    iput-object p3, v5, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p3

    const-string p4, "inapp"

    invoke-virtual {p3, p4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p3

    iget-object p4, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->store_product:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p3

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p4

    new-array v0, v0, [Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda104;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p5

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda104;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;Landroid/app/Activity;)V

    invoke-virtual {p4, p3, v0}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void

    :cond_4
    :goto_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;-><init>()V

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->stars:J

    iput-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->stars:J

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->amount:J

    iput-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->amount:J

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;->currency:Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->currency:Ljava/lang/String;

    iget p2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;-><init>()V

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_5

    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget p3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/2addr p3, v0

    iput p3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    :cond_5
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget p3, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda105;

    invoke-direct {p4, p0, p5, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda105;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V

    invoke-virtual {p3, p1, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public buyGiveaway(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/List;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;ILjava/util/List;IZZZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;-><init>()V

    iput-boolean p9, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->only_new_subscribers:Z

    iput-boolean p8, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->winners_are_visible:Z

    iget-wide p8, p4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    iput-wide p8, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->stars:J

    iget p8, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLObject;

    iget-object p8, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->additional_peers:Ljava/util/ArrayList;

    iget p9, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    invoke-virtual {p8, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLObject;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object p6, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->countries_iso2:Ljava/util/ArrayList;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->countries_iso2:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iget p2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    :cond_5
    if-eqz p10, :cond_6

    iget p2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    iput-object p11, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->prize_description:Ljava/lang/String;

    :cond_6
    iget p2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide p2

    iput-wide p2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->random_id:J

    iput p7, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->until_date:I

    iget-object p2, p4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->currency:Ljava/lang/String;

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->currency:Ljava/lang/String;

    iget-wide p2, p4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->amount:J

    iput-wide p2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->amount:J

    iput p5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->users:I

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->store_product:Ljava/lang/String;

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p2

    const-string p3, "inapp"

    invoke-virtual {p2, p3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p2

    iget-object p3, p4, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->store_product:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p3

    new-array p4, v0, [Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda83;

    invoke-direct {p4, p0, p12, v1, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda83;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;Landroid/app/Activity;)V

    invoke-virtual {p3, p2, p4}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void

    :cond_8
    :goto_4
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;-><init>()V

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_9

    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p4, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/2addr p3, v0

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    :cond_9
    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget p3, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda84;

    invoke-direct {p4, p0, p12, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda84;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V

    invoke-virtual {p3, p2, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public buyPremiumGift(JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 15

    move-object v11, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    if-nez v0, :cond_1

    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    if-eqz v1, :cond_2

    :cond_1
    if-nez v4, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v12, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda112;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p5

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda112;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-virtual {p0, v12}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Ljava/lang/Runnable;)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-void

    :cond_4
    if-eqz v0, :cond_5

    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->months:I

    goto :goto_2

    :cond_5
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    if-eqz v0, :cond_8

    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    :goto_2
    iget v1, v11, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/DialogObject;->getName(IJ)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;-><init>()V

    iget v1, v11, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;->months:I

    if-eqz v10, :cond_6

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;->flags:I

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :cond_6
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    invoke-static {v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v12, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    :cond_7
    iput-object v3, v12, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget v0, v11, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v14, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda113;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p5

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda113;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoicePremiumGiftStars;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-virtual {v13, v12, v14}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_8
    return-void
.end method

.method public buyResellingGift(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    if-eqz v9, :cond_5

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v7, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda116;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda116;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V

    invoke-virtual {v12, v7}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Ljava/lang/Runnable;)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-void

    :cond_2
    iget v0, v12, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0, v10, v11}, Lorg/telegram/messenger/DialogObject;->getName(IJ)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftResale;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftResale;-><init>()V

    iget-object v1, v9, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftResale;->slug:Ljava/lang/String;

    iget v1, v12, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftResale;->to_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    invoke-static {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    :cond_3
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    new-instance v13, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;

    invoke-direct {v13}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;-><init>()V

    iget-wide v1, v8, Lorg/telegram/tgnet/TLRPC$PaymentForm;->form_id:J

    iput-wide v1, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->form_id:J

    iput-object v0, v13, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v5, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v5, v1

    goto :goto_2

    :cond_4
    iget v0, v12, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda117;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda117;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V

    invoke-virtual {v14, v13, v15}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public buyStarGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v7, p1

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    if-eqz v7, :cond_5

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v9, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda89;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda89;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-virtual {v13, v9}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Ljava/lang/Runnable;)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-void

    :cond_2
    iget v0, v13, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0, v10, v11}, Lorg/telegram/messenger/DialogObject;->getName(IJ)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;-><init>()V

    move/from16 v8, p2

    iput-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;->hide_name:Z

    iget v0, v13, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v0, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iput-wide v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;->gift_id:J

    move/from16 v9, p3

    iput-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;->include_upgrade:Z

    if-eqz v12, :cond_3

    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;->flags:I

    iput-object v12, v3, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :cond_3
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    invoke-static {v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget v0, v14, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v14, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    :cond_4
    iput-object v3, v14, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget v0, v13, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v13, v2

    move-object/from16 v2, p7

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda90;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGift;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-virtual {v15, v14, v13}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public canUseTon()Z
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->ton:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iget v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    if-nez v3, :cond_2

    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public commitPaidReaction()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->close()V

    :cond_0
    return-void
.end method

.method public didFullyLoadSubscriptions()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsEndReached:Z

    return v0
.end method

.method public didFullyLoadTransactions(I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->endReached:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public findUserStarGift(J)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->giftLists:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->giftLists:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v4, :cond_0

    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v5, :cond_0

    iget-wide v5, v5, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v7, v5, p1

    if-nez v7, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBalance(Z)J
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Stars/StarsController;->getBalance(ZLjava/lang/Runnable;Z)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    return-wide v0
.end method

.method public getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Ljava/lang/Runnable;)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    return-object v0
.end method

.method public getBalance(Ljava/lang/Runnable;)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
    .locals 2

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/telegram/ui/Stars/StarsController;->getBalance(ZLjava/lang/Runnable;Z)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p1

    return-object p1
.end method

.method public getBalance(ZLjava/lang/Runnable;Z)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
    .locals 5

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->balanceLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController;->lastBalanceLoaded:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->balanceLoading:Z

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    :cond_2
    const/4 p3, 0x1

    iput-boolean p3, p0, Lorg/telegram/ui/Stars/StarsController;->balanceLoading:Z

    new-instance p3, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsStatus;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsStatus;-><init>()V

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->ton:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsStatus;->ton:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object v0, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsStatus;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_3
    if-eqz p1, :cond_4

    iget-wide p1, p0, Lorg/telegram/ui/Stars/StarsController;->minus:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-static {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->ofSafe(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide p2

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController;->minus:J

    sub-long/2addr p2, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iget-object p1, p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {p2, p3, p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromDecimal(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->toTl()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-object p1
.end method

.method public getBalanceAmount()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->of(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->ton:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    :goto_0
    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getContext(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/content/Context;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    return-object p1

    :cond_1
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGiftOptions()Ljava/util/ArrayList;
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftOptionsLoading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftOptionsLoaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftOptionsLoading:Z

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsGiftOptions;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsGiftOptions;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda55;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/Stars/StarsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftOptions:Ljava/util/ArrayList;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGiveawayOptions()Ljava/util/ArrayList;
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giveawayOptionsLoading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giveawayOptionsLoaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giveawayOptionsLoading:Z

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsGiveawayOptions;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsGiveawayOptions;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda57;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/Stars/StarsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->giveawayOptions:Ljava/util/ArrayList;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->giveawayOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOptions()Ljava/util/ArrayList;
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->optionsLoading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->optionsLoaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->optionsLoading:Z

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTopupOptions;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTopupOptions;-><init>()V

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stars/StarsController;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->options:Ljava/util/ArrayList;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->options:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPaidReactionsDialogId(Lorg/telegram/messenger/MessageObject;)J
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->message:Lorg/telegram/ui/Stars/StarsController$MessageId;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController$MessageId;->from(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarsController$MessageId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsController$MessageId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->peer:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getMyPaidReactionPeer()Ljava/lang/Long;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getPaidReactionsDialogId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public getPaidReactionsDialogId(Lorg/telegram/ui/Stars/StarsController$MessageId;Lorg/telegram/tgnet/TLRPC$MessageReactions;)J
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->message:Lorg/telegram/ui/Stars/StarsController$MessageId;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarsController$MessageId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->peer:Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getMyPaidReactionPeer(Lorg/telegram/tgnet/TLRPC$MessageReactions;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getPaidReactionsDialogId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_2
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public getPaidRevenue(JJLorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    const-wide/16 p1, 0x0

    cmp-long v1, p3, p1

    if-eqz v1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda49;

    invoke-direct {p2, p5}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public getPendingPaidReactions(JI)J
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->message:Lorg/telegram/ui/Stars/StarsController$MessageId;

    iget-wide v4, v3, Lorg/telegram/ui/Stars/StarsController$MessageId;->did:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_3

    iget p1, v3, Lorg/telegram/ui/Stars/StarsController$MessageId;->mid:I

    if-eq p1, p3, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, v0, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->applied:Z

    if-nez p1, :cond_2

    return-wide v1

    :cond_2
    iget-wide p1, v0, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->amount:J

    return-wide p1

    :cond_3
    :goto_0
    return-wide v1
.end method

.method public getPendingPaidReactions(Lorg/telegram/messenger/MessageObject;)J
    .locals 2

    .line 0
    if-eqz p1, :cond_3

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->isThreadMessage:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isForwardedChannelPost()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_msg_id:I

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stars/StarsController;->getPendingPaidReactions(JI)J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    goto :goto_0

    :cond_3
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProfileGiftsList(J)Lorg/telegram/ui/Stars/StarsController$GiftsList;
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(JZ)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    return-object p1
.end method

.method public getProfileGiftsList(JZ)Lorg/telegram/ui/Stars/StarsController$GiftsList;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftLists:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarsController;->giftLists:Landroid/util/LongSparseArray;

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-direct {v0, v1, p1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;-><init>(IJ)V

    invoke-virtual {p3, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getResellingGiftForm(Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 8

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    if-eqz p1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda78;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda78;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/tl/TL_stars$StarGift;J)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Ljava/lang/Runnable;)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-void

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftResale;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftResale;-><init>()V

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftResale;->slug:Ljava/lang/String;

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftResale;->to_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    :cond_3
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget p2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda79;

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda79;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStarGift(JLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 12

    .line 0
    const/4 v0, 0x1

    new-array v8, v0, [Z

    const/4 v9, 0x0

    aput-boolean v9, v8, v9

    new-array v10, v0, [Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    new-instance v11, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda64;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v8

    move-wide v4, p1

    move-object v6, v10

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/Stars/StarsController;[ZJ[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/messenger/Utilities$Callback;)V

    aput-object v11, v10, v9

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    aget-object v2, v10, v9

    sget v3, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->getStarGift(J)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object p1

    if-eqz p1, :cond_0

    aput-boolean v0, v8, v9

    iget p2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    aget-object v0, v10, v9

    invoke-virtual {p2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda65;

    invoke-direct {p1, p0, v8, v10}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/ui/Stars/StarsController;[Z[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V

    return-object p1
.end method

.method public getStarGift(J)Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    .locals 5

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->loadStarGifts()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v2, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStarGiftPreview(JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftPreviews:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftUpgradePreview;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$getStarGiftUpgradePreview;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$getStarGiftUpgradePreview;-><init>()V

    iput-wide p1, v0, Lorg/telegram/tgnet/tl/TL_stars$getStarGiftUpgradePreview;->gift_id:J

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda82;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda82;-><init>(Lorg/telegram/ui/Stars/StarsController;JLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public getUserStarGift(Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGift;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGift;-><init>()V

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$getSavedStarGift;->stargift:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda53;

    invoke-direct {v3, p0, v0, p1, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public hasInsufficientSubscriptions()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->insufficientSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSubscriptions()Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransactions()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions(I)Z

    move-result v0

    return v0
.end method

.method public hasTransactions(I)Z
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->transactions:[Ljava/util/ArrayList;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hidePaidMessageToast(Lorg/telegram/messenger/MessageObject;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;->dialogId:J

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;->pop(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    :cond_1
    return-void
.end method

.method public invalidateBalance()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->balanceLoaded:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->balanceLoaded:Z

    return-void
.end method

.method public invalidateBalance(Ljava/lang/Runnable;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->balanceLoaded:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/telegram/ui/Stars/StarsController;->getBalance(ZLjava/lang/Runnable;Z)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarsController;->balanceLoaded:Z

    return-void
.end method

.method public invalidateProfileGifts(J)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(JZ)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public invalidateProfileGifts(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 3

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(JZ)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->stargifts_count:I

    if-eq v1, p1, :cond_1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->invalidate(Z)V

    :cond_1
    return-void
.end method

.method public invalidateStarGifts()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsLoaded:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsCacheLoaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsRemoteTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->loadStarGifts()V

    return-void
.end method

.method public invalidateSubscriptions(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsOffset:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsLoading:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsEndReached:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->loadSubscriptions()V

    :cond_1
    return-void
.end method

.method public invalidateTransactions(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->loading:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->transactions:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->offset:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->loading:[Z

    aput-boolean v0, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController;->endReached:[Z

    aput-boolean v0, v2, v1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stars/StarsController;->loadTransactions(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isLoadingSubscriptions()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsLoading:Z

    return v0
.end method

.method public loadInsufficientSubscriptions()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->insufficientSubscriptionsLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->insufficientSubscriptionsLoading:Z

    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$TL_getStarsSubscriptions;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$TL_getStarsSubscriptions;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_getStarsSubscriptions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-boolean v0, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_getStarsSubscriptions;->missing_balance:Z

    const-string v0, ""

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_getStarsSubscriptions;->offset:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stars/StarsController;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public loadStarGifts()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsLoading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsController;->giftsRemoteTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsLoading:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsCacheLoaded:Z

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarsController;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stars/StarsController;->getStarGiftsCached(Lorg/telegram/messenger/Utilities$Callback3;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->giftsHash:I

    new-instance v1, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarsController;)V

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stars/StarsController;->getStarGiftsRemote(ILorg/telegram/messenger/Utilities$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadSubscriptions()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->ton:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsLoading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsEndReached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsLoading:Z

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_getStarsSubscriptions;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_getStarsSubscriptions;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_getStarsSubscriptions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->subscriptionsOffset:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_getStarsSubscriptions;->offset:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_getStarsSubscriptions;->offset:Ljava/lang/String;

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stars/StarsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public loadTransactions(I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->loading:[Z

    aget-boolean v1, v0, p1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->endReached:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;-><init>()V

    iget-boolean v2, p0, Lorg/telegram/ui/Stars/StarsController;->ton:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->ton:Z

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->inbound:Z

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->outbound:Z

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->offset:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->offset:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->offset:Ljava/lang/String;

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stars/StarsController;I)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public makeStarGiftSoldOut(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarsController;->giftsLoaded:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController;->gifts:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Stars/StarsController;->giftsHash:I

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsController;->giftsRemoteTime:J

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/Stars/StarsController;->saveStarGiftsCached(Ljava/util/ArrayList;IJ)V

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->starGiftSoldOut:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public openPaymentForm(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 27

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v12, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v12, :cond_a

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    if-eqz v2, :cond_a

    iget-boolean v2, v14, Lorg/telegram/ui/Stars/StarsController;->paymentFormOpened:Z

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v2, v14, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_1

    :goto_0
    move-object/from16 v16, v2

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v17

    if-nez v16, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v7, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda21;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stars/StarsController;Ljava/lang/Runnable;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v14, v7}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Ljava/lang/Runnable;)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-void

    :cond_3
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide/from16 v18, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long v18, v18, v5

    goto :goto_2

    :cond_4
    if-eqz v15, :cond_6

    iget v2, v15, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x1d

    if-ne v2, v5, :cond_6

    iget-object v2, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    :goto_3
    move-wide v10, v5

    goto :goto_4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    goto :goto_3

    :cond_6
    iget-wide v5, v12, Lorg/telegram/tgnet/TLRPC$PaymentForm;->bot_id:J

    goto :goto_3

    :goto_4
    cmp-long v2, v10, v3

    if-ltz v2, :cond_7

    iget v2, v14, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    xor-int/2addr v2, v0

    move v8, v2

    move-object v9, v3

    goto :goto_6

    :cond_7
    iget v2, v14, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v3, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, ""

    goto :goto_5

    :cond_8
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_5
    move-object v9, v2

    const/4 v8, 0x0

    :goto_6
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PaymentForm;->title:Ljava/lang/String;

    if-eqz p4, :cond_9

    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    :cond_9
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->subscription_period:I

    new-array v6, v0, [Z

    aput-boolean v1, v6, v1

    iget v5, v14, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$PaymentForm;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    new-instance v20, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    move-object/from16 v21, v4

    move-object v4, v6

    move/from16 v22, v5

    move-object/from16 v5, p5

    move-object v15, v6

    move-object/from16 v6, v16

    move/from16 v23, v7

    move-object/from16 v7, v17

    move-wide/from16 v24, v10

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v26, v13

    move/from16 v13, v23

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stars/StarsController;J[ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;I)V

    new-instance v12, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda23;

    move-object/from16 v0, p5

    invoke-direct {v12, v14, v15, v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/messenger/Utilities$Callback;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v22

    move-object/from16 v3, p1

    move-wide/from16 v4, v24

    move-object/from16 v6, v26

    move-wide/from16 v7, v18

    move-object/from16 v9, v21

    move/from16 v10, v23

    move-object/from16 v11, v20

    invoke-static/range {v0 .. v12}, Lorg/telegram/ui/Stars/StarsIntroActivity;->openConfirmPurchaseSheet(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/MessageObject;JLjava/lang/String;JLorg/telegram/tgnet/TLRPC$WebDocument;ILorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_a
    :goto_7
    return-void
.end method

.method public pay(Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 6

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    if-eqz p1, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;-><init>()V

    iget v5, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;->msg_id:I

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    :cond_2
    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda62;

    invoke-direct {v2, p0, p1, v4, p2}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceMessage;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    new-instance p2, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda63;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/Stars/StarsController;I)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public payAfterConfirmed(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 18

    .line 0
    move-object/from16 v15, p0

    move-object/from16 v3, p1

    move-object/from16 v14, p3

    if-nez v14, :cond_0

    return-void

    :cond_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v5, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v5, v7

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_5

    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    :goto_1
    cmp-long v0, v7, v1

    if-gez v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    cmp-long v0, v9, v1

    if-lez v0, :cond_4

    iget v0, v15, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v9, :cond_4

    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :cond_4
    :goto_2
    move-wide v11, v7

    goto :goto_3

    :cond_5
    iget-wide v7, v14, Lorg/telegram/tgnet/TLRPC$PaymentForm;->bot_id:J

    goto :goto_2

    :goto_3
    cmp-long v0, v11, v1

    if-ltz v0, :cond_6

    iget v0, v15, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v7, v0

    goto :goto_5

    :cond_6
    iget v0, v15, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v1, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_4

    :cond_7
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_4

    :goto_5
    iget-object v9, v14, Lorg/telegram/tgnet/TLRPC$PaymentForm;->title:Ljava/lang/String;

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->subscription_period:I

    new-instance v10, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;

    invoke-direct {v10}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;-><init>()V

    iget-wide v0, v14, Lorg/telegram/tgnet/TLRPC$PaymentForm;->form_id:J

    iput-wide v0, v10, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->form_id:J

    move-object/from16 v2, p2

    iput-object v2, v10, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget v0, v15, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda70;

    move-object/from16 v16, v0

    move-object v15, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v17, v10

    move-object/from16 v10, p2

    move-object/from16 v14, p3

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/MessageObject;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputInvoice;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;)V

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public processUpdateMonoForumNoPaidException(JJZ)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-boolean p5, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->nopaid_messages_exception:Z

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/TopicsController;->saveTopics(J)V

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesFeeUpdated:I

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p3, p4, p5

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public sendPaidReaction(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JZZLjava/lang/Long;)Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;
    .locals 23

    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move-object/from16 v11, p7

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Stars/StarsController$MessageId;->from(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarsController$MessageId;

    move-result-object v12

    iget v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v13

    move-object/from16 v14, p2

    invoke-virtual {v8, v14}, Lorg/telegram/ui/Stars/StarsController;->getContext(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    if-nez v15, :cond_0

    return-object v16

    :cond_0
    const-string v17, ""

    const-wide/16 v18, 0x0

    const/4 v7, 0x0

    if-eqz p6, :cond_3

    invoke-virtual {v13}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v13, v7}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Z)J

    move-result-wide v0

    cmp-long v2, v0, v18

    if-gtz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    cmp-long v2, v0, v18

    if-ltz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object/from16 v17, v0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :goto_1
    new-instance v12, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    new-instance v13, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda36;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JLjava/lang/Long;)V

    const/4 v5, 0x5

    move-object v0, v12

    move-object v1, v15

    move-object v2, v7

    move-wide/from16 v3, p3

    move-object/from16 v6, v17

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    return-object v16

    :cond_3
    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->message:Lorg/telegram/ui/Stars/StarsController$MessageId;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Stars/StarsController$MessageId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v20, v15

    const/4 v15, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->close()V

    :cond_6
    new-instance v5, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    iget v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    int-to-long v3, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v20, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v14, v5

    move-wide/from16 v5, v20

    move-object/from16 v20, v15

    const/4 v15, 0x0

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/ui/Stars/StarsController$MessageId;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JZ)V

    iput-object v14, v8, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    iput-object v11, v14, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->peer:Ljava/lang/Long;

    :goto_3
    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    iget-wide v0, v0, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->amount:J

    add-long/2addr v0, v9

    iget v2, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController;->starsPaidReactionAmountMax:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->close()V

    new-instance v14, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    iget v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    int-to-long v5, v0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/ui/Stars/StarsController$MessageId;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JZ)V

    iput-object v14, v8, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    :cond_7
    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    iget-wide v0, v0, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->amount:J

    add-long v21, v0, v9

    if-eqz p6, :cond_a

    invoke-virtual {v13}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v13, v15}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Z)J

    move-result-wide v0

    cmp-long v2, v0, v21

    if-gez v2, :cond_a

    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->cancel()V

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    cmp-long v2, v0, v18

    if-ltz v2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object/from16 v17, v0

    goto :goto_5

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_4

    :goto_5
    new-instance v9, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    new-instance v10, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda37;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, v21

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JLjava/lang/Long;)V

    const/4 v5, 0x5

    move-object v0, v9

    move-object/from16 v1, v20

    move-object v2, v7

    move-wide/from16 v3, v21

    move-object/from16 v6, v17

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    return-object v16

    :cond_a
    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->doesPaidReactionExist()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    if-eqz p5, :cond_d

    :cond_c
    const/4 v7, 0x1

    goto :goto_6

    :cond_d
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v0, v9, v10, v7}, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->add(JZ)V

    iget-object v0, v8, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->peer:Ljava/lang/Long;

    return-object v0
.end method

.method public showPaidMessageToast(JLorg/telegram/messenger/MessageObject;JLorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;Z)V
    .locals 9

    move-object v0, p0

    move-wide v1, p1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {v4}, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;->access$000(Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    invoke-static {v4}, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;->access$100(Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->isRemovingFromStack()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    iget-wide v6, v4, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;->dialogId:J

    cmp-long v8, v6, v1

    if-nez v8, :cond_2

    iget-object v4, v4, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eq v4, v3, :cond_3

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    invoke-virtual {v4}, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;->send()V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    :cond_3
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->isRemovingFromStack()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    if-nez v4, :cond_5

    new-instance v4, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    invoke-direct {v4, p0, v3, p1, p2}, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;-><init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/ui/ActionBar/BaseFragment;J)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsController;->currentPaidMessagesToast:Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarsController$PaidMessagesToast;->push(Lorg/telegram/messenger/MessageObject;JLorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;Z)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p7, :cond_6

    invoke-interface/range {p7 .. p7}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void

    :cond_7
    :goto_0
    if-eqz p7, :cond_8

    invoke-interface/range {p7 .. p7}, Ljava/lang/Runnable;->run()V

    :cond_8
    return-void
.end method

.method public showPriceChangedToast(Ljava/util/List;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    iget v4, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    if-ltz v6, :cond_1

    iget v5, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v4, v2, v1, v0}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    goto :goto_0

    :cond_1
    neg-long v2, v2

    invoke-virtual {v4, v2, v3, v1, v0}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    :goto_0
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    long-to-int v3, v2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "PaidMessagesSendErrorToast1"

    invoke-static {v4, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    long-to-int p1, v3

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "PaidMessagesSendErrorToast2"

    invoke-static {v4, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v2, v3, v1

    const-string v1, " "

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    :goto_1
    return-void
.end method

.method public showStarsTopup(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda26;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stars/StarsController;Landroid/app/Activity;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Ljava/lang/Runnable;)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->showStarsTopupInternal(Landroid/app/Activity;JLjava/lang/String;)V

    return-void
.end method

.method public stopPaidMessages(JJZZ)V
    .locals 9

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-eqz v3, :cond_0

    iget v1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_0
    iput-boolean p5, v0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->refund_charged:Z

    xor-int/lit8 p5, p6, 0x1

    iput-boolean p5, v0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->require_payment:Z

    iget p5, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p5

    new-instance v8, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda40;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p1

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stars/StarsController;JJZ)V

    invoke-virtual {p5, v0, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public subscribeTo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 17

    move-object/from16 v11, p2

    const/4 v0, 0x0

    if-eqz v11, :cond_0

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    if-nez v1, :cond_1

    :cond_0
    move-object/from16 v6, p0

    goto :goto_2

    :cond_1
    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_2

    :goto_0
    move-object v12, v1

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsController;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget-wide v2, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    if-nez v12, :cond_3

    return-void

    :cond_3
    sget v14, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v1, 0x1

    new-array v15, v1, [Z

    aput-boolean v0, v15, v0

    new-instance v16, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda75;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, p3

    move-object v7, v12

    move-object v8, v13

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda75;-><init>(Lorg/telegram/ui/Stars/StarsController;JI[ZLorg/telegram/messenger/Utilities$Callback2;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;)V

    new-instance v5, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda76;

    move-object/from16 v6, p0

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v15, v0}, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda76;-><init>(Lorg/telegram/ui/Stars/StarsController;[ZLorg/telegram/messenger/Utilities$Callback2;)V

    move-object v0, v12

    move-object v1, v13

    move v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->openStarsChannelInviteSheet(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/tgnet/TLRPC$ChatInvite;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :goto_2
    return-void
.end method

.method public undoPaidReaction()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->currentPendingReactions:Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;->cancel()V

    :cond_0
    return-void
.end method

.method public updateBalance(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->equals(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iput-wide v2, p0, Lorg/telegram/ui/Stars/StarsController;->minus:J

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsController;->minus:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_1

    iput-wide v2, p0, Lorg/telegram/ui/Stars/StarsController;->minus:J

    iget p1, p0, Lorg/telegram/ui/Stars/StarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateMediaPrice(Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;)V
    .locals 6

    .line 0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController;->updateMediaPrice(Lorg/telegram/messenger/MessageObject;JLjava/lang/Runnable;Z)V

    return-void
.end method
