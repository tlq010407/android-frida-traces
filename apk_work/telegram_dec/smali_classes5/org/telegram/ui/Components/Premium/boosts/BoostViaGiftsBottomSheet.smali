.class public Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;
    }
.end annotation


# instance fields
.field private actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

.field private actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

.field private adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

.field private additionalPrize:Ljava/lang/String;

.field private final currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final giftCodeOptions:Ljava/util/List;

.field private final hideKeyboardRunnable:Ljava/lang/Runnable;

.field private isAdditionalPrizeSelected:Z

.field private isShowWinnersSelected:Z

.field private final items:Ljava/util/ArrayList;

.field private onCloseClick:Ljava/lang/Runnable;

.field private final prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

.field private selectedBoostSubType:I

.field private selectedBoostType:I

.field private final selectedChats:Ljava/util/List;

.field private final selectedCountries:Ljava/util/List;

.field private selectedEndDate:J

.field private selectedMonths:I

.field private selectedParticipantsType:I

.field private selectedSliderIndex:I

.field private selectedStars:J

.field private selectedStarsSliderIndex:I

.field private final selectedUsers:Ljava/util/List;

.field private final sliderStarsValues:Ljava/util/List;

.field private final sliderValues:Ljava/util/List;

.field private starOptionsExpanded:Z

.field private final starsNotExtended:Ljava/util/List;

.field private top:I


