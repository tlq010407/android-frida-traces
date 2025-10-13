.class public Lorg/telegram/ui/Gifts/GiftSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;,
        Lorg/telegram/ui/Gifts/GiftSheet$Tabs;,
        Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;,
        Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;,
        Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;,
        Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;
    }
.end annotation


# instance fields
.field private TAB_ALL:I

.field private TAB_IN_STOCK:I

.field private TAB_LIMITED:I

.field private TAB_MY_GIFTS:I

.field private TAB_RESALE:I

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final balanceView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

.field private birthday:Z

.field private final closeParentSheet:Ljava/lang/Runnable;

.field private final currentAccount:I

.field private final dialogId:J

.field private final itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private final layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private final myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

.field private final name:Ljava/lang/String;

.field private options:Ljava/util/List;

.field private final premiumHeaderView:Landroid/widget/FrameLayout;

.field private final premiumTiers:Ljava/util/ArrayList;

.field private selectedTab:I

.field private final self:Z

.field private final starsHeaderView:Landroid/widget/LinearLayout;

.field private final tabs:Ljava/util/ArrayList;

.field private final topView:Landroid/widget/FrameLayout;

.field private userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;


# direct methods
.method public static synthetic $r8$lambda$04obcRGgw-8dgkOI4CL7dObR5Og(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$3(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$0sSnRUzRCgkhBC89RODCh3JyGq4(Lorg/telegram/ui/Gifts/GiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$updatePremiumTiers$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$3WlYsHuEePJNU5u-z6A09irNoHw(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$7(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3dkE23YxP0eT28ZcAWx7zHxtNUw(Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$6(Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5pT4QaBg-OGVvCZftoSqNVRNadk(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$fillItems$18(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$H0d5Bf4hXlgfzO79UlRyGl2ZLms(Lorg/telegram/ui/Gifts/GiftSheet;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->selectTab(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HSCej1TuvnAyxiD8uWvIfr9SGf0()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$LuDuiJtpu8DAZBpGyYJgov_YU1U(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$11(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UZIw2khrSvoHAuJKVr3tHAGT48o(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$updatePremiumTiers$17(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WxWt3_ArSBUdeHLon4X5JFHkNhM(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$10(Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YJbPGqmMtQQr59APjVhr6jOJ6jk(Lorg/telegram/ui/Gifts/GiftSheet;JLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$1(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_hx9q7bgFn_3uBtvh5mEihUcGic(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$8(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fDA1FNtTsT_-NJDxWMT51ZWVDy4(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;ILjava/lang/Runnable;JLandroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$13(Landroid/content/Context;ILjava/lang/Runnable;JLandroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fvTlfR2ZKXYW7lYfUnkgHP0RCng(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gsRa3t_FXwnvPP4PFlnD83VIC9o(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Stars/StarsController$GiftsList;JLorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$5(Lorg/telegram/ui/Stars/StarsController$GiftsList;JLorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n1Ljdvs3KgElThl7Ovu6Pd457TM(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$4(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sOAmHz7J5Oq7CLWahDrPaGNwkHU(Lorg/telegram/ui/Gifts/GiftSheet;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$updatePremiumTiers$16(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$trK4hRQG4GxwrtQe80QsGf34UH8(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$9(Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zQuqmybNI96WpryQ13mQTaLoBfs(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet;->lambda$new$12(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLjava/lang/Runnable;)V
    .locals 7

    .line 0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V
    .locals 28

    .line 0
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-wide/from16 v11, p3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, v8, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_ALL:I

    iput v0, v8, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    iput v0, v8, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_LIMITED:I

    iput v0, v8, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_IN_STOCK:I

    iput v0, v8, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_RESALE:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Lorg/telegram/ui/Gifts/GiftSheet;->tabs:Ljava/util/ArrayList;

    iput v10, v8, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    iput-wide v11, v8, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v14, 0x0

    cmp-long v4, v1, v11

    if-nez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v8, Lorg/telegram/ui/Gifts/GiftSheet;->self:Z

    move-object/from16 v2, p5

    iput-object v2, v8, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    move-object/from16 v15, p6

    iput-object v15, v8, Lorg/telegram/ui/Gifts/GiftSheet;->closeParentSheet:Ljava/lang/Runnable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGiftsBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v8, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(J)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v2

    iput-object v2, v8, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->loadStarGifts()V

    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const-wide/16 v5, 0x0

    cmp-long v7, v11, v5

    if-lez v7, :cond_2

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v18, v11, v6

    if-eqz v18, :cond_1

    if-eqz v4, :cond_1

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iput-object v6, v8, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-nez v4, :cond_4

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v5, v14, v3}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    goto :goto_3

    :cond_2
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v6, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v6, ""

    goto :goto_2

    :cond_3
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2
    iput-object v6, v8, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :cond_4
    :goto_3
    const v4, 0x3dcccccd    # 0.1f

    iput v4, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    invoke-direct {v4, v9, v10}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;-><init>(Landroid/content/Context;I)V

    iput-object v4, v8, Lorg/telegram/ui/Gifts/GiftSheet;->balanceView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v5, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda3;

    invoke-direct {v5, v8}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v8, Lorg/telegram/ui/Gifts/GiftSheet;->premiumHeaderView:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet$1;

    invoke-direct {v6, v8, v9}, Lorg/telegram/ui/Gifts/GiftSheet$1;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;)V

    iput-object v6, v8, Lorg/telegram/ui/Gifts/GiftSheet;->topView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v7, 0x46

    invoke-static {v9, v7, v14}, Lorg/telegram/ui/Stars/StarsIntroActivity;->makeParticlesView(Landroid/content/Context;II)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v7

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v0, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v24, 0x0

    const/high16 v25, 0x41880000    # 17.0f

    const/16 v19, 0x54

    const/high16 v20, 0x42a80000    # 84.0f

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/high16 v23, 0x41700000    # 15.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v7, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda4;

    invoke-direct {v7, v8, v11, v12}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;J)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v24, -0x3ee00000    # -10.0f

    const/16 v25, 0x0

    const/16 v19, -0x2

    const/high16 v20, -0x40000000    # -2.0f

    const/16 v21, 0x35

    const/high16 v23, -0x3fc00000    # -3.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, -0x2

    const/16 v6, 0x37

    invoke-static {v0, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v6, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x1

    const/16 v22, 0x4

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-static {v7, v13}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    new-instance v7, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v13, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v7, v9, v13}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    iget-object v4, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v13, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v7, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    const v4, 0x40151eb8    # 2.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v7, v4, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 v26, 0x4

    const/16 v27, 0xc

    const/16 v21, -0x1

    const/16 v22, -0x2

    const/16 v23, 0x1

    const/16 v25, 0x4

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lorg/telegram/messenger/R$string;->Gift2Premium:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lorg/telegram/messenger/R$string;->Gift2PremiumInfo:I

    iget-object v2, v8, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v14

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Gift2PremiumInfoLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->makeClickable(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/CharSequence;

    aput-object v0, v6, v14

    const-string v0, " "

    aput-object v0, v6, v3

    const/4 v0, 0x2

    aput-object v2, v6, v0

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Gifts/GiftSheet;->starsHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v27, 0x0

    const/16 v25, 0x0

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v4, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v7, v9, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v4, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v13, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v7, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    const-wide/16 v16, 0x0

    cmp-long v4, v11, v16

    if-gez v4, :cond_5

    sget v4, Lorg/telegram/messenger/R$string;->Gift2StarsChannel:I

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    sget v4, Lorg/telegram/messenger/R$string;->Gift2StarsSelf:I

    goto :goto_4

    :cond_6
    sget v4, Lorg/telegram/messenger/R$string;->Gift2Stars:I

    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_7

    const/16 v26, 0x1a

    const/16 v27, 0x4

    const/16 v21, -0x2

    const/16 v22, -0x2

    const/16 v23, 0x1

    const/16 v24, 0x1a

    const/16 v25, 0x9

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v2, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v9, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v2, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v25, 0x6

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x1

    const/16 v22, 0x1a

    const/16 v23, 0x4

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lorg/telegram/messenger/R$string;->Gift2StarsSelfInfo1:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lorg/telegram/messenger/R$string;->Gift2StarsSelfInfo2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    const/4 v2, 0x3

    goto/16 :goto_6

    :cond_7
    const-wide/16 v1, 0x0

    cmp-long v4, v11, v1

    if-gez v4, :cond_8

    const/16 v24, 0x1a

    const/16 v25, 0x4

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x1

    const/16 v22, 0x1a

    const/16 v23, 0x9

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v7}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    sget v0, Lorg/telegram/messenger/R$string;->Gift2StarsChannelInfo:I

    iget-object v1, v8, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v14

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v0, v1, v14}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    const/16 v24, 0x4

    const/16 v25, 0x6

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x1

    const/16 v22, 0x4

    const/16 v23, 0x9

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(J)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v13

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda6;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    move-wide/from16 v3, p3

    move-object v5, v7

    move-object/from16 p5, v6

    move-object/from16 v6, p6

    move-object v14, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Stars/StarsController$GiftsList;JLorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Ljava/lang/Runnable;Landroid/content/Context;)V

    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$2;

    move-object/from16 v1, p5

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Gifts/GiftSheet$2;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V

    invoke-virtual {v14, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, v13, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_9

    invoke-virtual {v13}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    :cond_9
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    new-instance v4, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda7;

    invoke-direct {v4, v13, v1}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v14, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    :goto_6
    new-instance v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-direct {v0, v9, v2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, v8, Lorg/telegram/ui/Gifts/GiftSheet;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    new-instance v1, Lorg/telegram/ui/Gifts/GiftSheet$3;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Gifts/GiftSheet$3;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v1, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v1, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v1, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorType(I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$4;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Gifts/GiftSheet$4;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    iput-object v0, v8, Lorg/telegram/ui/Gifts/GiftSheet;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayIncrement(J)V

    iget-object v1, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v7, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v13, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda8;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p6

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;ILjava/lang/Runnable;J)V

    invoke-virtual {v7, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Gifts/GiftSheet;->updatePremiumTiers()V

    iget-object v0, v8, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lorg/telegram/messenger/BirthdayController;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Gifts/GiftSheet;->setBirthday()Lorg/telegram/ui/Gifts/GiftSheet;

    :cond_a
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiftSoldOut:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Gifts/GiftSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Gifts/GiftSheet;)Lorg/telegram/ui/Components/UniversalAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Gifts/GiftSheet;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Gifts/GiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private synthetic lambda$fillItems$18(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Z
    .locals 3

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    :goto_0
    xor-int/2addr p1, v1

    return p1

    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v2, :cond_2

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->can_upgrade:Z

    if-eqz p1, :cond_1

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unlimited_stargifts:Z

    goto :goto_0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->balanceView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    iget-wide v0, p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1(JLandroid/view/View;)V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 1

    invoke-virtual {p5}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p5, p4, p1}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->doTransfer(JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$11(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$12(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$13(Landroid/content/Context;ILjava/lang/Runnable;JLandroid/view/View;I)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    iget-object v0, v7, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    add-int/lit8 v2, p7, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v2, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz v3, :cond_1

    move-object v11, v2

    check-cast v11, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    new-instance v0, Lorg/telegram/ui/Gifts/SendGiftSheet;

    iget-wide v12, v7, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    new-instance v14, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda9;

    invoke-direct {v14, v7, v8}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V

    move-object v8, v0

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Gifts/SendGiftSheet;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;JLjava/lang/Runnable;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->show()V

    return-void

    :cond_1
    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v3, :cond_b

    move-object v11, v2

    check-cast v11, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v2, v7, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v2, :cond_5

    iget v3, v7, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget v4, v7, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    if-ne v3, v4, :cond_5

    iget-object v0, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v4, v11, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    move-object v10, v1

    goto :goto_0

    :cond_3
    move-object v10, v9

    :goto_0
    if-nez v10, :cond_4

    return-void

    :cond_4
    new-instance v11, Lorg/telegram/ui/Gifts/GiftSheet$5;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    iget-object v6, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet$5;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v11, v10, v9}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object v6

    new-instance v9, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda10;

    move-object v0, v9

    move-object v2, v6

    move-wide/from16 v3, p4

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;)V

    move-wide/from16 v2, p4

    invoke-virtual {v6, v2, v3, v9}, Lorg/telegram/ui/Stars/StarGiftSheet;->openTransferAlert(JLorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :cond_5
    move-wide/from16 v2, p4

    iget-boolean v0, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    iget-wide v5, v11, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-lez v0, :cond_7

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    new-instance v5, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v5}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    iput-boolean v1, v5, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    iput-boolean v4, v5, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    new-instance v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    iget-object v13, v11, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    iget-wide v14, v11, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-object v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v10, v1

    move-wide/from16 v11, p4

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;-><init>(JLjava/lang/String;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v2, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda11;

    invoke-direct {v2, v7, v8}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->setCloseParentSheet(Ljava/lang/Runnable;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void

    :cond_7
    iget-boolean v0, v11, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    if-eqz v0, :cond_8

    iget-object v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v2, v3, v11, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showSoldOutGiftSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    :cond_8
    move-object/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Lorg/telegram/ui/Gifts/SendGiftSheet;

    iget-wide v12, v7, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    new-instance v14, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda12;

    invoke-direct {v14, v7, v8}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;)V

    iget-boolean v5, v11, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v5, :cond_9

    iget-object v6, v7, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v6, :cond_9

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v6, :cond_9

    const/4 v15, 0x1

    goto :goto_1

    :cond_9
    const/4 v15, 0x0

    :goto_1
    if-eqz v5, :cond_a

    iget-object v5, v7, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v5, :cond_a

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz v5, :cond_a

    const/16 v16, 0x1

    goto :goto_2

    :cond_a
    const/16 v16, 0x0

    :goto_2
    move-object v8, v0

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/Gifts/SendGiftSheet;-><init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarGift;JLjava/lang/Runnable;ZZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/SendGiftSheet;->show()V

    :cond_b
    return-void
.end method

.method private static synthetic lambda$new$2()V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v3, "gifts"

    invoke-direct {v2, v3}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Runnable;J)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "open_gifts"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$new$4(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/ExplainStarsSheet;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/ExplainStarsSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/Stars/StarsController$GiftsList;JLorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v4, Lorg/telegram/messenger/R$string;->Gift2StarsInfo:I

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v9, 0x0

    :goto_0
    iget-object v10, v1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v10

    const/4 v11, 0x3

    if-ge v10, v11, :cond_1

    iget-object v10, v1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v10, :cond_0

    iget-object v10, v10, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/2addr v9, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$string;->Gift2StarsInfoProfileLink:I

    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v9, v10, v8

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "\u00a0"

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    const-string v7, "\u2060e"

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v1, v7, v5, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    const-string v4, "\u00a0>"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v4, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda16;

    move-wide v7, p2

    move-object/from16 v5, p5

    invoke-direct {v4, p0, v5, v7, v8}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;Ljava/lang/Runnable;J)V

    :goto_2
    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->makeClickable(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->Gift2StarsInfoLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;

    move-object/from16 v5, p6

    invoke-direct {v4, v5}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda17;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    return-void
.end method

.method private static synthetic lambda$new$6(Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    aget-object p2, p2, v0

    if-ne p2, p0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$7(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$new$8(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    if-eqz p4, :cond_1

    new-instance p1, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda19;

    invoke-direct {p1, p3, p4}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$updatePremiumTiers$15()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updatePremiumTiers$16(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStoreProduct()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStoreProduct()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->setGooglePlayProductDetails(Lcom/android/billingclient/api/ProductDetails;)V

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPricePerMonth()J

    move-result-wide v4

    cmp-long p2, v4, v0

    if-lez p2, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPricePerMonth()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->setPricePerMonthRegular(J)V

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updatePremiumTiers$17(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptionsByBilling(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->updatePremiumTiers()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private selectTab(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimations()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private updatePremiumTiers()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, 0x0

    :goto_0
    if-ltz v2, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    const-string v7, "XTR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/Gifts/GiftSheet;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    if-eq v8, v5, :cond_1

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    iget v10, v5, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_2
    move-object v8, v1

    :goto_1
    new-instance v6, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-direct {v6, v5, v8}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;-><init>(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPricePerMonth()J

    move-result-wide v7

    cmp-long v5, v7, v3

    if-lez v5, :cond_4

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getPricePerMonth()J

    move-result-wide v3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStoreProduct()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v5

    const-string v7, "inapp"

    invoke-virtual {v5, v7}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v5

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStoreProduct()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->setPricePerMonthRegular(J)V

    goto :goto_3

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->loadGiftOptions(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/Utilities$Callback;)I

    :cond_8
    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 8

    new-instance p1, Lorg/telegram/ui/Components/UniversalAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->updatePremiumTiers()V

    goto/16 :goto_2

    :cond_0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_b

    goto/16 :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    if-ne p1, v1, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isShown()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    aget-object p1, p3, p2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_6

    const-wide/16 v1, 0x0

    cmp-long p1, v3, v1

    if-lez p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    iget p3, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz p1, :cond_5

    iget-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_premium_gifts:Z

    if-eqz p3, :cond_5

    iget-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz p3, :cond_5

    iget-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz p3, :cond_5

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unlimited_stargifts:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->error:I

    sget v1, Lorg/telegram/messenger/R$string;->UserDisallowedGifts:I

    iget-wide v2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, p2

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet;->updatePremiumTiers()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_8
    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiftSoldOut:I

    if-ne p1, v1, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isShown()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    aget-object p1, p3, p2

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2SoldOutTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    const-string v2, "Gift2SoldOutCount"

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p3, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    if-ne p1, p2, :cond_b

    aget-object p1, p3, v0

    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-ne p1, p2, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_b

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_b
    :goto_2
    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiftSoldOut:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->self:Z

    const-wide/16 v3, 0x0

    const/16 v5, 0x22

    const/4 v6, 0x1

    if-nez v2, :cond_3

    iget-wide v8, v0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    cmp-long v2, v8, v3

    if-ltz v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_premium_gifts:Z

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->topView:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumHeaderView:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->premiumTiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-static {v8}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asPremiumGift(Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;)Lorg/telegram/ui/Components/UItem;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v6, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget v8, v0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v8

    iget-boolean v9, v0, Lorg/telegram/ui/Gifts/GiftSheet;->birthday:Z

    if-eqz v9, :cond_4

    iget-object v9, v8, Lorg/telegram/ui/Stars/StarsController;->birthdaySortedGifts:Ljava/util/ArrayList;

    goto :goto_2

    :cond_4
    iget-object v9, v8, Lorg/telegram/ui/Stars/StarsController;->sortedGifts:Ljava/util/ArrayList;

    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v10, :cond_5

    invoke-static {v9}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-interface {v9, v10}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda252;

    invoke-direct {v10}, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda252;-><init>()V

    invoke-static {v10}, Lj$/util/stream/Collectors;->toCollection(Lj$/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    :cond_5
    iget-wide v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    iget v12, v0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-eqz v14, :cond_7

    iget-object v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v10, :cond_7

    iget-object v10, v10, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v11, v11, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v11, v11, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v11, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    iget v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-boolean v11, v11, Lorg/telegram/messenger/MessagesController;->stargiftsBlocked:Z

    if-nez v11, :cond_26

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v11, :cond_26

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-nez v11, :cond_26

    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v11, :cond_26

    iget-object v11, v11, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_26

    :cond_8
    if-nez v2, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->topView:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    goto :goto_4

    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->starsHeaderView:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v11, :cond_b

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-nez v11, :cond_a

    goto :goto_6

    :cond_a
    const/4 v13, 0x0

    goto :goto_9

    :cond_b
    :goto_6
    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_d

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move v15, v13

    iget-wide v12, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-wide v12, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v14, v12, v3

    if-lez v14, :cond_c

    const/4 v13, 0x1

    goto :goto_8

    :cond_c
    move v13, v15

    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_d
    move v15, v13

    :goto_9
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, -0x1

    iput v12, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    iput v12, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_LIMITED:I

    iput v12, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_IN_STOCK:I

    iput v12, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_ALL:I

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_e

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    iput v12, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_ALL:I

    sget v12, Lorg/telegram/messenger/R$string;->Gift2TabAll:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v12, :cond_f

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-nez v12, :cond_10

    :cond_f
    if-eqz v10, :cond_10

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    sget v10, Lorg/telegram/messenger/R$string;->Gift2TabMine:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v10, :cond_11

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-nez v10, :cond_12

    :cond_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_LIMITED:I

    sget v10, Lorg/telegram/messenger/R$string;->Gift2TabLimited:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz v13, :cond_13

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_RESALE:I

    sget v10, Lorg/telegram/messenger/R$string;->Gift2TabResale:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_IN_STOCK:I

    sget v10, Lorg/telegram/messenger/R$string;->Gift2TabInStock:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2b50\ufe0f "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-static {v14, v15, v5}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v7, 0x3f4ccccd    # 0.8f

    invoke-static {v5, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x22

    goto :goto_a

    :cond_14
    iget v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    new-instance v5, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda14;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Gifts/GiftSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Gifts/GiftSheet;)V

    invoke-static {v6, v11, v2, v5}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$Factory;->asTabs(ILjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    sub-int/2addr v2, v10

    if-ltz v2, :cond_15

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_15

    iget v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    sub-int/2addr v2, v10

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_b

    :cond_15
    move-wide v11, v3

    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v2, :cond_17

    iget v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget v5, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    if-ne v2, v5, :cond_17

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v2, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v7, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v7, :cond_16

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_17
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_22

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v13, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget v14, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_ALL:I

    if-eq v13, v14, :cond_1b

    iget v14, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_LIMITED:I

    if-ne v13, v14, :cond_18

    iget-boolean v14, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-nez v14, :cond_1b

    :cond_18
    iget v14, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    if-eq v13, v14, :cond_1b

    iget v14, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_IN_STOCK:I

    if-ne v13, v14, :cond_19

    iget-boolean v14, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    if-eqz v14, :cond_1b

    :cond_19
    iget v14, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_RESALE:I

    if-ne v13, v14, :cond_1a

    iget-wide v14, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v16, v14, v3

    if-gtz v16, :cond_1b

    :cond_1a
    if-lt v13, v10, :cond_21

    iget-wide v14, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    cmp-long v16, v14, v11

    if-nez v16, :cond_21

    :cond_1b
    iget-boolean v14, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sold_out:Z

    if-nez v14, :cond_1e

    iget-wide v14, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v16, v14, v3

    if-lez v16, :cond_1e

    iget v14, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_RESALE:I

    if-eq v13, v14, :cond_1e

    iget v14, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    if-ne v13, v14, :cond_1c

    const/16 v18, 0x1

    goto :goto_e

    :cond_1c
    const/16 v18, 0x0

    :goto_e
    iget-boolean v14, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v14, :cond_1d

    iget-object v14, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v14, :cond_1d

    iget-boolean v14, v14, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v14, :cond_1d

    const/16 v19, 0x1

    goto :goto_f

    :cond_1d
    const/16 v19, 0x0

    :goto_f
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v16, v13

    move-object/from16 v17, v7

    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asStarGift(ILorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_1e
    iget v13, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget v14, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    if-ne v13, v14, :cond_1f

    const/16 v18, 0x1

    goto :goto_10

    :cond_1f
    const/16 v18, 0x0

    :goto_10
    iget-boolean v14, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v14, :cond_20

    iget-object v14, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v14, :cond_20

    iget-boolean v14, v14, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v14, :cond_20

    const/16 v19, 0x1

    goto :goto_11

    :cond_20
    const/16 v19, 0x0

    :goto_11
    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v16, v13

    move-object/from16 v17, v7

    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asStarGift(ILorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v6

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_22
    iget v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->selectedTab:I

    iget v3, v0, Lorg/telegram/ui/Gifts/GiftSheet;->TAB_MY_GIFTS:I

    const/4 v4, 0x6

    const/4 v7, 0x5

    const/4 v9, 0x4

    if-ne v2, v3, :cond_23

    iget-object v10, v0, Lorg/telegram/ui/Gifts/GiftSheet;->myGifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v10, :cond_23

    iget-boolean v11, v10, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-nez v11, :cond_23

    invoke-virtual {v10}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    const/16 v10, 0x22

    :goto_12
    invoke-static {v9, v10}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v10}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v10}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_23
    const/16 v10, 0x22

    if-eq v2, v3, :cond_24

    iget-boolean v2, v8, Lorg/telegram/ui/Stars/StarsController;->giftsLoading:Z

    if-eqz v2, :cond_24

    goto :goto_12

    :cond_24
    :goto_13
    const/16 v2, 0x9

    if-ge v5, v2, :cond_25

    const/high16 v12, 0x43960000    # 300.0f

    goto :goto_14

    :cond_25
    const/high16 v12, 0x42200000    # 40.0f

    :goto_14
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_15
    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_26
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v2, :cond_27

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-nez v2, :cond_27

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_15

    :cond_27
    :goto_16
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->self:Z

    if-eqz v1, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->Gift2TitleSelf1:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->Gift2User:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet;->name:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setBirthday()Lorg/telegram/ui/Gifts/GiftSheet;
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/GiftSheet;->setBirthday(Z)Lorg/telegram/ui/Gifts/GiftSheet;

    move-result-object v0

    return-object v0
.end method

.method public setBirthday(Z)Lorg/telegram/ui/Gifts/GiftSheet;
    .locals 1

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->birthday:Z

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-object p0
.end method

.method public show()V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet;->userSettings:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_premium_gifts:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unlimited_stargifts:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->UserDisallowedGifts:I

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/GiftSheet;->dialogId:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void

    :cond_2
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method
