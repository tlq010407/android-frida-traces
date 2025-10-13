.class public Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;,
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;,
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;,
        Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;
    }
.end annotation


# instance fields
.field actionBtn:Landroid/widget/TextView;

.field boostFeatures:Ljava/util/ArrayList;

.field boostFeaturesStartRow:I

.field boostMiniBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field bottomRow:I

.field private canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

.field private canSendLink:Z

.field chatEndRow:I

.field private chatMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field chatStartRow:I

.field chats:Ljava/util/ArrayList;

.field chatsTitleRow:I

.field private currentValue:I

.field private dialogId:J

.field divider:Landroid/view/View;

.field dividerRow:I

.field emptyViewDividerRow:I

.field enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field private forceLink:Ljava/lang/String;

.field private fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field headerRow:I

.field private headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

.field private inactiveChats:Ljava/util/ArrayList;

.field private inactiveChatsSignatures:Ljava/util/ArrayList;

.field private isCurrentChat:Z

.field private isVeryLargeFile:Z

.field limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

.field limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

.field private linkRow:I

.field private loading:Z

.field loadingAdminedChannels:Z

.field loadingRow:I

.field private lockInvalidation:Z

.field public onShowPremiumScreenRunnable:Ljava/lang/Runnable;

.field public onSuccessRunnable:Ljava/lang/Runnable;

.field parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public parentIsChannel:Z

.field premiumButtonSetSubscribe:Z

.field premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field private premiumInviteBlockedUsers:Ljava/util/ArrayList;

.field private premiumMessagingBlockedUsers:Ljava/util/ArrayList;

.field private requiredLvl:I

.field private restrictedUsers:Ljava/util/ArrayList;

.field rowCount:I

.field selectedChats:Ljava/util/HashSet;

.field private shiftDp:I

.field statisticClickRunnable:Ljava/lang/Runnable;

.field protected storiesCount:I

.field final type:I