# direct methods
.method public static synthetic $r8$lambda$-9sicDQhv4jz2gJRm7Od1nh7NtE(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$06I96SDwhu8JHD4iaukwlYPVr8U(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Ljava/lang/Void;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$14(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7sb3k93c-sGAnqmwiRsH7ULEbiI(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$11(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7x7WIhUZU4CwXrwb-L0ONB70TDE(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$10(Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$A0RIum1NUgXrNdXM535FHuku4Ng(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Ljava/lang/Void;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$18(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EiBLA8r3Hz4YmCLYyeYRy8urOXc(Lorg/telegram/ui/ChatActivity;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$6(Lorg/telegram/ui/ChatActivity;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$EzF-bEqpt97TJVqwHL9hS3ts-20(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$9(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FpdSGqb9_E5eIX6uGvIG3aahFYw(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$16(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kq_-qLB8NBwFwbhTzYAJBFwtWSI(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$loadOptions$21(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KydXvLavnzY-W94jGjRNO7o2ZM8(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$4(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LOrnA_m5vHKU68P_PWq3ODdPYyc(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$MsW4fWx8zveFd2SSsEATrsS5VfA(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$26(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OdjsBUL1WI7RhKYNpZjcAk3aZ7g(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;JJLorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Ljava/lang/Void;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$8(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;JJLorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PRI-tOfs7H08UfDJljjQkmFMFmw(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;JLorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$20(Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;JLorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WEtneWrc2ArngHa62ZFys89uE-4(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$25(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_DVXAQh2aJ9yGnGLtR8yepEOuOU(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$1(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$e5DBxQROw0eJLTP9lK5DLnngDzo(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$15(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e9UDhPkiBRd3f8ZouB8nsMl5V-Q(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$eAxkePVcgc80rDqgq2W5h1gjUzk(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$7(Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eOabwdDs2TTK7h1bpk3s6Kk4zz8(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$12(Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f47PB0p-9Ttrxvgxxsz69VUJZ7A(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$22(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gQpph1_gDDRwNLcXh6ivjPkILM8(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$msH_3bWWMWnE6U5I03TlIED1PwY(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$mw8yf-HArQH3_gPKaa2afpIIWWw(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$23(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nKcwxS4D2AMPFehyMFUYQ2vUyos(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$2(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$twPkYp4Q9S-VzO6OpM-uy7OIIiY(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$new$19(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x0JBU7LysW7-QGFvzdlBW0PonuI(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$xXcYV6uTaClVckMo61dLZL9mXhA(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->lambda$updateRows$27()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZJLorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v2, p6

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p3}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v5

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v11, 0x19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0xa

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    if-eqz v5, :cond_0

    new-array v5, v13, [Ljava/lang/Integer;

    aput-object v19, v5, v7

    aput-object v17, v5, v1

    aput-object v16, v5, v4

    aput-object v14, v5, v0

    aput-object v12, v5, v3

    aput-object v11, v5, v15

    const/16 v18, 0x6

    aput-object v9, v5, v18

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v13, v5

    const/4 v5, 0x7

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    const/16 v18, 0x6

    new-array v13, v5, [Ljava/lang/Integer;

    aput-object v19, v13, v7

    aput-object v17, v13, v1

    aput-object v16, v13, v4

    aput-object v14, v13, v0

    aput-object v12, v13, v3

    aput-object v11, v13, v15

    aput-object v9, v13, v18

    const/4 v5, 0x7

    aput-object v8, v13, v5

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    :goto_0
    iput-object v13, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v13

    if-eqz v13, :cond_1

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v19, v5, v7

    aput-object v17, v5, v1

    aput-object v16, v5, v4

    aput-object v14, v5, v0

    aput-object v12, v5, v3

    aput-object v11, v5, v15

    const/4 v13, 0x6

    aput-object v9, v5, v13

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    const/4 v13, 0x6

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v19, v5, v7

    aput-object v17, v5, v1

    aput-object v16, v5, v4

    aput-object v14, v5, v0

    aput-object v12, v5, v3

    aput-object v11, v5, v15

    aput-object v9, v5, v13

    const/4 v3, 0x7

    aput-object v8, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_1
    iput-object v3, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderStarsValues:Ljava/util/List;

    const/16 v3, 0x2ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x2710

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v8, 0xc350

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v3, v0, v7

    aput-object v5, v0, v1

    aput-object v8, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->starsNotExtended:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    sget v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_PREMIUM:I

    iput v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    iput v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostSubType:I

    sget v0, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_ALL:I

    iput v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    const/16 v0, 0xc

    iput v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->getThreeDaysAfterToday()J

    move-result-wide v8

    iput-wide v8, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    iput v4, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    iput v4, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    const-string v0, ""

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    iput-boolean v1, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isShowWinnersSelected:Z

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->hideKeyboardRunnable:Ljava/lang/Runnable;

    iput-object v2, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    const v0, 0x3e19999a    # 0.15f

    iput v0, v6, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    iput-boolean v7, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    iput v7, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    iget-object v0, v6, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, v6, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    instance-of v0, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    iput v0, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    :cond_2
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v1, v6, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v3, 0x42880000    # 68.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v7, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v6, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda1;

    move-object/from16 v5, p1

    invoke-direct {v1, v6, v5}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget v0, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-wide/from16 v3, p4

    neg-long v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v8, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    iget-object v11, v6, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v12, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v12, v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    new-instance v13, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v13, v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    new-instance v14, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v14, v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setItems(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/SlideChooseView$Callback;Lorg/telegram/ui/Components/Premium/boosts/cells/ChatCell$ChatDeleteListener;Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$AfterTextChangedListener;)V

    invoke-direct {v6, v7, v7}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    new-instance v8, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    new-instance v9, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda5;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;JLorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v6, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x42880000    # 68.0f

    const/16 v9, 0x50

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->loadOptions()V

    iget v0, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiveawayOptionsLoaded:I

    invoke-virtual {v0, v6, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private getPerUserStarsValues()Ljava/util/List;
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStars:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getPerUserStarsValues(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getPerUserStarsValues(J)Ljava/util/List;
    .locals 4

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedStarsOption(J)Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->winners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->winners:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;

    iget v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->users:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->users:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->per_user_stars:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getSelectedPerUserStars()J
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getPerUserStarsValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    if-ltz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSelectedPerUserStars(J)J
    .locals 2

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getPerUserStarsValues(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    long-to-float p1, p1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedPerUserStars()J

    move-result-wide v0

    long-to-float p2, v0

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method private getSelectedSliderValue()I
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_PREMIUM:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSliderValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    :cond_1
    iput v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    goto :goto_0
.end method

.method private getSelectedSliderValueWithBoosts()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_PREMIUM:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v1

    mul-int v0, v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedStarsOption()Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->yearly_boosts:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v1

    mul-int v0, v0, v1

    :goto_0
    return v0
.end method

.method private getSliderValues()Ljava/util/List;
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_PREMIUM:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedStarsOption()Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->winners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->winners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;

    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->users:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayWinnersOption;->users:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getStarsOptions()Ljava/util/List;
    .locals 6

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getGiveawayOptions()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    if-eqz v3, :cond_0

    iget-wide v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private isGiveaway()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostSubType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPreparedGiveaway()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$loadOptions$21(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$1(ZI)V
    .locals 2

    int-to-long p1, p2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;JJ)V
    .locals 21

    move-object/from16 v8, p0

    iget-wide v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->prepareServerDate(J)I

    move-result v13

    iget v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    iget-object v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    iget-object v10, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    iget-object v11, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    iget-object v12, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v15, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isShowWinnersSelected:Z

    iget-boolean v9, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    move-object/from16 v7, p1

    iget v5, v7, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    iget-object v6, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    new-instance v19, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda21;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;JJLorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;)V

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda22;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    move v1, v9

    move-object/from16 v9, p1

    move/from16 v16, v1

    move-object/from16 v20, v0

    invoke-static/range {v9 .. v20}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->launchPreparedGiveaway(Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;IZZZILjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private static synthetic lambda$new$11(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;)V
    .locals 4

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$raw;->stars_send:I

    sget v1, Lorg/telegram/messenger/R$string;->StarsGiveawaySentPopup:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    long-to-int p1, v2

    const-string v2, "StarsGiveawaySentPopupInfo"

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    sget-object v3, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v3

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->dismiss()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long p2, p2

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    new-instance p3, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda25;

    invoke-direct {p3, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;)V

    invoke-virtual {v1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->whenFullyVisible(Ljava/lang/Runnable;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->dismiss()V

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v1, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$13()V
    .locals 5

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$14(Ljava/lang/Void;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->dismiss()V

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    const-wide/16 v0, 0xdc

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$15(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$16(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->users:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    return-void
.end method

.method private synthetic lambda$new$17()V
    .locals 5

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$18(Ljava/lang/Void;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->dismiss()V

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    const-wide/16 v0, 0xdc

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$19(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 5

    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;->getType()I

    move-result v2

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;->TYPE_WINNERS:I

    if-ne v2, v4, :cond_0

    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isShowWinnersSelected:Z

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;->TYPE_ADDITION_PRIZE:I

    if-ne v2, v4, :cond_2

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setDivider(Z)V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->notifyAdditionalPrizeItem(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->notifyAllVisibleTextDividers()V

    iget-boolean p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->hideKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->hideKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;

    if-eqz p3, :cond_9

    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;

    if-eqz p3, :cond_8

    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->getSelectedType()I

    move-result p3

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_PREMIUM:I

    if-eq p3, v2, :cond_5

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    if-ne p3, v2, :cond_3

    goto :goto_2

    :cond_3
    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    if-ne p3, v2, :cond_4

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    if-eqz p3, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {p3, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;->onSelectUser(Ljava/util/List;)V

    goto :goto_3

    :cond_4
    iput p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostSubType:I

    :goto_1
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    goto :goto_3

    :cond_5
    :goto_2
    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_PREMIUM:I

    if-ne p3, v2, :cond_7

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    if-ne v2, p3, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;->onSelectUser(Ljava/util/List;)V

    :cond_6
    return-void

    :cond_7
    iput p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    goto :goto_1

    :cond_8
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->markChecked(Lorg/telegram/ui/Components/RecyclerListView;)V

    :cond_9
    :goto_3
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;

    if-eqz p3, :cond_b

    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->getSelectedType()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    if-ne p2, p1, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    if-eqz p2, :cond_a

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-interface {p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;->onSelectCountries(Ljava/util/List;)V

    :cond_a
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    goto :goto_4

    :cond_b
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/DurationCell;

    if-eqz p3, :cond_c

    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/DurationCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/DurationCell;->getGifCode()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->notifyAllVisibleTextDividers()V

    goto :goto_4

    :cond_c
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/DateEndCell;

    if-eqz p3, :cond_d

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2, p3, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showDatePicker(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_4

    :cond_d
    instance-of p1, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/AddChannelCell;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    if-eqz p1, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;->onAddChat(Ljava/util/List;)V

    goto :goto_4

    :cond_e
    instance-of p1, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;

    if-eqz p1, :cond_10

    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->getOption()Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-wide p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStars:J

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    :cond_f
    return-void

    :cond_10
    instance-of p1, p2, Lorg/telegram/ui/Stars/StarsIntroActivity$ExpandView;

    if-eqz p1, :cond_11

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->starOptionsExpanded:Z

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    :cond_11
    :goto_4
    return-void
.end method

.method private synthetic lambda$new$20(Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;JLorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v2, p1

    iget-object v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    if-eqz v0, :cond_1

    move-object v0, v2

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_2

    iget-wide v0, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;->stars:J

    :goto_2
    move-wide v6, v0

    goto :goto_3

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :goto_3
    new-instance v9, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda11;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v4, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;JJ)V

    invoke-static {v9}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showStartGiveawayDialog(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_4
    move-object v10, v0

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedStarsOption()Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v14

    if-nez v13, :cond_6

    return-void

    :cond_6
    iget-object v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    goto :goto_4

    :cond_7
    const/16 v18, 0x0

    :goto_4
    iget v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v9

    iget-object v11, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v12, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    iget-object v15, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    iget-wide v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->prepareServerDate(J)I

    move-result v16

    iget-boolean v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isShowWinnersSelected:Z

    iget-boolean v1, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    iget-object v2, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v3, v8, v13}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;)V

    move/from16 v17, v0

    move/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v9 .. v21}, Lorg/telegram/ui/Stars/StarsController;->buyGiveaway(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/List;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;ILjava/util/List;IZZZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    :cond_8
    :goto_5
    return-void

    :cond_9
    iget v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostSubType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    if-ne v0, v1, :cond_c

    iget-object v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    iget-object v1, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_10

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    iget v1, v10, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    iget v4, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    if-ne v1, v4, :cond_b

    iget-object v1, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v2, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-static {v0, v1, v2, v10}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->checkReduceUsers(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    iget-object v9, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    iget-object v11, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v14, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {v14, v8}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    new-instance v15, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {v15, v8}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    const/4 v12, 0x0

    move-object/from16 v13, p4

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->payGiftCode(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_9

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    iget-object v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    iget v6, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    if-ne v5, v6, :cond_f

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isGoogleBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v9, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v12, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    new-instance v14, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v14, v8}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    move-object v13, v4

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->checkReduceQuantity(Ljava/util/List;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/messenger/Utilities$Callback;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    if-ne v0, v1, :cond_e

    const/4 v14, 0x1

    goto :goto_8

    :cond_e
    const/4 v14, 0x0

    :goto_8
    iget-wide v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->prepareServerDate(J)I

    move-result v13

    iget-object v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    iget-object v9, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    iget-object v10, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    iget-object v12, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isShowWinnersSelected:Z

    iget-boolean v1, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    iget-object v2, v8, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v3, v8}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {v5, v8}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    move-object v11, v4

    move-object/from16 v15, p4

    move/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    invoke-static/range {v9 .. v20}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->payGiveAway(Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Lorg/telegram/tgnet/TLRPC$Chat;IZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_9

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_10
    :goto_9
    return-void
.end method

.method private synthetic lambda$new$3(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_PREMIUM:I

    if-ne v0, v1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateCounter(I)V

    iget p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v0, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->updateBoostCounter(I)V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method private static synthetic lambda$new$6(Lorg/telegram/ui/ChatActivity;J)V
    .locals 2

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$raw;->stars_topup:I

    sget v1, Lorg/telegram/messenger/R$string;->StarsGiveawaySentPopup:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    long-to-int p2, p1

    const-string p1, "StarsGiveawaySentPopupInfo"

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$new$7(Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;)V
    .locals 5

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$8(Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;JJLorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Ljava/lang/Void;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->dismiss()V

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda26;

    invoke-direct {p3, p2, p4, p5}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChatActivity;J)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->whenFullyVisible(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0, p6}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;)V

    const-wide/16 p2, 0xdc

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$updateRows$22(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setPausedStars(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$23(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setPausedStars(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$24()V
    .locals 5

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$updateRows$25(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setPausedStars(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$26(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;->setPausedStars(Z)V

    return-void
.end method

.method private synthetic lambda$updateRows$27()V
    .locals 5

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->show()V

    return-void
.end method

.method private loadOptions()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->loadGiftOptions(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/Utilities$Callback;)I

    return-void
.end method

.method private updateActionButton(Z)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    :goto_0
    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setStartGiveAwayStyle(IZ)V

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v2

    mul-int v0, v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostSubType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setStartGiveAwayStyle(IZ)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v2

    mul-int v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setGiftPremiumStyle(IZZ)V

    :goto_2
    return-void
.end method

.method private updateRows(ZZ)V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v5, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asHeader(Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSingleBoost(Ljava/lang/Object;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_PREMIUM:I

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v8, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    const/4 v9, 0x0

    invoke-static {v4, v5, v9, v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asBoost(IILjava/lang/Object;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v8, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    invoke-static {v4, v5, v9, v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asBoost(IILjava/lang/Object;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    goto :goto_1

    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v5, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    if-ne v4, v5, :cond_15

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v4

    if-nez v4, :cond_c

    sget v4, Lorg/telegram/messenger/R$string;->BoostingStarsOptions:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitleWithCounter(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getStarsOptions()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedStarsOption(J)Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    move-result-object v12

    iget-boolean v10, v12, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->missingStorePrice:Z

    if-eqz v10, :cond_2

    goto :goto_4

    :cond_2
    iget-wide v10, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStars:J

    const-wide/16 v13, 0x0

    cmp-long v15, v10, v13

    if-nez v15, :cond_3

    iget-boolean v10, v12, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->isDefault:Z

    if-eqz v10, :cond_3

    iget-wide v10, v12, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    iput-wide v10, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStars:J

    :cond_3
    iget-boolean v10, v12, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->extended:Z

    if-eqz v10, :cond_4

    iget-boolean v10, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->starOptionsExpanded:Z

    if-nez v10, :cond_4

    :goto_4
    move-object/from16 v18, v2

    :goto_5
    const/4 v1, 0x1

    goto :goto_8

    :cond_4
    add-int/2addr v9, v6

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-boolean v11, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->starOptionsExpanded:Z

    if-eqz v11, :cond_5

    move v13, v8

    goto :goto_6

    :cond_5
    add-int/lit8 v11, v8, 0x2

    move v13, v11

    :goto_6
    iget-wide v14, v12, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    invoke-direct {v0, v14, v15}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedPerUserStars(J)J

    move-result-wide v14

    move-object/from16 v18, v2

    iget-wide v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStars:J

    iget-wide v6, v12, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    cmp-long v16, v1, v6

    if-nez v16, :cond_6

    const/16 v16, 0x1

    goto :goto_7

    :cond_6
    const/16 v16, 0x0

    :goto_7
    const/16 v17, 0x1

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asOption(Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;IJZZ)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :goto_8
    add-int/2addr v8, v1

    move-object/from16 v2, v18

    const/4 v1, 0x2

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v18, v2

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->starOptionsExpanded:Z

    if-nez v1, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asExpandOptions()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-gtz v9, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x1

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asOption(Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;IJZZ)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asOption(Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;IJZZ)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    const/4 v10, 0x0

    const/4 v6, 0x2

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asOption(Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;IJZZ)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v1

    iput v1, v4, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingStarsOptionsInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSliderValues()Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    if-ltz v2, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_b

    :cond_a
    iput v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingStarsQuantityPrizes:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSliderValues()Ljava/util/List;

    move-result-object v2

    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStarsSliderIndex:I

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSlider(Ljava/util/List;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingStarsQuantityPrizesInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    move-object/from16 v18, v2

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    if-eqz v2, :cond_d

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    iget-wide v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;->stars:J

    iput-wide v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStars:J

    :cond_d
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingChannelsGroupsIncludedGiveaway:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    const/4 v5, 0x0

    :goto_a
    invoke-static {v4, v5, v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_e
    const/4 v5, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v6

    mul-int v1, v1, v6

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v4

    invoke-static {v2, v5, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_11

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    move-object v5, v2

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v5, v7, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_11
    const/4 v7, 0x1

    :goto_d
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v5

    invoke-static {v2, v7, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayAddPeersMax()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-gez v6, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asAddChannel()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingChooseChannelsGroupsNeedToJoin:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingEligibleUsers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_ALL:I

    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static {v2, v4, v6, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asParticipants(IIZLjava/util/List;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v2, v4, v6, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asParticipants(IIZLjava/util/List;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    if-eqz v3, :cond_14

    sget v2, Lorg/telegram/messenger/R$string;->BoostingChooseLimitGiveaway:I

    goto :goto_e

    :cond_14
    sget v2, Lorg/telegram/messenger/R$string;->BoostingChooseLimitGiveawayGroups:I

    :goto_e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    :goto_f
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_15
    move-object/from16 v18, v2

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostSubType:I

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    if-ne v1, v2, :cond_1e

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingQuantityPrizes:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v4

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitleWithCounter(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->sliderValues:Ljava/util/List;

    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSlider(Ljava/util/List;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingChooseHowMany:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingChannelsGroupsIncludedGiveaway:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    const/4 v5, 0x0

    :goto_10
    invoke-static {v4, v5, v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_17
    const/4 v5, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayBoostsPerPremium()I

    move-result v6

    mul-int v1, v1, v6

    goto :goto_10

    :cond_18
    const/4 v5, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v4

    invoke-static {v2, v5, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    move-object v5, v2

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v5, v7, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1a
    const/4 v7, 0x1

    :goto_13
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v4, :cond_19

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValueWithBoosts()I

    move-result v5

    invoke-static {v2, v7, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->giveawayAddPeersMax()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-gez v6, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asAddChannel()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingChooseChannelsGroupsNeedToJoin:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingEligibleUsers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_ALL:I

    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static {v2, v4, v6, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asParticipants(IIZLjava/util/List;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/ParticipantsTypeCell;->TYPE_NEW:I

    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedParticipantsType:I

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v2, v4, v6, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asParticipants(IIZLjava/util/List;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    if-eqz v3, :cond_1d

    sget v2, Lorg/telegram/messenger/R$string;->BoostingChooseLimitGiveaway:I

    goto :goto_14

    :cond_1d
    sget v2, Lorg/telegram/messenger/R$string;->BoostingChooseLimitGiveawayGroups:I

    :goto_14
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingDurationOfPremium:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->giftCodeOptions:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isGiveaway()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v2

    goto :goto_15

    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_15
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_22

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->months:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isGiveaway()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v7

    :goto_17
    move/from16 v21, v7

    goto :goto_18

    :cond_20
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_17

    :goto_18
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->amount:J

    iget v9, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;->currency:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-eq v2, v12, :cond_21

    const/16 v26, 0x1

    goto :goto_19

    :cond_21
    const/16 v26, 0x0

    :goto_19
    move-object/from16 v19, v4

    move/from16 v20, v6

    move-wide/from16 v22, v7

    move/from16 v24, v9

    move-object/from16 v25, v10

    invoke-static/range {v19 .. v26}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDuration(Ljava/lang/Object;IIJILjava/lang/String;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_16

    :cond_22
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingStoriesFeaturesAndTerms:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v7, 0x0

    invoke-static {v2, v4, v7, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    goto/16 :goto_f

    :cond_23
    :goto_1a
    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    if-eq v1, v2, :cond_24

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostSubType:I

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    if-ne v1, v2, :cond_34

    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingGiveawayAdditionalPrizes:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    sget v5, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;->TYPE_ADDITION_PRIZE:I

    invoke-static {v2, v4, v4, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSwitcher(Ljava/lang/CharSequence;ZZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isAdditionalPrizeSelected:Z

    if-eqz v1, :cond_29

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    goto :goto_1b

    :cond_25
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v1

    :goto_1b
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asEnterPrize(I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedMonths:I

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "BoldMonths"

    invoke-static {v4, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v5, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    if-ne v4, v5, :cond_27

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-wide v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStars:J

    long-to-int v2, v4

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "BoostingStarsGiveawayAdditionPrizeCountHint"

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    :goto_1c
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_26
    const/4 v4, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-wide v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStars:J

    long-to-int v6, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const-string v1, "BoostingStarsGiveawayAdditionPrizeCountNameHint"

    invoke-static {v1, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_27
    const/4 v4, 0x0

    const/4 v8, 0x1

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v4

    const-string v2, "BoostingGiveawayAdditionPrizeCountHint"

    invoke-static {v2, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_28
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->additionalPrize:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const/4 v6, 0x1

    aput-object v2, v7, v6

    const-string v2, "BoostingGiveawayAdditionPrizeCountNameHint"

    invoke-static {v2, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    if-ne v2, v4, :cond_2a

    sget v2, Lorg/telegram/messenger/R$string;->BoostingStarsGiveawayAdditionPrizeHint:I

    goto :goto_1e

    :cond_2a
    sget v2, Lorg/telegram/messenger/R$string;->BoostingGiveawayAdditionPrizeHint:I

    :goto_1e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    goto :goto_1c

    :goto_1f
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingDateWhenGiveawayEnds:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    iget-wide v4, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedEndDate:J

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDateEnd(J)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v2, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    if-ne v1, v2, :cond_2e

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v1

    const-string v2, "BoostingStarsChooseRandomStars"

    const-string v4, "BoostingStarsChooseRandomGroup"

    const-string v5, "BoostingStarsChooseRandom"

    if-nez v1, :cond_2c

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    if-eqz v3, :cond_2b

    move-object v4, v5

    :cond_2b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v3

    iget-wide v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStars:J

    long-to-int v6, v5

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v6, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v4, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_20
    invoke-static {v2, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_22

    :cond_2c
    const/4 v7, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    if-eqz v3, :cond_2d

    move-object v4, v5

    :cond_2d
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    iget-wide v5, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStars:J

    long-to-int v6, v5

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v6, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v4, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    :cond_2e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v1

    const-string v2, "BoostingChooseRandomGroup"

    const-string v4, "BoostingChooseRandom"

    if-nez v1, :cond_30

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    if-eqz v3, :cond_2f

    move-object v2, v4

    :cond_2f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedSliderValue()I

    move-result v3

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_21
    invoke-static {v2, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_30
    const/4 v5, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    if-eqz v3, :cond_31

    move-object v2, v4

    :cond_31
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :goto_22
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingGiveawayShowWinners:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isShowWinnersSelected:Z

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/SwitcherCell;->TYPE_WINNERS:I

    invoke-static {v2, v3, v5, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asSwitcher(Ljava/lang/CharSequence;ZZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->isPreparedGiveaway()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->BoostingGiveawayShowWinnersHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    :goto_23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_32
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/telegram/messenger/R$string;->BoostingGiveawayShowWinnersHint:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostType:I

    sget v4, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_STARS:I

    if-eq v3, v4, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->BoostingStoriesFeaturesAndTerms:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    :cond_33
    const-string v3, ""

    :goto_24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;)V

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    move-result-object v2

    goto :goto_23

    :cond_34
    :goto_25
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    if-nez v1, :cond_35

    return-void

    :cond_35
    if-nez p2, :cond_36

    return-void

    :cond_36
    if-eqz p1, :cond_37

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->items:Ljava/util/ArrayList;

    move-object/from16 v3, v18

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_26

    :cond_37
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_26
    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 1

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starGiveawayOptionsLoaded:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->onCloseClick:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starGiveawayOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public getSelectedStarsOption()Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedStars:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->getSelectedStarsOption(J)Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedStarsOption(J)Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;
    .locals 6

    .line 0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getGiveawayOptions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    if-eqz v2, :cond_0

    iget-wide v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostSubType:I

    sget v1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    if-ne v0, v1, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->GiftPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->BoostingStartGiveaway:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BoostingStartGiveaway"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTop()I
    .locals 4

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->top:I

    iget-object v3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected needPaddingShadow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChatsSelected(Ljava/util/List;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method public onCountrySelected(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedCountries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    return-void
.end method

.method protected onPreDraw(Landroid/graphics/Canvas;IF)V
    .locals 0

    iput p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->top:I

    return-void
.end method

.method public synthetic onShowToast(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener$-CC;->$default$onShowToast(Lorg/telegram/ui/Components/Premium/boosts/SelectorBottomSheet$SelectedObjectsListener;Ljava/lang/String;)V

    return-void
.end method

.method public onUsersSelected(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_GIVEAWAY:I

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedBoostSubType:I

    goto :goto_1

    :cond_0
    sget p1, Lorg/telegram/ui/Components/Premium/boosts/cells/BoostTypeCell;->TYPE_SPECIFIC_USERS:I

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->selectedSliderIndex:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateRows(ZZ)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->updateActionButton(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    return-void
.end method

.method public setActionListener(Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->actionListener:Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet$ActionListener;

    return-void
.end method

.method public setOnCloseClick(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostViaGiftsBottomSheet;->onCloseClick:Ljava/lang/Runnable;

    return-void
.end method
