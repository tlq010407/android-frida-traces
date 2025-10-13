.class public Lorg/telegram/ui/Gifts/SendGiftSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private final action:Lorg/telegram/tgnet/TLRPC$MessageAction;

.field private final actionCell:Lorg/telegram/ui/Cells/ChatActionCell;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field public final animationsLock:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field public anonymous:Z

.field private final button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final buttonContainer:Landroid/widget/LinearLayout;

.field private final cachedStarSpan:[Lorg/telegram/ui/Components/ColoredImageSpan;

.field private final chatLinearLayout:Landroid/widget/LinearLayout;

.field private final chatView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private final closeParentSheet:Ljava/lang/Runnable;

.field private final currentAccount:I

.field private final dialogId:J

.field private final forceNotUpgrade:Z

.field private final forceUpgrade:Z

.field private final leftTextView:Landroid/widget/TextView;

.field private final leftTextView2:Landroid/widget/TextView;

.field private final limitContainer:Landroid/widget/FrameLayout;

.field private final limitProgressView:Landroid/view/View;

.field private messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

.field private final messageObject:Lorg/telegram/messenger/MessageObject;

.field private final name:Ljava/lang/String;

.field private final premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

.field private final self:Z

.field private final send_paid_messages_stars:J

.field private shakeDp:I

.field private final soldTextView:Landroid/widget/TextView;

.field private final soldTextView2:Landroid/widget/TextView;

.field private final starGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

.field public upgrade:Z

.field public useStars:Z

.field private final valueContainerView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$2zBivikTFH0Tps-adzTJqUukiFY(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$5(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6F1U0v3SpurRpJtHihd5cNOrqWA(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$3(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C5zp4dBF1_oU6U2yC-NlNzrKquw(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$StarGift;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$new$0(Lorg/telegram/tgnet/tl/TL_stars$StarGift;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CYKjo1KJEEi00nS4T5VNCf8d6VY(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Void;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$6(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CqHN52cAUO2LkQlZAyc2gtKKXkg(Lorg/telegram/ui/Gifts/SendGiftSheet;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$12(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NpB2L-uAlPg-lvYe1t0TPOkAOsE(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$9(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SfLDjl3sTg_yGhizxJ1u2phdFys(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$4(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XVcEqs8yap_IzEFK0np8Rbyym2w(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$14(Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bwaLn5NB9435HSFoVExd8Rxe3_A(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$7(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dhnddA5Unqoi5MDvSA18YYN-Zw0(Lorg/telegram/ui/Gifts/SendGiftSheet;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyStarGift$2(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hh4_msf_hjn-FhzoAq65wNt339M(Lorg/telegram/ui/Gifts/SendGiftSheet;ZZLorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$new$1(ZZLorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oqjwRp0kzVPvmZhYawyZq7q74-A(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$8(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s01LQmzZ7wlZ0TjmCsCey2M1g1s(Lorg/telegram/ui/Gifts/SendGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$uzprPFg0GZJLKkANZZ2u-uB5-ms(Lorg/telegram/ui/Gifts/SendGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$fillItems$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$xLVeke1px54zpWH2PDu-FOP9QBY(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yhDsyBeln4DkKfdlYy9OSQ5730k(Lorg/telegram/ui/Gifts/SendGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$buyPremiumTier$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$zpi2hkgp5zf9k9AX6FIa6-aYyHk(Lorg/telegram/ui/Gifts/SendGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->lambda$fillItems$15()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;JLjava/lang/Runnable;ZZ)V
    .locals 10

    .line 0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Gifts/SendGiftSheet;-><init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;JLjava/lang/Runnable;ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;JLjava/lang/Runnable;ZZ)V
    .locals 24

    .line 0
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v9, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-wide/from16 v14, p5

    move/from16 v8, p8

    move/from16 v7, p9

    sget-object v16, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;->SLIDING:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, v16

    move v11, v8

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v8, 0x0

    iput-boolean v8, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->upgrade:Z

    iput-boolean v8, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->useStars:Z

    const/4 v7, -0x2

    iput v7, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->shakeDp:I

    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->animationsLock:Lorg/telegram/messenger/AnimationNotificationsLocker;

    const/4 v6, 0x1

    new-array v0, v6, [Lorg/telegram/ui/Components/ColoredImageSpan;

    iput-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->cachedStarSpan:[Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long v2, v14, v0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->self:Z

    const/4 v1, 0x4

    invoke-virtual {v10, v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setImageReceiverNumLevel(II)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v10, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerPaddingTop:I

    const/high16 v2, -0x3ee00000    # -10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v10, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerPaddingBottom:I

    if-eqz v0, :cond_1

    iput-boolean v6, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->anonymous:Z

    :cond_1
    iput v9, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    iput-wide v14, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    iput-object v12, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->starGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iput-object v13, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    move-object/from16 v2, p7

    iput-object v2, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->closeParentSheet:Ljava/lang/Runnable;

    iput-boolean v11, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->forceUpgrade:Z

    move/from16 v5, p9

    iput-boolean v5, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->forceNotUpgrade:Z

    if-eqz v11, :cond_2

    iput-boolean v6, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->upgrade:Z

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    iput-boolean v8, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->upgrade:Z

    :cond_3
    :goto_1
    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v10, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    const-wide/16 v2, 0x0

    cmp-long v4, v14, v2

    if-ltz v4, :cond_4

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->name:Ljava/lang/String;

    goto :goto_3

    :cond_4
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    goto :goto_2

    :cond_5
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2
    iput-object v2, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->name:Ljava/lang/String;

    :goto_3
    new-instance v2, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v3, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v11, p1

    invoke-direct {v2, v11, v8, v3}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->actionCell:Lorg/telegram/ui/Cells/ChatActionCell;

    new-instance v3, Lorg/telegram/ui/Gifts/SendGiftSheet$1;

    invoke-direct {v3, v10}, Lorg/telegram/ui/Gifts/SendGiftSheet$1;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    new-instance v3, Lorg/telegram/ui/Gifts/SendGiftSheet$2;

    invoke-direct {v3, v10, v11}, Lorg/telegram/ui/Gifts/SendGiftSheet$2;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Landroid/content/Context;)V

    iput-object v3, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->chatView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v4

    const/4 v7, 0x0

    invoke-static {v7, v9, v14, v15, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->chatLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz v12, :cond_6

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;-><init>()V

    iput-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-wide v8, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->convert_stars:J

    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->convert_stars:J

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->forceIn:Z

    iput-object v1, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v2

    move-object/from16 p7, v3

    move-object v8, v4

    goto/16 :goto_5

    :cond_6
    if-eqz v13, :cond_8

    iget-object v9, v13, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->giftCodeOption:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    if-eqz v9, :cond_8

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;-><init>()V

    iput-boolean v6, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->unclaimed:Z

    const/4 v6, 0x0

    iput-boolean v6, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->via_giveaway:Z

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getMonths()I

    move-result v6

    iput v6, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    iget v6, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    or-int/2addr v1, v6

    iput v1, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getCurrency()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPrice()J

    move-result-wide v7

    iput-wide v7, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    iget-object v1, v13, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    if-eqz v1, :cond_7

    long-to-double v6, v7

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    move-object/from16 p7, v3

    move-object v8, v4

    int-to-double v3, v1

    move-object/from16 v23, v2

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v1

    double-to-long v1, v6

    iput-wide v1, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    goto :goto_4

    :cond_7
    move-object/from16 v23, v2

    move-object/from16 p7, v3

    move-object v8, v4

    :goto_4
    iget v1, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v9, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    goto :goto_5

    :cond_8
    move-object/from16 v23, v2

    move-object/from16 p7, v3

    move-object v8, v4

    if-eqz v13, :cond_1a

    iget-object v1, v13, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->giftOption:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    if-eqz v1, :cond_1a

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getMonths()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getCurrency()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPrice()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    iget-object v4, v13, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    if-eqz v4, :cond_9

    long-to-double v2, v2

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v4

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    int-to-double v6, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-long v2, v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    :cond_9
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v1, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    :goto_5
    iget-object v1, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v2, :cond_f

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-boolean v2, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->upgrade:Z

    if-nez v2, :cond_b

    if-eqz v0, :cond_a

    if-eqz v12, :cond_a

    iget-boolean v3, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->can_upgrade:Z

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->can_upgrade:Z

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    if-eqz v2, :cond_d

    iget-wide v3, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->upgrade_stars:J

    goto :goto_9

    :cond_d
    :goto_8
    const-wide/16 v3, 0x0

    :goto_9
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_stars:J

    if-eqz v2, :cond_e

    const-wide/16 v2, 0x0

    goto :goto_a

    :cond_e
    iget-wide v2, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->convert_stars:J

    :goto_a
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->convert_stars:J

    :cond_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput-wide v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v1, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v12, :cond_10

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v1

    goto :goto_b

    :cond_10
    const-wide/16 v1, 0x0

    :goto_b
    iput-wide v1, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->send_paid_messages_stars:J

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    move/from16 v14, p2

    const/4 v9, 0x0

    invoke-direct {v3, v14, v0, v9, v9}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v3, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v23

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_11

    const/16 v21, 0x0

    goto :goto_c

    :cond_11
    const/16 v21, 0x8

    :goto_c
    const/16 v22, 0x0

    const/16 v23, 0x8

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x77

    const/16 v20, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    move-object v2, v8

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, -0x1

    const/16 v7, 0x77

    invoke-static {v8, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    move-object/from16 v1, p7

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Gifts/SendGiftSheet$3;

    iget-object v0, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v12, :cond_12

    sget v0, Lorg/telegram/messenger/R$string;->Gift2Message:I

    goto :goto_d

    :cond_12
    sget v0, Lorg/telegram/messenger/R$string;->Gift2MessageOptional:I

    :goto_d
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v2, v0, Lorg/telegram/messenger/MessagesController;->stargiftsMessageLengthMax:I

    iget-object v1, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v17, 0x1

    const/16 v18, 0x4

    move-object v0, v5

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v2

    move-object/from16 v2, p1

    move-object v15, v5

    move/from16 v5, v17

    move/from16 v6, v20

    move/from16 v7, v18

    move-object/from16 v8, v19

    const/4 v13, 0x0

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Gifts/SendGiftSheet$3;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Ljava/lang/String;ZIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v15, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object v0, v15, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/EditTextSuggestionsFix;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EditTextSuggestionsFix;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->allowEmojisForNonPremium(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->setShowLimitWhenNear(I)V

    iget-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setEditTextEmoji(Lorg/telegram/ui/Components/EditTextEmoji;)V

    iget-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->setShowLimitOnFocus(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v3, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->setDivider(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->hideKeyboardOnEnter()V

    iget-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget v3, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v0, v3, v13, v3, v13}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/Gifts/SendGiftSheet$4;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Gifts/SendGiftSheet$4;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x28

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayIncrement(J)V

    iget-object v3, v10, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v3, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    if-eqz v12, :cond_13

    iget-boolean v4, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v4, :cond_13

    const/16 v8, 0x28

    goto :goto_e

    :cond_13
    const/4 v8, 0x0

    :goto_e
    const/16 v4, 0x44

    add-int/2addr v4, v8

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v3, v13, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget v2, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v0, v2, v13, v2, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v3, 0x57

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-static {v5, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGrayLine:I

    iget-object v4, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v6, 0x37

    invoke-static {v3, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(FFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    if-nez v12, :cond_14

    const/4 v3, 0x0

    goto :goto_f

    :cond_14
    iget v3, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    int-to-float v3, v3

    iget v4, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    :goto_f
    const v4, 0x3f7851ec    # 0.97f

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->limitContainer:Landroid/widget/FrameLayout;

    if-eqz v12, :cond_15

    iget-boolean v4, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v4, :cond_15

    const/4 v8, 0x0

    goto :goto_10

    :cond_15
    const/16 v8, 0x8

    :goto_10
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v8, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v18, 0x41200000    # 10.0f

    const/16 v19, 0x0

    const/4 v14, -0x1

    const/16 v15, 0x1e

    const/high16 v16, 0x41200000    # 10.0f

    const/high16 v17, 0x41200000    # 10.0f

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->leftTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v8, 0x13

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v14, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v14, "Gift2AvailabilityLeft"

    if-eqz v12, :cond_16

    iget v15, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    const/high16 v21, 0x41300000    # 11.0f

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x3

    const/high16 v19, 0x41300000    # 11.0f

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->soldTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v15, 0x15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v15, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v9, "Gift2AvailabilitySold"

    if-eqz v12, :cond_17

    iget v15, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    iget v8, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    sub-int/2addr v15, v8

    invoke-static {v9, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    const/high16 v20, 0x41300000    # 11.0f

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x5

    const/high16 v18, 0x41300000    # 11.0f

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Gifts/SendGiftSheet$5;

    invoke-direct {v6, v10, v11, v12, v2}, Lorg/telegram/ui/Gifts/SendGiftSheet$5;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stars$StarGift;F)V

    iput-object v6, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->limitProgressView:Landroid/view/View;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v15, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-static {v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x77

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Gifts/SendGiftSheet$6;

    invoke-direct {v6, v10, v11, v2}, Lorg/telegram/ui/Gifts/SendGiftSheet$6;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Landroid/content/Context;F)V

    iput-object v6, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->valueContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v13}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->leftTextView2:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v12, :cond_18

    iget v3, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    invoke-static {v14, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    const/high16 v19, 0x41300000    # 11.0f

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x3

    const/high16 v17, 0x41300000    # 11.0f

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->soldTextView2:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v12, :cond_19

    iget v3, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    iget v4, v12, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    sub-int/2addr v3, v4

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    const/high16 v19, 0x41300000    # 11.0f

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x5

    const/high16 v17, 0x41300000    # 11.0f

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v3, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v11, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v10, v13}, Lorg/telegram/ui/Gifts/SendGiftSheet;->setButtonText(Z)V

    const/16 v19, 0xa

    const/16 v20, 0xa

    const/16 v15, 0x30

    const/16 v16, 0x77

    const/16 v17, 0xa

    const/16 v18, 0xa

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, v10, v12}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-boolean v1, v10, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-object v0, v10, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, v10, Lorg/telegram/ui/Gifts/SendGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object v6, v10, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda2;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;ZZLorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SendGiftSheet with no star gift and no premium tier"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;JLjava/lang/Runnable;)V
    .locals 10

    .line 0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Gifts/SendGiftSheet;-><init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;JLjava/lang/Runnable;ZZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Gifts/SendGiftSheet;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->chatLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/ui/Cells/ChatActionCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->actionCell:Lorg/telegram/ui/Cells/ChatActionCell;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/tgnet/TLRPC$MessageAction;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/ui/Cells/EditEmojiTextCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/ui/Components/UniversalAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Gifts/SendGiftSheet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->setButtonText(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Gifts/SendGiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private buyPremiumTier()V
    .locals 13

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void

    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->useStars:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->isStarsPaymentAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStarsOption()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iget-object v4, v3, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->giftCodeOption:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    if-eqz v4, :cond_3

    move-object v3, v4

    goto :goto_0

    :cond_3
    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->giftOption:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    if-eqz v3, :cond_0

    :goto_0
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    const-string v5, "XTR"

    if-eqz v4, :cond_5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v6

    iget-wide v7, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->getMessage()Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda5;

    invoke-direct {v11, p0, v1}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLRPC$User;)V

    move-object v9, v3

    :goto_1
    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Stars/StarsController;->buyPremiumGift(JLjava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V

    goto/16 :goto_3

    :cond_4
    new-instance v10, Lorg/telegram/ui/Gifts/SendGiftSheet$7;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Gifts/SendGiftSheet$7;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V

    new-instance v6, Ljava/util/ArrayList;

    new-array v0, v0, [Lorg/telegram/tgnet/TLRPC$User;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->getMessage()Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v9

    new-instance v11, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda6;

    invoke-direct {v11, p0, v1}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLRPC$User;)V

    new-instance v12, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda7;

    invoke-direct {v12, p0}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V

    const/4 v8, 0x0

    move-object v7, v3

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->payGiftCode(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_3

    :cond_5
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    if-eqz v2, :cond_a

    move-object v9, v3

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->currency:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v6

    iget-wide v7, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->getMessage()Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda8;

    invoke-direct {v11, p0, v1}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_a

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->bot_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "t.me"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/invoice/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1, v0}, Lorg/telegram/ui/LaunchActivity;->setNavigateToPremiumBot(Z)V

    goto :goto_2

    :cond_7
    new-instance v0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/LaunchActivity;->setNavigateToPremiumGiftCallback(Ljava/lang/Runnable;)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->giftOption:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->bot_url:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->dismiss()V

    goto/16 :goto_3

    :cond_9
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    if-eqz v0, :cond_a

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;-><init>()V

    iget v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;->currency:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result v3

    int-to-double v3, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;->amount:J

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->giftOption:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->store_product:Ljava/lang/String;

    new-instance v3, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/BillingController;->addResultListener(Ljava/lang/String;Landroidx/core/util/Consumer;)V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    iget v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_a
    :goto_3
    return-void
.end method

.method private buyStarGift()V
    .locals 9

    iget v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->starGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-boolean v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->anonymous:Z

    iget-boolean v4, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->upgrade:Z

    iget-wide v5, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->getMessage()Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda12;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Stars/StarsController;->buyStarGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private getMessage()Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    return-object v4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    return-object v0

    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    return-object v0

    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    return-object v0

    :cond_3
    return-object v4
.end method

.method private synthetic lambda$buyPremiumTier$10()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->onGiftSuccess(Z)V

    return-void
.end method

.method private synthetic lambda$buyPremiumTier$11()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->onGiftSuccess(Z)V

    return-void
.end method

.method private synthetic lambda$buyPremiumTier$12(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buyPremiumTier$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V
    .locals 2

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    iget p4, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p4

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p3, p4, p2, v0}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p3, p2, p4, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$buyPremiumTier$14(Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda14;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentGiftPremium;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$buyPremiumTier$3(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->show(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$buyPremiumTier$4(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->closeParentSheet:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->dismiss()V

    new-instance p2, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda16;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    const-wide/16 v1, 0xfa

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v1, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private static synthetic lambda$buyPremiumTier$5(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->show(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$buyPremiumTier$6(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Void;)V
    .locals 4

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->closeParentSheet:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->dismiss()V

    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->giftsToUserSent:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    new-instance p2, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda13;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    const-wide/16 v0, 0xfa

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show_gift_for_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$buyPremiumTier$7(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private static synthetic lambda$buyPremiumTier$8(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->show(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$buyPremiumTier$9(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->closeParentSheet:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->dismiss()V

    new-instance p2, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda15;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    const-wide/16 v1, 0xfa

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v1, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$buyStarGift$2(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->closeParentSheet:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->dismiss()V

    goto :goto_0

    :cond_1
    const-string p1, "STARGIFT_USAGE_LIMITED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->dismiss()V

    iget p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->starGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stars/StarsController;->makeStarGiftSoldOut(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$fillItems$15()V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->starGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-object v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->openAsLearnMore(JLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$fillItems$16()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/tl/TL_stars$StarGift;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object p2, p2, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object p2, p2, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object p2, p2, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->isKeyboardVisible()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object p2, p2, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->buyStarGift()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->buyPremiumTier()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$1(ZZLorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p6, p6, -0x1

    :goto_0
    invoke-virtual {v0, p6}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p6

    if-nez p6, :cond_1

    return-void

    :cond_1
    iget p6, p6, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v0, 0x1

    if-ne p6, v0, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->anonymous:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->anonymous:Z

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz p3, :cond_2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iput-boolean p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->name_hidden:Z

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->updateMessageText()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->actionCell:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto/16 :goto_b

    :cond_3
    const/4 v1, 0x2

    if-ne p6, v1, :cond_b

    if-nez p1, :cond_a

    if-eqz p2, :cond_4

    goto :goto_6

    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->upgrade:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->upgrade:Z

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of p4, p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz p4, :cond_f

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-nez p1, :cond_6

    iget-boolean p4, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->self:Z

    if-eqz p4, :cond_5

    if-eqz p3, :cond_5

    iget-boolean p3, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->can_upgrade:Z

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p3, 0x1

    :goto_2
    iput-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->can_upgrade:Z

    iget-boolean p3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->self:Z

    const-wide/16 p4, 0x0

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    iget-object p3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->starGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v1, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->upgrade_stars:J

    goto :goto_4

    :cond_8
    :goto_3
    move-wide v1, p4

    :goto_4
    iput-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_stars:J

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->starGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide p4, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->convert_stars:J

    :goto_5
    iput-wide p4, p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->convert_stars:J

    goto :goto_a

    :cond_a
    :goto_6
    iget p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->shakeDp:I

    neg-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->shakeDp:I

    int-to-float p1, p1

    invoke-static {p5, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    :cond_b
    const/4 p1, 0x3

    if-ne p6, p1, :cond_10

    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->useStars:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->useStars:Z

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    if-eqz p3, :cond_d

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getCurrency()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPrice()J

    move-result-wide p5

    iput-wide p5, p2, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    iget-object p1, p4, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    if-eqz p1, :cond_f

    goto :goto_9

    :cond_d
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    if-eqz p3, :cond_f

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftCode;

    if-eqz p1, :cond_e

    :goto_7
    const-string p1, "XTR"

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStarsPrice()J

    move-result-wide p3

    :goto_8
    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    goto :goto_a

    :cond_e
    invoke-virtual {p4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getCurrency()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPrice()J

    move-result-wide p5

    iput-wide p5, p2, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    iget-object p1, p4, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->googlePlayProductDetails:Lcom/android/billingclient/api/ProductDetails;

    if-eqz p1, :cond_f

    :goto_9
    long-to-double p3, p5

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p1

    iget-object p5, p2, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {p1, p5}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x6

    int-to-double p5, p1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {v1, v2, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p5

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, p5

    double-to-long p3, p3

    goto :goto_8

    :cond_f
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->updateMessageText()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->actionCell:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->setButtonText(Z)V

    :cond_10
    :goto_b
    return-void
.end method

.method private onGiftSuccess(Z)V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    iget v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    iget v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v5, v4, Lorg/telegram/ui/ChatActivity;

    if-eqz v5, :cond_2

    move-object v3, v4

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/ProfileActivity;

    if-eqz v5, :cond_1

    if-eqz p1, :cond_3

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    if-ne v5, v4, :cond_3

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    const-string v0, "user_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v0, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->dismiss()V

    return-void
.end method

.method private setButtonText(Z)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->starGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v2, :cond_3

    iget v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget-object v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->starGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v3, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    iget-boolean v5, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->upgrade:Z

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_0

    iget-wide v8, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->upgrade_stars:J

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    add-long/2addr v3, v8

    iget-object v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v6, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->send_paid_messages_stars:J

    :goto_1
    add-long/2addr v3, v6

    iget-object v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-boolean v5, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->self:Z

    if-eqz v5, :cond_2

    const-string v5, "Gift2SendSelf"

    goto :goto_2

    :cond_2
    const-string v5, "Gift2Send"

    :goto_2
    long-to-int v6, v3

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->cachedStarSpan:[Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-static {v5, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    cmp-long v2, v3, v0

    if-lez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    long-to-int v1, v0

    const-string v0, "Gift2SendYourBalance"

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz v2, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->useStars:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v4, Lorg/telegram/messenger/R$string;->Gift2SendPremiumStars:I

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStarsPrice()J

    move-result-wide v5

    const/16 v2, 0x2c

    invoke-static {v5, v6, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->cachedStarSpan:[Lorg/telegram/ui/Components/ColoredImageSpan;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->cachedStarSpan:[Lorg/telegram/ui/Components/ColoredImageSpan;

    aget-object v0, v0, v1

    const v1, 0x3f59999a    # 0.85f

    iput v1, v0, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->Gift2SendPremium:I

    iget-object v5, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getFormattedPrice()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 8

    new-instance p1, Lorg/telegram/ui/Components/UniversalAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/SendGiftSheet;->setButtonText(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onPause()V

    :cond_2
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 11

    const/4 p2, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->chatView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v6, -0x1

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    const/4 v8, -0x2

    invoke-static {v8, v7}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->starGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const v8, 0x3f47ae14    # 0.78f

    const/4 v9, -0x3

    if-eqz v7, :cond_d

    iget-boolean p2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->can_upgrade:Z

    const/4 v3, -0x5

    const/4 v4, 0x0

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->self:Z

    if-nez p2, :cond_9

    invoke-static {v9, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->self:Z

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->Gift2UpgradeSelf:I

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->Gift2Upgrade:I

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->starGift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v9, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->upgrade_stars:J

    long-to-int v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {p2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->upgrade:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->forceNotUpgrade:Z

    if-eqz p2, :cond_3

    iget-wide v7, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    cmp-long p2, v7, v5

    if-gez p2, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->Gift2NoUpgradeChannelForcedInfo:I

    goto :goto_1

    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->Gift2NoUpgradeForcedInfo:I

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->name:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {p2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->forceUpgrade:Z

    if-eqz p2, :cond_5

    iget-wide v7, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    cmp-long p2, v7, v5

    if-gez p2, :cond_4

    sget p2, Lorg/telegram/messenger/R$string;->Gift2UpgradeChannelForcedInfo:I

    goto :goto_2

    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->Gift2UpgradeForcedInfo:I

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->name:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {p2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_5
    iget-boolean p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->self:Z

    if-eqz p2, :cond_6

    sget p2, Lorg/telegram/messenger/R$string;->Gift2UpgradeSelfInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_6
    iget-wide v7, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    cmp-long p2, v7, v5

    if-ltz p2, :cond_7

    sget p2, Lorg/telegram/messenger/R$string;->Gift2UpgradeInfo:I

    goto :goto_3

    :cond_7
    sget p2, Lorg/telegram/messenger/R$string;->Gift2UpgradeChannelInfo:I

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->name:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {p2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_4
    new-instance v0, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V

    invoke-static {p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    :goto_5
    invoke-static {v3, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->forceUpgrade:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->forceNotUpgrade:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    :goto_7
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_9
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    goto :goto_7

    :goto_8
    iget-boolean p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->self:Z

    if-eqz p2, :cond_a

    sget p2, Lorg/telegram/messenger/R$string;->Gift2HideSelf:I

    goto :goto_9

    :cond_a
    sget p2, Lorg/telegram/messenger/R$string;->Gift2Hide:I

    :goto_9
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->anonymous:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->self:Z

    if-eqz p2, :cond_b

    sget p2, Lorg/telegram/messenger/R$string;->Gift2HideSelfInfo:I

    :goto_a
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_b

    :cond_b
    iget-wide v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->dialogId:J

    cmp-long p2, v3, v5

    if-gez p2, :cond_c

    sget p2, Lorg/telegram/messenger/R$string;->Gift2HideChannelInfo:I

    goto :goto_a

    :cond_c
    sget p2, Lorg/telegram/messenger/R$string;->Gift2HideInfo:I

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_b
    const/4 v0, -0x6

    :goto_c
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_d
    cmp-long v7, v3, v5

    if-gtz v7, :cond_e

    sget v3, Lorg/telegram/messenger/R$string;->Gift2MessagePremiumInfo:I

    iget-object v4, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->name:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lorg/telegram/ui/Components/UItem;->asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->isStarsPaymentAvailable()Z

    move-result v3

    if-eqz v3, :cond_f

    sget v3, Lorg/telegram/messenger/R$string;->Gift2MessageStars:I

    iget-object v4, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStarsPrice()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {p2, v3}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->useStars:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    new-instance v5, Landroid/text/SpannableStringBuilder;

    const/16 v6, 0x2c

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v6, 0x21

    invoke-virtual {v5, v3, v2, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v3, Lorg/telegram/messenger/R$string;->Gift2MessageStarsInfo:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x3f28f5c3    # 0.66f

    invoke-static {v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->Gift2MessageStarsInfoLink:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Gifts/SendGiftSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Gifts/SendGiftSheet;)V

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x402aaaab

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v1, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v4

    new-array p2, p2, [Ljava/lang/CharSequence;

    aput-object v3, p2, v2

    const-string v2, " "

    aput-object v2, p2, v1

    aput-object v4, p2, v0

    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 v0, -0x7

    goto/16 :goto_c

    :cond_f
    :goto_d
    iget-boolean p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    if-eqz p2, :cond_10

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_10
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->self:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->Gift2TitleSelf2:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->Gift2Title:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    return-void

    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/SendGiftSheet;->messageEdit:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method