# direct methods
.method public static synthetic $r8$lambda$-_HIog-_mZHdTCsJcIwVJXnxLh0(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$leaveFromSelectedGroups$21(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$16R3_eR5czSDiaAFK4z5PfcNyrY(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$revokeLinks$25(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1LH66od9HwPXPxdShjXSx6TqaAs(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1fClF4kl1Uj3KAIbmX_4RXw--BY(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$10(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5gDKfGafmteExgaxfiacCLEjUVQ(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadInactiveChannels$26(Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Dmwk_1USxqLDJyi_aLhusfnT1c(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$9(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8k1IM18OauDQ1lyBNn_nUxNaaUM(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8sPXYsfS6jQJV7bAoCY9loxFc1o(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LdX9xHHdPEtiFXztJLIg9e6iSL8(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Loadable;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$boostChannel$19(Lorg/telegram/ui/Components/Loadable;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mpg53iSBzPqVvrRTnKNAXG5CjPk(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$11(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OW5FaB36HtlspltcESV2Nwfshx8(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadAdminedChannels$22(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ov-tIN_h6Km8FuZvyq8gjxWurl0(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$6(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TrBtSSoT0XLUy4XJtHUixMzLvrc(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$revokeLinks$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VoIRhJQTPYbtfA2UKCMwVqkKEd8(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$sendInviteMessages$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$WO8Ey74kU27e-F7umbCK0ikbyqU(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$_wWh7f4SEaxR5GZ4jFdnx8HLidk(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a6os2lHQkmxUip79ivZCO_2QD5Y(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Loadable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$boostChannel$18(Lorg/telegram/ui/Components/Loadable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aRkRubIvuitLgxYkZfg3wM7VblM(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadAdminedChannels$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$btOrbb9lsOiQEpk-deq4aAEyVd8(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->sendInviteMessages(Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cImTKV1UbviDFSaQWqI552ohZLc(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Loadable;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$boostChannel$16(Lorg/telegram/ui/Components/Loadable;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gCE9Xu_7dKKCUmbrZk20hMPR-hU(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$msJjoRRU1fKhq3gtb6tVAngPb94(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$7(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pM7k7TR0ymI4bqFT5eETBzJklbs(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rUaMkT_wmte0z7CnZXyZDFSQTMs(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Loadable;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$boostChannel$17(Lorg/telegram/ui/Components/Loadable;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sHa0hheeddeZ-aiureo5eCN9LUw(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$showPremiumBlockedToast$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$tc4eyxY6fGej7abvHRI6TQJNMkM(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$loadInactiveChannels$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wLZy5aWpvXQKBfGZgGkKdSbuGXk(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$x5owksAeIFvZxm_ZLh37BQf0SLs(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$12(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xd4RS7mAXpbIREx4SDB327VVUb0(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$5(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    invoke-static {p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->hasFixedSize(I)Z

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->bottomRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesStartRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumMessagingBlockedUsers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumInviteBlockedUsers:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->requiredLvl:I

    const/4 v2, -0x4

    iput v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->shiftDp:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iput p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadAdminedChannels()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    if-ne p3, p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadInactiveChannels()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    const/16 p1, 0x20

    if-eq p3, p1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isBoostingForAdminPossible()Z

    move-result p4

    if-eqz p4, :cond_3

    :cond_2
    new-instance p4, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p4, v2}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const/16 p4, 0x12

    if-eq p3, p4, :cond_4

    const/16 v0, 0x14

    if-eq p3, v0, :cond_4

    const/16 v0, 0x18

    if-eq p3, v0, :cond_4

    const/16 v0, 0x19

    if-eq p3, v0, :cond_4

    const/16 v0, 0x1a

    if-eq p3, v0, :cond_4

    const/16 v0, 0x1d

    if-eq p3, v0, :cond_4

    const/16 v0, 0x16

    if-eq p3, v0, :cond_4

    const/16 v0, 0x17

    if-eq p3, v0, :cond_4

    const/16 v0, 0x15

    if-eq p3, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p3, v0, :cond_4

    const/16 v0, 0x1c

    if-eq p3, v0, :cond_4

    const/16 v0, 0x1e

    if-eq p3, v0, :cond_4

    const/16 v0, 0x23

    if-eq p3, v0, :cond_4

    const/16 v0, 0x1f

    if-ne p3, v0, :cond_6

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->getTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v2, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const/16 v5, 0x78

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    if-ne p3, p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {p1, p2, p5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget p2, Lorg/telegram/messenger/R$string;->BoostGroup:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v0, -0x1

    const/high16 v1, 0x42400000    # 48.0f

    const/16 v2, 0x50

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    const/16 p1, 0x13

    if-eq p3, p1, :cond_8

    if-ne p3, p4, :cond_9

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isMiniBoostBtnForAdminAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostLink()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeLinks(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumMessagingBlockedUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsDescriptionString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->requiredLvl:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumInviteBlockedUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsTitleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method private boostChannel()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostMiniBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostMiniBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostChannel(Lorg/telegram/ui/Components/Loadable;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private boostChannel(Lorg/telegram/ui/Components/Loadable;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostChannel(Lorg/telegram/ui/Components/Loadable;Z)V

    return-void
.end method

.method private boostChannel(Lorg/telegram/ui/Components/Loadable;Z)V
    .locals 6

    .line 0
    invoke-interface {p1}, Lorg/telegram/ui/Components/Loadable;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/Loadable;->setLoading(Z)V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget v3, p2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->slot:I

    new-instance v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda22;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Loadable;)V

    new-instance v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Loadable;)V

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ChannelBoostsController;->applyBoost(JILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private boostFeaturesForLevel(I)Ljava/util/ArrayList;
    .locals 8

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->channelAutotranslationLevelMin:I

    if-lt p1, v3, :cond_1

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_translate:I

    sget v4, Lorg/telegram/messenger/R$string;->BoostFeatureAutotranslation:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_stories:I

    const-string v4, "BoostFeatureStoriesPerDay"

    invoke-static {v3, v4, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->asIncremental()Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_reactions:I

    const-string v4, "BoostFeatureCustomReaction"

    invoke-static {v3, v4, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->asIncremental()Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, v2, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1, v4}, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsAvailable(IZ)I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object v5, v2, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v5, :cond_4

    invoke-virtual {v5, p1, v0}, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsAvailable(IZ)I

    move-result v4

    :cond_4
    if-nez v0, :cond_5

    if-lez v3, :cond_5

    sget v5, Lorg/telegram/messenger/R$drawable;->menu_feature_color_name:I

    const-string v6, "BoostFeatureNameColor"

    const/4 v7, 0x7

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v0, :cond_6

    if-lez v3, :cond_6

    sget v5, Lorg/telegram/messenger/R$drawable;->menu_feature_links:I

    const-string v6, "BoostFeatureReplyColor"

    invoke-static {v5, v6, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v0, :cond_7

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    if-lt p1, v3, :cond_7

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_links2:I

    sget v5, Lorg/telegram/messenger/R$string;->BoostFeatureReplyIcon:I

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-lez v4, :cond_9

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_color_profile:I

    if-eqz v0, :cond_8

    const-string v5, "BoostFeatureProfileColorGroup"

    goto :goto_1

    :cond_8
    const-string v5, "BoostFeatureProfileColor"

    :goto_1
    invoke-static {v3, v5, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v0, :cond_a

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->groupEmojiStickersLevelMin:I

    if-lt p1, v3, :cond_a

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_pack:I

    sget v4, Lorg/telegram/messenger/R$string;->BoostFeatureCustomEmojiPack:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez v0, :cond_b

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    if-ge p1, v3, :cond_c

    :cond_b
    if-eqz v0, :cond_e

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->groupProfileBgIconLevelMin:I

    if-lt p1, v3, :cond_e

    :cond_c
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_cover:I

    if-eqz v0, :cond_d

    sget v4, Lorg/telegram/messenger/R$string;->BoostFeatureProfileIconGroup:I

    goto :goto_2

    :cond_d
    sget v4, Lorg/telegram/messenger/R$string;->BoostFeatureProfileIcon:I

    :goto_2
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v0, :cond_f

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->groupTranscribeLevelMin:I

    if-lt p1, v3, :cond_f

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_voice:I

    sget v4, Lorg/telegram/messenger/R$string;->BoostFeatureVoiceToTextConversion:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    if-nez v0, :cond_10

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    if-ge p1, v3, :cond_11

    :cond_10
    if-eqz v0, :cond_12

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->groupEmojiStatusLevelMin:I

    if-lt p1, v3, :cond_12

    :cond_11
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_status:I

    sget v4, Lorg/telegram/messenger/R$string;->BoostFeatureEmojiStatuses:I

    const-string v5, "1000+"

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(IILjava/lang/String;)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    if-nez v0, :cond_13

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    if-ge p1, v3, :cond_14

    :cond_13
    if-eqz v0, :cond_16

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->groupWallpaperLevelMin:I

    if-lt p1, v3, :cond_16

    :cond_14
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_wallpaper:I

    if-eqz v0, :cond_15

    const-string v4, "BoostFeatureBackgroundGroup"

    goto :goto_3

    :cond_15
    const-string v4, "BoostFeatureBackground"

    :goto_3
    const/16 v5, 0x8

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(ILjava/lang/String;I)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    if-nez v0, :cond_17

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    if-ge p1, v3, :cond_18

    :cond_17
    if-eqz v0, :cond_1a

    iget v3, v2, Lorg/telegram/messenger/MessagesController;->groupCustomWallpaperLevelMin:I

    if-lt p1, v3, :cond_1a

    :cond_18
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_custombg:I

    if-eqz v0, :cond_19

    sget v4, Lorg/telegram/messenger/R$string;->BoostFeatureCustomBackgroundGroup:I

    goto :goto_4

    :cond_19
    sget v4, Lorg/telegram/messenger/R$string;->BoostFeatureCustomBackground:I

    :goto_4
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-nez v0, :cond_1b

    iget v0, v2, Lorg/telegram/messenger/MessagesController;->channelRestrictSponsoredLevelMin:I

    if-lt p1, v0, :cond_1b

    sget p1, Lorg/telegram/messenger/R$drawable;->menu_feature_noads:I

    sget v0, Lorg/telegram/messenger/R$string;->BoostFeatureSwitchOffAds:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->of(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v1
.end method

.method private getBoostDescriptionStringAfterBoost()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForColorDescription:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForColorDescription:I

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->channelColorLevelMin()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_1
    const/16 v5, 0x18

    if-ne v4, v5, :cond_3

    if-eqz v3, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForProfileColorDescription:I

    goto :goto_1

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForProfileColorDescription:I

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->channelColorLevelMin()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_3
    const/16 v5, 0x1d

    if-ne v4, v5, :cond_4

    sget v3, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForCustomEmojiPackDescription:I

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->groupEmojiStickersLevelMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_4
    const/16 v5, 0x1e

    if-ne v4, v5, :cond_5

    sget v3, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForSwitchOffAdsDescription:I

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->channelRestrictSponsoredLevelMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_5
    const/16 v5, 0x23

    if-ne v4, v5, :cond_6

    sget v3, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForAutotranslationDescription:I

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->channelAutotranslationLevelMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_6
    const/16 v5, 0x19

    if-ne v4, v5, :cond_9

    if-eqz v3, :cond_7

    sget v4, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForEmojiStatusDescription:I

    goto :goto_2

    :cond_7
    sget v4, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForEmojiStatusDescription:I

    :goto_2
    if-eqz v3, :cond_8

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->groupEmojiStatusLevelMin:I

    goto :goto_3

    :cond_8
    iget v2, v2, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_9
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_c

    if-eqz v3, :cond_a

    sget v4, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForWearCollectiblesDescription:I

    goto :goto_4

    :cond_a
    sget v4, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForWearCollectiblesDescription:I

    :goto_4
    if-eqz v3, :cond_b

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->groupEmojiStatusLevelMin:I

    goto :goto_5

    :cond_b
    iget v2, v2, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_c
    const/16 v5, 0x1b

    if-ne v4, v5, :cond_e

    if-eqz v3, :cond_d

    sget v3, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForReplyIconDescription:I

    goto :goto_6

    :cond_d
    sget v3, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForReplyIconDescription:I

    :goto_6
    iget v2, v2, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_e
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_11

    if-eqz v3, :cond_f

    sget v4, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForProfileIconDescription:I

    goto :goto_7

    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForProfileIconDescription:I

    :goto_7
    if-eqz v3, :cond_10

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->groupProfileBgIconLevelMin:I

    goto :goto_8

    :cond_10
    iget v2, v2, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_11
    const/16 v5, 0x16

    if-ne v4, v5, :cond_14

    if-eqz v3, :cond_12

    sget v4, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForWallpaperDescription:I

    goto :goto_9

    :cond_12
    sget v4, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForWallpaperDescription:I

    :goto_9
    if-eqz v3, :cond_13

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->groupWallpaperLevelMin:I

    goto :goto_a

    :cond_13
    iget v2, v2, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    :goto_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_14
    const/16 v5, 0x17

    if-ne v4, v5, :cond_17

    if-eqz v3, :cond_15

    sget v4, Lorg/telegram/messenger/R$string;->GroupNeedBoostsForCustomWallpaperDescription:I

    goto :goto_b

    :cond_15
    sget v4, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsForCustomWallpaperDescription:I

    :goto_b
    if-eqz v3, :cond_16

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->groupCustomWallpaperLevelMin:I

    goto :goto_c

    :cond_16
    iget v2, v2, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_18

    return-object v0

    :cond_18
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsDescriptionString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoostLink()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boost_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boost_url:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/ChannelBoostUtilities;->createLink(IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoostsDescriptionString(Z)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getDescriptionForRemoveRestrictions()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrGroup:I

    goto :goto_0

    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrChannel:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->current_level_boosts:I

    if-ne v5, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isMiniBoostBtnForAdminAvailable()Z

    move-result v5

    const-string v6, "MoreBoosts"

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-eqz v5, :cond_5

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsDescriptionForNewFeatures:I

    goto :goto_3

    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionForNewFeatures:I

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    aput-object v4, v0, v2

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, "BoostStories"

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v4, v4, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v4, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-ne v3, v2, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lorg/telegram/messenger/R$string;->GroupBoostsJustReachedLevel1:I

    goto :goto_4

    :cond_6
    sget p1, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevel1:I

    :goto_4
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Lorg/telegram/messenger/R$string;->GroupBoostsJustReachedLevelNext:I

    goto :goto_5

    :cond_8
    sget v3, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevelNext:I

    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v4, v4, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-nez v5, :cond_b

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_a

    sget p1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsDescriptionForNewFeatures:I

    goto :goto_6

    :cond_a
    sget p1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionForNewFeatures:I

    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    aput-object v4, v0, v2

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-nez v4, :cond_d

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_c

    sget v3, Lorg/telegram/messenger/R$string;->GroupBoostsJustReachedLevelNext:I

    goto :goto_7

    :cond_c
    sget v3, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevelNext:I

    :goto_7
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v5, v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_e

    sget p1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsDescriptionForNewFeatures:I

    goto :goto_8

    :cond_e
    sget p1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionForNewFeatures:I

    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    aput-object v4, v0, v2

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-nez v5, :cond_11

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_10

    sget p1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsDescriptionForNewFeatures:I

    goto :goto_9

    :cond_10
    sget p1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionForNewFeatures:I

    :goto_9
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    aput-object v4, v0, v2

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-nez v4, :cond_13

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_12

    sget v3, Lorg/telegram/messenger/R$string;->GroupBoostsJustReachedLevelNext:I

    goto :goto_a

    :cond_12
    sget v3, Lorg/telegram/messenger/R$string;->ChannelBoostsJustReachedLevelNext:I

    :goto_a
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v5, v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_14

    sget p1, Lorg/telegram/messenger/R$string;->GroupNeedBoostsDescriptionForNewFeatures:I

    goto :goto_b

    :cond_14
    sget p1, Lorg/telegram/messenger/R$string;->ChannelNeedBoostsDescriptionForNewFeatures:I

    :goto_b
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    aput-object v4, v0, v2

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getBoostsTitleString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-nez v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->BoostsMaxLevelReached:I

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "BoostsMaxLevelReached"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v1, v1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->BoostGroup:I

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->BoostChannel:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    const/16 v2, 0x20

    if-eqz v1, :cond_7

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->BoostGroup:I

    goto :goto_1

    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->BoostChannel:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v2, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/messenger/R$string;->YouBoostedChannel2:I

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v0, "YouBoostedChannel2"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/messenger/R$string;->BoostGroup:I

    goto :goto_2

    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->BoostChannel:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v0, v2, :cond_9

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lorg/telegram/messenger/R$string;->BoostGroup:I

    goto :goto_3

    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->BoostChannel:I

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Lorg/telegram/messenger/R$string;->YouBoostedGroup:I

    goto :goto_4

    :cond_a
    sget v0, Lorg/telegram/messenger/R$string;->YouBoostedChannel:I

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lorg/telegram/messenger/R$string;->BoostingEnableStoriesForGroup:I

    goto :goto_5

    :cond_c
    sget v0, Lorg/telegram/messenger/R$string;->BoostingEnableStoriesForChannel:I

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    return-object v0
.end method

.method private getChatFull()Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    return-object v0
.end method

.method private getDescriptionForRemoveRestrictions()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getNeededBoostsForUnlockGroup()I

    move-result v1

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "BoostingRemoveRestrictionsSubtitle"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    invoke-direct {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;-><init>()V

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinDialogs:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    const-string p1, "LimitReachedPinDialogs"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinDialogsPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedPinDialogsPremium"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinDialogsLocked:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedPinDialogsLocked"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const/16 v4, 0x21

    if-ne p0, v4, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinSavedDialogs:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    invoke-static {p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinSavedDialogsPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPinSavedDialogsLocked:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->publicLinksLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->publicLinksLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPublicLinks:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    const-string p1, "LimitReachedPublicLinks"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPublicLinksPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedPublicLinksPremium"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedPublicLinksLocked:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedPublicLinksLocked"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0xc

    if-ne p0, v4, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistInvitesLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistInvitesLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFolderLinks:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    const-string p1, "LimitReachedFolderLinks"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFolderLinksPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedFolderLinksPremium"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFolderLinksLocked:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedFolderLinksLocked"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0xd

    if-ne p0, v4, :cond_4

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistJoinedLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->chatlistJoinedLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_folder:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedSharedFolders:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    const-string p1, "LimitReachedSharedFolders"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedSharedFoldersPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedSharedFoldersPremium"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedSharedFoldersLocked:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedSharedFoldersLocked"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x3

    if-ne p0, v4, :cond_5

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_folder:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFolders:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    const-string p1, "LimitReachedFolders"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFoldersPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedFoldersPremium"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFoldersLocked:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedFoldersLocked"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x4

    if-ne p0, v5, :cond_6

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_chats:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedChatInFolders:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    const-string p1, "LimitReachedChatInFolders"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedChatInFoldersPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedChatInFoldersPremium"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedChatInFoldersLocked:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedChatInFoldersLocked"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x5

    if-ne p0, v6, :cond_7

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->channelsLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->channelsLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_groups:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedCommunities:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    const-string p1, "LimitReachedCommunities"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedCommunitiesPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedCommunitiesPremium"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedCommunitiesLocked:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedCommunitiesLocked"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x6

    if-ne p0, v6, :cond_8

    const/16 p0, 0x64

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    const/16 p0, 0xc8

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_folder:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFileSize:I

    const-string p1, "2 GB"

    const-string v4, "4 GB"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    const-string v5, "LimitReachedFileSize"

    invoke-static {v5, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFileSizePremium:I

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v4, "LimitReachedFileSizePremium"

    invoke-static {v4, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedFileSizeLocked:I

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedFileSizeLocked"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x7

    const-string v7, "LimitReachedAccounts"

    if-ne p0, v6, :cond_9

    iput v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    iput v5, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_accounts:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedAccounts:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    invoke-static {v7, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedAccountsPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedAccountsPremium"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    iget v0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p1, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0xb

    if-ne p0, v4, :cond_a

    iput v2, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    iput v2, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedAccounts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    invoke-static {v7, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    const-string p0, ""

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0xe

    if-ne p0, v4, :cond_b

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storyExpiringLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storyExpiringLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_stories:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    const-string v0, "LimitReachedStoriesCount2First"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    const-string v0, "LimitReachedStoriesCount2Second"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    iget p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    const-string p1, "LimitReachedStoriesCount2Premium"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    iget p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0xf

    if-ne p0, v4, :cond_c

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentWeeklyLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentWeeklyLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_stories:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesWeekly:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    const-string p1, "LimitReachedStoriesWeekly"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesWeeklyPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "LimitReachedStoriesWeeklyPremium"

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    iget v0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p1, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x10

    const-string v5, "LimitReachedStoriesMonthly"

    const-string v6, "LimitReachedStoriesMonthlyPremium"

    if-ne p0, v4, :cond_d

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->msg_limit_stories:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesMonthly:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    invoke-static {v5, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesMonthlyPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v6, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v6, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x12

    if-eq p0, v4, :cond_e

    const/16 v4, 0x20

    if-eq p0, v4, :cond_e

    const/16 v4, 0x14

    if-eq p0, v4, :cond_e

    const/16 v4, 0x18

    if-eq p0, v4, :cond_e

    const/16 v4, 0x1b

    if-eq p0, v4, :cond_e

    const/16 v4, 0x1c

    if-eq p0, v4, :cond_e

    const/16 v4, 0x19

    if-eq p0, v4, :cond_e

    const/16 v4, 0x1e

    if-eq p0, v4, :cond_e

    const/16 v4, 0x23

    if-eq p0, v4, :cond_e

    const/16 v4, 0x1d

    if-eq p0, v4, :cond_e

    const/16 v4, 0x16

    if-eq p0, v4, :cond_e

    const/16 v4, 0x17

    if-eq p0, v4, :cond_e

    const/16 v4, 0x13

    if-eq p0, v4, :cond_e

    const/16 v4, 0x15

    if-eq p0, v4, :cond_e

    const/16 v4, 0x1a

    if-ne p0, v4, :cond_f

    :cond_e
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitDefault:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/MessagesController;->storiesSentMonthlyLimitPremium:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    sget p0, Lorg/telegram/messenger/R$drawable;->filled_limit_boost:I

    iput p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesMonthly:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    invoke-static {v5, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    sget p0, Lorg/telegram/messenger/R$string;->LimitReachedStoriesMonthlyPremium:I

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v6, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    iget p1, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v6, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_f
    :goto_1
    return-object v3
.end method

.method private getNeededBoostsForUnlockGroup()I
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getChatFull()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_unrestrict:I

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_applied:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static hasFixedSize(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isBoostingForAdminPossible()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

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

.method private isGroup()Z
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isMiniBoostBtnForAdminAvailable()Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isBoostingForAdminPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$boostChannel$16(Lorg/telegram/ui/Components/Loadable;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/Loadable;->setLoading(Z)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getChatFull()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_applied:I

    add-int/2addr v1, v2

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_applied:I

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewIncreaseCurrentValue()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    invoke-virtual {p0, p3, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget p3, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-gtz p3, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    iput-boolean v2, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->setMyBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onBoostSuccess()Z

    return-void
.end method

.method private synthetic lambda$boostChannel$17(Lorg/telegram/ui/Components/Loadable;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda28;

    invoke-direct {v3, p0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Loadable;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private synthetic lambda$boostChannel$18(Lorg/telegram/ui/Components/Loadable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostChannel(Lorg/telegram/ui/Components/Loadable;Z)V

    return-void
.end method

.method private synthetic lambda$boostChannel$19(Lorg/telegram/ui/Components/Loadable;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Loadable;)V

    int-to-long p1, p2

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showFloodWait(I)V

    :cond_1
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/Loadable;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$leaveFromSelectedGroups$21(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v2, v3, p2}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$22(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingAdminedChannels:Z

    if-eqz p1, :cond_2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ltz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setIconValue(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->startDelayedAnimation()V

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadInactiveChannels$26(Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChatsSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    add-int/lit8 p3, p3, 0x4

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    const/4 p2, 0x0

    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    iget p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ltz p3, :cond_3

    if-eqz p2, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    if-nez p2, :cond_4

    iget p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getLimitParams(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget p3, p3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p2, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setIconValue(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget p3, p3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->startDelayedAnimation()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$loadInactiveChannels$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    const/4 v0, 0x2

    const/16 v1, 0x16d

    const/16 v2, 0x1e

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_5

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->dates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v8

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;->dates:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v8, v9

    const v9, 0x15180

    div-int/2addr v8, v9

    if-ge v8, v2, :cond_0

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "Days"

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_0
    if-ge v8, v1, :cond_1

    div-int/2addr v8, v2

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "Months"

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    div-int/2addr v8, v1

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "Years"

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    const-string v10, "InactiveChatSignature"

    const-string v11, "Members"

    if-eqz v9, :cond_2

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v11, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget v9, Lorg/telegram/messenger/R$string;->InactiveChatSignature:I

    new-array v11, v0, [Ljava/lang/Object;

    aput-object v7, v11, v4

    aput-object v8, v11, v3

    invoke-static {v10, v9, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget v7, Lorg/telegram/messenger/R$string;->InactiveChannelSignature:I

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v4

    const-string v8, "InactiveChannelSignature"

    invoke-static {v8, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v11, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget v9, Lorg/telegram/messenger/R$string;->InactiveChatSignature:I

    new-array v11, v0, [Ljava/lang/Object;

    aput-object v7, v11, v4

    aput-object v8, v11, v3

    invoke-static {v10, v9, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :goto_3
    add-int/2addr v6, v3

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p2, v5, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;ILorg/telegram/tgnet/TLRPC$TL_messages_inactiveChats;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isShowOverlay()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getNeededBoostsForUnlockGroup()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onViewCreated$10(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostChannel()V

    return-void
.end method

.method private static synthetic lambda$onViewCreated$11(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$12(Landroid/content/Context;Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_11

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v5, 0x13

    const/16 v6, 0x15

    const/16 v7, 0x18

    if-eq v4, v5, :cond_9

    const/16 v5, 0x20

    if-eq v4, v5, :cond_9

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isMiniBoostBtnForAdminAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_8

    const/16 v2, 0x14

    if-eq v1, v2, :cond_8

    if-eq v1, v7, :cond_8

    const/16 v2, 0x19

    if-eq v1, v2, :cond_8

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_8

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_8

    const/16 v2, 0x16

    if-eq v1, v2, :cond_8

    const/16 v2, 0x17

    if-eq v1, v2, :cond_8

    if-eq v1, v6, :cond_8

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_8

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_8

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_8

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment;

    iget v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitTypeToServerString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onShowPremiumScreenRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_7
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_8
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_9
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v5, v4, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->empty:Z

    if-eqz v5, :cond_c

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showMoreBoostsNeeded(JLorg/telegram/ui/ActionBar/BottomSheet;)V

    goto/16 :goto_4

    :cond_a
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->PremiumNeeded:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, Lorg/telegram/messenger/R$string;->PremiumNeededForBoostingGroup:I

    goto :goto_3

    :cond_b
    sget v1, Lorg/telegram/messenger/R$string;->PremiumNeededForBoosting:I

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->CheckPhoneNumberYes:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_4

    :cond_c
    iget-boolean v5, v4, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->canApply:Z

    if-eqz v5, :cond_e

    iget-wide v8, v4, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->replaceDialogId:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_e

    iget-boolean v1, v4, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->needSelector:Z

    if-eqz v1, :cond_d

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v1

    if-eqz v1, :cond_d

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iput-boolean v3, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->invalidationEnabled:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-object v3, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->myBoosts:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    iget-object v2, v2, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_4

    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostChannel()V

    goto/16 :goto_4

    :cond_e
    if-eqz v5, :cond_10

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/high16 v9, 0x42700000    # 60.0f

    const/16 v10, 0x3c

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v2}, Landroid/graphics/Paint;-><init>(I)V

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$drawable;->filled_limit_boost:I

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$3;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v0, v13, v9, v11}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$3;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;Landroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v14, 0x1c

    const/high16 v15, 0x41e00000    # 28.0f

    const/16 v16, 0x0

    const/high16 v17, 0x42080000    # 34.0f

    const/high16 v18, 0x42080000    # 34.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_arrow_avatar:I

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/16 v11, 0x11

    invoke-static {v7, v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v11, 0x3c

    const/high16 v12, 0x42700000    # 60.0f

    const/4 v13, 0x0

    const/high16 v14, 0x42c00000    # 96.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, -0x2

    invoke-static {v9, v10, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v6, :cond_f

    const v6, 0x3ccccccd    # 0.025f

    invoke-static {v4, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/TextView;F)V

    :cond_f
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v14, 0x18

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/16 v12, 0x18

    const/16 v13, 0x50

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iget v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-wide v10, v10, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->replaceDialogId:J

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {v6, v10, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v5, v9, v6}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    new-instance v5, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v10, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {v5, v10, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v7, v6, v5}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->ReplaceBoostChannelDescription:I

    iget-object v7, v9, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v3

    aput-object v6, v8, v2

    const-string v2, "ReplaceBoostChannelDescription"

    invoke-static {v2, v1, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lorg/telegram/messenger/R$string;->Replace:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v5, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda19;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v5, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_4

    :cond_10
    iget v1, v4, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->floodWait:I

    if-eqz v1, :cond_11

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showFloodWait(I)V

    :cond_11
    :goto_4
    return-void
.end method

.method private synthetic lambda$onViewCreated$13()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewIncreaseCurrentValue()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$14(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonSetSubscribe:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v2, "invite_privacy"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v0, 0x13

    if-eq p1, v0, :cond_9

    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isMiniBoostBtnForAdminAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v0, 0xb

    if-eq p1, v0, :cond_7

    const/16 v0, 0x22

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeSelectedLinks()V

    goto :goto_1

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->leaveFromSelectedGroups()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_8
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->sendInviteMessages(Ljava/util/HashMap;)V

    return-void

    :cond_9
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->canApply:Z

    if-eqz v0, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v0, :cond_d

    iget-boolean p1, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    if-eqz p1, :cond_d

    new-instance p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->needSelector:Z

    if-eqz v0, :cond_a

    const-wide/16 v0, 0x12c

    goto :goto_4

    :cond_a
    const-wide/16 v0, 0x0

    :goto_4
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    :cond_b
    iget-boolean p1, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz p1, :cond_c

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean p1, p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-nez p1, :cond_c

    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    invoke-static {v0, v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showMoreBoostsNeeded(JLorg/telegram/ui/ActionBar/BottomSheet;)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_d
    :goto_5
    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isShowOverlay()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Landroid/view/View;I)V
    .locals 2

    instance-of p2, p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    check-cast p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChecked(ZZ)V

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    goto :goto_3

    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    if-nez p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0xb

    if-eq p2, v1, :cond_2

    const/16 v1, 0x22

    if-ne p2, v1, :cond_3

    :cond_2
    return-void

    :cond_3
    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getObject()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->showPremiumBlockedToast(Landroid/view/View;J)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method private synthetic lambda$onViewCreated$6(Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    iget p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v0, 0x13

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v1
.end method

.method private synthetic lambda$onViewCreated$7(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$onViewCreated$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$9(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lockInvalidation:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->invalidationEnabled:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$revokeLinks$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onSuccessRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$revokeLinks$25(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    const-string v0, ""

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    const/16 v2, 0x40

    invoke-virtual {v0, p3, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendInviteMessages$20()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    sget v4, Lorg/telegram/messenger/R$raw;->voip_invite:I

    sget v5, Lorg/telegram/messenger/R$string;->InviteLinkSentSingle:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_0
    sget v3, Lorg/telegram/messenger/R$raw;->voip_invite:I

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v0

    const-string v0, "InviteLinkSent"

    invoke-static {v0, v4, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$showPremiumBlockedToast$15()V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v3, "noncontacts"

    invoke-direct {v2, v3}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method private leaveFromSelectedGroups()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "LeaveCommunities"

    invoke-static {v7, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    sget v6, Lorg/telegram/messenger/R$string;->ChannelLeaveAlertWithName:I

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    const-string v1, "ChannelLeaveAlertWithName"

    invoke-static {v1, v6, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->ChatsLeaveAlert:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "ChatsLeaveAlert"

    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupLeave:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v3, v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private limitPreviewIncreaseCurrentValue()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    iget v3, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->current_level_boosts:I

    sub-int v4, v2, v3

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v4, v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->increaseCurrentValue(III)V

    return-void
.end method

.method public static limitTypeToServerString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const-string p0, "double_limits__chatlists_joined"

    return-object p0

    :pswitch_2
    const-string p0, "double_limits__chatlist_invites"

    return-object p0

    :pswitch_3
    const-string p0, "double_limits__stickers_faved"

    return-object p0

    :pswitch_4
    const-string p0, "double_limits__saved_gifs"

    return-object p0

    :pswitch_5
    const-string p0, "double_limits__caption_length"

    return-object p0

    :pswitch_6
    const-string p0, "double_limits__upload_max_fileparts"

    return-object p0

    :pswitch_7
    const-string p0, "double_limits__channels"

    return-object p0

    :pswitch_8
    const-string p0, "double_limits__dialog_filters_chats"

    return-object p0

    :pswitch_9
    const-string p0, "double_limits__dialog_filters"

    return-object p0

    :pswitch_a
    const-string p0, "double_limits__channels_public"

    return-object p0

    :pswitch_b
    const-string p0, "double_limits__dialog_pinned"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private loadAdminedChannels()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingAdminedChannels:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadInactiveChannels()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getInactiveChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getInactiveChannels;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private onBoostSuccess()Z
    .locals 8

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatWasBoostedByUser:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    invoke-virtual {v3}, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->copy()Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v3, 0x2

    aput-object v4, v6, v3

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getNeededBoostsForUnlockGroup()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupRestrictionsUnlockedByBoosts:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameOnUIThread(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return v7

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    :cond_1
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$4;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v0, v7}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->recreateTitleAndDescription()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->title:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostsTitleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->description:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getBoostDescriptionStringAfterBoost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v0, v5}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget v1, v1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostCount:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->setCount(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->boostCounterView:Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return v2
.end method

.method public static openBoostsForPostingStories(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Ljava/lang/Runnable;)V
    .locals 7

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/16 v4, 0x12

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p4, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    invoke-virtual {v0, p5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->showStatisticButtonInLink(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static openBoostsForRemoveRestrictions(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;JZ)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
    .locals 7

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/16 v4, 0x20

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    if-eqz p5, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static openBoostsForUsers(Lorg/telegram/ui/ActionBar/BaseFragment;ZJLorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 7

    if-eqz p0, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/16 v4, 0x13

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, p4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    invoke-virtual {v0, p5, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    invoke-virtual {v0, p6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setChatMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private revokeLinks(Ljava/util/ArrayList;)V
    .locals 9

    const/4 v0, 0x2

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "RevokeLinks"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentIsChannel:Z

    const-string v6, "/"

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/messenger/R$string;->RevokeLinkAlertChannel:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v3

    aput-object v2, v0, v4

    const-string v2, "RevokeLinkAlertChannel"

    invoke-static {v2, v5, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_0
    sget v5, Lorg/telegram/messenger/R$string;->RevokeLinkAlert:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v3

    aput-object v2, v0, v4

    const-string v2, "RevokeLinkAlert"

    invoke-static {v2, v5, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentIsChannel:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->RevokeLinksAlertChannel:I

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "RevokeLinksAlertChannel"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->RevokeLinksAlert:I

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "RevokeLinksAlert"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->RevokeButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method private revokeSelectedLinks()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->revokeLinks(Ljava/util/ArrayList;)V

    return-void
.end method

.method private sendInviteMessages(Ljava/util/HashMap;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->forceLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->forceLink:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v2, :cond_c

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v17, 0x0

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v7

    cmp-long v9, v7, v17

    if-gtz v9, :cond_3

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v7

    :cond_3
    cmp-long v9, v7, v17

    if-ltz v9, :cond_4

    move-object v7, v3

    goto :goto_2

    :cond_4
    move-object v7, v4

    :goto_2
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v15, 0x1

    if-nez v1, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda25;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-static {v2, v1, v15, v3}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessagesMultiConfirmation(ILjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback;)Z

    return-void

    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/4 v3, 0x0

    const/16 v20, 0x0

    :cond_8
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_9

    move-wide/from16 v13, v17

    goto :goto_5

    :cond_9
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v13, v4

    :goto_5
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v3, v2

    move-wide/from16 v24, v13

    move/from16 v13, v22

    move/from16 v14, v23

    const/16 v22, 0x1

    move-object/from16 v15, v16

    move/from16 v16, v21

    invoke-static/range {v3 .. v16}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v3

    move-wide/from16 v4, v24

    iput-wide v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    iget-wide v3, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    cmp-long v5, v3, v17

    const/4 v15, 0x1

    if-lez v5, :cond_8

    const/16 v20, 0x1

    goto :goto_4

    :cond_a
    if-nez v20, :cond_b

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda26;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private setupBoostFeatures()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eqz v0, :cond_5

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController$PeerColors;->maxLevel(Z)I

    move-result v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController$PeerColors;->maxLevel(Z)I

    move-result v5

    :cond_3
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->groupTranscribeLevelMin:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->groupWallpaperLevelMin:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->groupCustomWallpaperLevelMin:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->groupEmojiStatusLevelMin:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->groupProfileBgIconLevelMin:I

    :goto_3
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_4

    :cond_4
    iget v4, v0, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lorg/telegram/messenger/MessagesController;->channelRestrictSponsoredLevelMin:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelAutotranslationLevelMin:I

    goto :goto_3

    :cond_5
    :goto_4
    if-gt v1, v3, :cond_8

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesForLevel(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v2, :cond_6

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->arraysEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;-><init>(IZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v2, v0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method private showPremiumBlockedToast(Landroid/view/View;J)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->shiftDp:I

    neg-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->shiftDp:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-ltz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p2, Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v2, Lorg/telegram/messenger/R$string;->UserBlockedNonPremium:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p2, Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v2, Lorg/telegram/messenger/R$string;->UserBlockedNonPremium:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->UserBlockedNonPremiumButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p2, p3, p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private updateButton()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonSetSubscribe:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->InvitePremiumBlockedSubscribe:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v2, 0x13

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    const/16 v2, 0x20

    if-eq v0, v2, :cond_8

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isMiniBoostBtnForAdminAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_5

    const/16 v2, 0x22

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RevokeLinks"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LeaveCommunities"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v1, v0, v3, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->checkCounterView()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->Close:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->SendInviteLink:I

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->ActionSkip:I

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/CounterView;->setCount(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_a

    :cond_8
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v1, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->canApply:Z

    if-nez v1, :cond_9

    iget-boolean v2, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->empty:Z

    if-eqz v2, :cond_c

    :cond_9
    iget-boolean v2, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    if-nez v2, :cond_c

    iget-boolean v2, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->clearOverlayText()V

    goto/16 :goto_a

    :cond_c
    :goto_5
    if-eqz v1, :cond_f

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingBoostAgain:I

    :goto_6
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_e

    sget v1, Lorg/telegram/messenger/R$string;->BoostGroup:I

    goto :goto_6

    :cond_e
    sget v1, Lorg/telegram/messenger/R$string;->BoostChannel:I

    goto :goto_6

    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostMiniBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostBtn:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v0, :cond_15

    sget v1, Lorg/telegram/messenger/R$string;->BoostGroup:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_a

    :cond_f
    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostMiniBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v0, :cond_10

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_10
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    :goto_9
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto :goto_a

    :cond_11
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v0, :cond_12

    sget v1, Lorg/telegram/messenger/R$string;->BoostGroup:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostMiniBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostBtn:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->BoostingBoostAgain:I

    goto :goto_9

    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostToUnlockGroupBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v0, :cond_14

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostMiniBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    goto :goto_9

    :cond_15
    :goto_a
    return-void
.end method

.method private updateRows()V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesStartRow:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const v2, 0x3e75c28f    # 0.24f

    const/16 v3, 0x13

    if-eq v1, v3, :cond_d

    const/16 v4, 0x12

    if-eq v1, v4, :cond_d

    const/16 v4, 0x14

    if-eq v1, v4, :cond_d

    const/16 v4, 0x18

    if-eq v1, v4, :cond_d

    const/16 v4, 0x1b

    if-eq v1, v4, :cond_d

    const/16 v4, 0x1c

    if-eq v1, v4, :cond_d

    const/16 v4, 0x16

    if-eq v1, v4, :cond_d

    const/16 v4, 0x17

    if-eq v1, v4, :cond_d

    const/16 v4, 0x19

    if-eq v1, v4, :cond_d

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_d

    const/16 v4, 0x1d

    if-eq v1, v4, :cond_d

    const/16 v4, 0x15

    if-eq v1, v4, :cond_d

    const/16 v4, 0x1e

    if-eq v1, v4, :cond_d

    const/16 v4, 0x23

    if-ne v1, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v3, 0x1f

    if-eq v1, v3, :cond_c

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->hasFixedSize(I)Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v3, 0x22

    const/16 v4, 0xb

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v5, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loading:Z

    if-eqz v2, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    goto/16 :goto_6

    :cond_3
    if-ne v1, v4, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    if-eqz v2, :cond_10

    :cond_4
    if-ne v1, v4, :cond_7

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumInviteBlockedUsers:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumMessagingBlockedUsers:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_7

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumInviteBlockedUsers:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumMessagingBlockedUsers:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    if-nez v1, :cond_b

    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    iget v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-eq v2, v4, :cond_a

    if-ne v2, v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x5

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->inactiveChats:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    goto :goto_1

    :cond_a
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    goto :goto_1

    :goto_3
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    :cond_b
    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    iget v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    goto :goto_6

    :cond_c
    :goto_4
    iput v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setupBoostFeatures()V

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    goto :goto_6

    :cond_d
    :goto_5
    if-ne v1, v3, :cond_e

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    iput v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->linkRow:I

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->giveawayGiftsPurchaseAvailable:Z

    if-eqz v1, :cond_f

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->bottomRow:I

    :cond_f
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setupBoostFeatures()V

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    :cond_10
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected channelColorLevelMin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 0

    new-instance p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 8

    sget p2, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, p2, :cond_12

    aget-object p1, p3, v3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    instance-of v4, p3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v1, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v0, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_1

    :cond_1
    move-object v0, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/ActionBar/BaseFragment;

    :cond_2
    instance-of v4, v1, Lorg/telegram/ui/ChatEditActivity;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    if-eqz p2, :cond_5

    instance-of p2, v0, Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_4
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    invoke-static {v5, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    invoke-static {v0, p1, v3}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :goto_2
    return-void

    :cond_6
    instance-of v0, p3, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    invoke-static {p3, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void

    :cond_7
    instance-of p3, p3, Lorg/telegram/ui/ChannelColorActivity;

    if-eqz p3, :cond_d

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_a

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v1, Lorg/telegram/ui/ChatActivity;

    if-nez v3, :cond_9

    instance-of v3, v1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    move-object v5, v1

    :cond_a
    if-nez v5, :cond_b

    return-void

    :cond_b
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {v5, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void

    :cond_d
    if-eqz p2, :cond_10

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p2, p2

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3, p2, v3, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyInstance()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {p2, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_9

    :cond_e
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, v1, :cond_f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lorg/telegram/ui/ActionBar/BaseFragment;

    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    instance-of p2, v5, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_18

    invoke-static {v5, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_9

    :cond_10
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_11

    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p2, p2

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3, p2, v3, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyInstance()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_6
    invoke-static {p2, p1, v3}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_9

    :cond_11
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    goto :goto_6

    :cond_12
    sget p2, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I

    if-ne p1, p2, :cond_17

    aget-object p1, p3, v3

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p3, p3, v0

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz p3, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    if-nez v0, :cond_13

    goto :goto_8

    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v4, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    add-int/2addr v4, p2

    iput v4, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->boosts:I

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v4, 0x20

    if-ne v0, v4, :cond_14

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->getChatFull()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_14

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_applied:I

    add-int/2addr v4, p2

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_applied:I

    :cond_14
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewIncreaseCurrentValue()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    invoke-virtual {p0, p3, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->next_level_boosts:I

    if-gtz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_7

    :cond_15
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p3, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    iput-boolean v2, p3, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->boostedNow:Z

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->setMyBoosts(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onBoostSuccess()Z

    move-result p1

    if-eqz p1, :cond_18

    new-array p1, v3, [Ljava/lang/Object;

    const-string p3, "BoostingFromOtherChannel"

    invoke-static {p3, v1, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string p1, "BoostingReassignedFromPlural"

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->ic_boosts_replace:I

    const/16 v0, 0x1e

    invoke-virtual {p2, p3, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletinWithIconSize(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 p2, 0xfa0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_9

    :cond_16
    :goto_8
    return-void

    :cond_17
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didStartedMultiGiftsSelector:I

    if-ne p1, p2, :cond_18

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_18
    :goto_9
    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    sget v0, Lorg/telegram/messenger/R$string;->LimitReached:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->BoostGroup:I

    goto :goto_0

    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->BoostingAdditionalFeaturesTitle:I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->BoostGroup:I

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->BoostChannel:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->UnlockBoostChannelFeatures:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->CallInviteViaLink:I

    goto :goto_0

    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink2:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedMultiGiftsSelector:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedMultiGiftsSelector:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 13

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostMiniBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setFlickeringLoading(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostMiniBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostBtn:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostMiniBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$1;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const v3, 0x3ca3d70a    # 0.02f

    const v5, 0x3f99999a    # 1.2f

    invoke-static {v1, v3, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->hasFixedSize:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v3, 0x12

    if-eq v1, v3, :cond_0

    const/16 v3, 0x14

    if-eq v1, v3, :cond_0

    const/16 v3, 0x18

    if-eq v1, v3, :cond_0

    const/16 v3, 0x19

    if-eq v1, v3, :cond_0

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_0

    const/16 v3, 0x1d

    if-eq v1, v3, :cond_0

    const/16 v3, 0x16

    if-eq v1, v3, :cond_0

    const/16 v3, 0x17

    if-eq v1, v3, :cond_0

    const/16 v3, 0x15

    if-eq v1, v3, :cond_0

    const/16 v3, 0x1b

    if-eq v1, v3, :cond_0

    const/16 v3, 0x1c

    if-eq v1, v3, :cond_0

    const/16 v3, 0x1e

    if-eq v1, v3, :cond_0

    const/16 v3, 0x23

    if-eq v1, v3, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x42900000    # 72.0f

    const/16 v7, 0x50

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    int-to-float v3, v3

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v5

    const/high16 v5, 0x41800000    # 16.0f

    add-float v11, v3, v5

    const/4 v10, 0x0

    const/high16 v12, 0x41400000    # 12.0f

    const/4 v6, -0x1

    const/high16 v7, 0x42400000    # 48.0f

    const/16 v8, 0x50

    move v9, v11

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, v4, v4, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->enterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    return-void
.end method

.method public setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isCurrentChat:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    return-void
.end method

.method public setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    return-void
.end method

.method public setChatMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method

.method public setCurrentValue(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->currentValue:I

    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dialogId:J

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    return-void
.end method

.method public setRequiredLvl(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->requiredLvl:I

    return-void
.end method

.method public setRestrictedUsers(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->fromChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->forceLink:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    const/4 p5, 0x3

    invoke-static {p1, p5}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumMessagingBlockedUsers:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumInviteBlockedUsers:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canSendLink:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p3, :cond_3

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_2

    :cond_3
    iget-object p5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p5, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateRows()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updateButton()V

    iget p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 p2, 0xb

    if-eq p1, p2, :cond_5

    const/16 p2, 0x22

    if-ne p1, p2, :cond_c

    :cond_5
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->restrictedUsers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_c

    :cond_7
    if-eqz p4, :cond_c

    if-eqz p3, :cond_c

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v0, :cond_8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, v0, :cond_9

    :cond_8
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_c

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->divider:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_c
    return-void
.end method

.method public setVeryLargeFile(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->updatePremiumButtonText()V

    return-void
.end method

.method public showStatisticButtonInLink(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->statisticClickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public updatePremiumButtonText()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonSetSubscribe:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->InvitePremiumBlockedSubscribe:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto/16 :goto_8

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v2, 0x13

    if-eq v0, v2, :cond_8

    const/16 v2, 0x20

    if-eq v0, v2, :cond_8

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isMiniBoostBtnForAdminAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v2, 0x12

    if-eq v0, v2, :cond_7

    const/16 v2, 0x14

    if-eq v0, v2, :cond_7

    const/16 v2, 0x18

    if-eq v0, v2, :cond_7

    const/16 v2, 0x19

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_7

    const/16 v2, 0x16

    if-eq v0, v2, :cond_7

    const/16 v2, 0x17

    if-eq v0, v2, :cond_7

    const/16 v2, 0x15

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_7

    const/16 v2, 0x23

    if-ne v0, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isVeryLargeFile:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->IncreaseLimit:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    if-eqz v0, :cond_5

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    add-int/lit8 v2, v1, 0x1

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$raw;->addone_icon:I

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    goto/16 :goto_8

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3fcccccd    # 1.6f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_5

    const/high16 v1, 0x40200000    # 2.5f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$raw;->double_icon:I

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->hideIcon()V

    goto/16 :goto_8

    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    :goto_3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "d "

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v1, Lorg/telegram/messenger/R$string;->CopyLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_8
    :goto_4
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    if-eqz v1, :cond_9

    iget-boolean v1, v1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->alreadyActive:Z

    if-eqz v1, :cond_9

    sget v1, Lorg/telegram/messenger/R$string;->BoostingBoostAgain:I

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Lorg/telegram/messenger/R$string;->BoostGroup:I

    goto :goto_5

    :cond_a
    sget v1, Lorg/telegram/messenger/R$string;->BoostChannel:I

    goto :goto_5

    :goto_6
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;->isMaxLvl:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    :goto_7
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_c

    sget v1, Lorg/telegram/messenger/R$string;->BoostGroup:I

    goto :goto_7

    :cond_c
    sget v1, Lorg/telegram/messenger/R$string;->BoostChannel:I

    goto :goto_7

    :cond_d
    :goto_8
    return-void
.end method
