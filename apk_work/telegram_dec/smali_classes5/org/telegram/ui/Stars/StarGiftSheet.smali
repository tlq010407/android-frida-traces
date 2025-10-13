.class public Lorg/telegram/ui/Stars/StarGiftSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarGiftSheet$TopView;,
        Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;,
        Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;,
        Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;,
        Lorg/telegram/ui/Stars/StarGiftSheet$UpgradeIcon;,
        Lorg/telegram/ui/Stars/StarGiftSheet$GiftTransferTopView;,
        Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;

.field private final afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private final beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private final bottomBulletinContainer:Landroid/widget/FrameLayout;

.field private final bottomView:Landroid/view/View;

.field private boughtGift:Lorg/telegram/messenger/Utilities$Callback2;

.field private final button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final buttonContainer:Landroid/widget/FrameLayout;

.field private final buttonShadow:Landroid/view/View;

.field private final checkbox:Lorg/telegram/ui/Components/CheckBox2;

.field private final checkboxLayout:Landroid/widget/LinearLayout;

.field private final checkboxSeparator:Landroid/view/View;

.field private final checkboxTextView:Landroid/widget/TextView;

.field private container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

.field private currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private currentHintViewTextView:Landroid/view/View;

.field private currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

.field private final dialogId:J

.field private fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field private firstSet:Z

.field private giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

.field private final heights:[I

.field private final infoLayout:Landroid/widget/LinearLayout;

.field private isLearnMore:Z

.field private lastTop:Ljava/lang/Float;

.field private left:Lorg/telegram/ui/Stars/StarGiftSheet;

.field private lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private messageObjectRepolled:Z

.field private messageObjectRepolling:Z

.field private myProfile:Z

.field private onGiftUpdatedListener:Ljava/lang/Runnable;

.field private onlyWearInfo:Z

.field private ownerTextView:Landroid/view/View;

.field private resale:Z

.field private right:Lorg/telegram/ui/Stars/StarGiftSheet;

.field private sample_attributes:Ljava/util/ArrayList;

.field private savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

.field private shareAlert:Lorg/telegram/ui/Components/ShareAlert;

.field private shownWearInfo:Z

.field private slug:Ljava/lang/String;

.field private slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

.field private switchingPagesAnimator:Landroid/animation/ValueAnimator;

.field private final tableView:Lorg/telegram/ui/Components/TableView;

.field private title:Ljava/lang/String;

.field private final topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

.field private unsavedFromSavedStarGift:Ljava/lang/Boolean;

.field private final upgradeFeatureCells:[Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

.field private upgradeIconSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

.field private final upgradeLayout:Landroid/widget/LinearLayout;

.field private upgrade_form:Lorg/telegram/tgnet/TLRPC$PaymentForm;

.field private userStarGiftRepolled:Z

.field private userStarGiftRepolling:Z

.field private viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

.field private final wearFeatureCells:[Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

.field private final wearLayout:Landroid/widget/LinearLayout;

.field private final wearSubtitle:Landroid/widget/TextView;

.field private final wearTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-KIIJTBoAf1oI6pJOk9NB08yLlI(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/Long;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$95(Ljava/lang/Long;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-UABIFGhvbljBAS45QCiaENFk44(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$show$72(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-fS5_wEuII4Qi4SzfxWVtNYskLY(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JJJLorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$convert$62(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JJJLorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$27XO1JSTes9ioagQllmE6iaWcRo(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$showHint$123(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$27gvQDFk0QrzV1thdi14ZN4TsP8(JLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$toggleShow$65(JLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Dbbd3lK4oTSL9XFZcOt_XeFp2U(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$39(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2FE8dMlB-LIZt1bbOe48t2p2c2Q(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onUpdatePriceClick$15(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2ML0_Cs2Egck8BbPBYwD7N5BG1o(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onResellPressed$27(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3-kAxU0JqkHWTuI-6ixi0Vv8KIE(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$addAttributeRow$32(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;)V

    return-void
.end method

.method public static synthetic $r8$lambda$30Glma9FXRWElBW7q0ZLaocJUxQ(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$114(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3YexH3J4pLsl7UydpVh-W0dKDok(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onMenuPressed$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$3hdOdeo94DD0TZdQLj6a933kq8s(Lorg/telegram/ui/Stars/StarGiftSheet;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$99([Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$47uGVhbJLxNwrfIUx8N3hlL45ag(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doUpgrade$79(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$535dyrGa2ty9KyxNrLZsSGpDln0(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$starGiftUpgradePreview;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openUpgrade$75(Lorg/telegram/tgnet/tl/TL_stars$starGiftUpgradePreview;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5SDwetQD417jiu52rTzne180Y9o(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$toggleShow$67(Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5xEghAnl-gBZboNkKQ-Q0pJhk_0(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6DEeEgJQuU3zo-MO5PUhubonHZQ(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ChatActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$107(Lorg/telegram/ui/ChatActivity;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Qb4F_2mhiowu2whMubKC9ztIYU(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$45(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6TIA3mBxQ2SY7_0CUGYy6csLEwk(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$54(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6YDgXSuYtrl-DSP8LBpW52f3LmQ(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->toggleShow()V

    return-void
.end method

.method public static synthetic $r8$lambda$6oFFYJyhmwb8dah0ndAREMRledw(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$show$74(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6qvTh7wydETNF-EXL4LQSKFxpdw(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doUpgrade$80(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7LHlBqEQa4RxFsV1if0LtQ2GpxA(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->convert()V

    return-void
.end method

.method public static synthetic $r8$lambda$7jjW-sY_7N7Rkqa9I8juGhN4enM(Lorg/telegram/ui/Stars/StarGiftSheet;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$51(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$8QGy7WZpxDLLzBjO3t5hlRt59mc(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$47()V

    return-void
.end method

.method public static synthetic $r8$lambda$9N4qkCOi3Hp0W-sNrw0LfamGIos(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doUpgrade$83(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9UesOUTYno42KtWVxa4fMk0gPpc(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;JLorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$toggleWear$10(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;JLorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9t9gYTPglrZOp_8MpRS4w1FJ04E(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onUpdatePriceClick$17(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AlesZzuRZRKCE9j0qLUsORnCX1M(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$show$73(Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BAPF6Ip2whIdjXLQ5kYx5T68boA(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$toggleWear$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$BAlDkqUK9lpa23LcIhmgnf_iFhI(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openAsLearnMore$58(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BMzStq97oFED3vaqaLvUOWxsx-E(Lorg/telegram/ui/Stars/StarGiftSheet;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$repollMessage$56(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C5vfZOmPpfEX30OYqbzwSPNlZmI(Lorg/telegram/ui/Stars/StarGiftSheet;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$42(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$CKopFueGsqfMBozCuIW5B66oQow(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onBuyPressed$121(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CoWr9Xnx436WmQfv9oCyRclHPdk(Lorg/telegram/ui/Stars/StarGiftSheet;[ZJLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$113([ZJLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CwUwo2uS63XY7cxCrTHtCeyKLak(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$41()V

    return-void
.end method

.method public static synthetic $r8$lambda$DZk1dH4TbEziL5xAnSZwOLlHH50(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$repostStory$30(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Edt8UsaVybC7a2QVRdFtpg6TUtU(Lorg/telegram/ui/Stars/StarGiftSheet;IIILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$100(IIILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Enrte-tX6cuQrhKVNXHKX2u0Lsg(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLjava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onBuyPressed$120(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLjava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F1Ahy7MMCrJMXnRQxURiSmexJR8(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$initTONTransfer$103(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F1pmUq4JivE4SZLquSAuCGKHLEE(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->openInProfile()V

    return-void
.end method

.method public static synthetic $r8$lambda$F2sEYyvWFIYS3jAtgqN0v-fcLPQ(Lorg/telegram/ui/Stars/StarGiftSheet;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$49(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$FHoItHuM38JQT72_mySeyGZuw3Q(Lorg/telegram/ui/Stars/StarGiftSheet;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doUpgrade$84([Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$FtdR1SnVgivGJwMeJXYiUBR9brQ(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransferAlert$101(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IHzeDE46Lb2FhWf-XGEib2Cyllk(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->openUpgrade()V

    return-void
.end method

.method public static synthetic $r8$lambda$IIkrZxP4sunJDSRibwmSCq3dcXM(Lorg/telegram/ui/StatisticActivity;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$convert$61(Lorg/telegram/ui/StatisticActivity;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$ImXFImmFLhvWY-tD6RY3lEn-nhQ(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doUpgrade$85(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JFEgUYJ7Ledo5I-HwWX7blrXb8o(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onMenuPressed$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JSnZq-x73FEGw1R5tQqBKIxz8MI(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$33(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JeMzic5FjdNgaeop6JuEY0BOThQ(Lorg/telegram/ui/Stars/StarGiftSheet;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$48(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jh4sYFDu92AlYrkUCUpuNmFu5Ps(Lorg/telegram/ui/Stars/StarGiftSheet;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doUpgrade$86(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$K0Ekyulg5KT3fx33COyfawYqPy0(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;JJJLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$convert$64(Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;JJJLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$L4ZN-FuSy7bb7DuDPyySadJKtn8(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$toggleShow$66(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M4OQLdykqd0xT7CzHX7cde-qySw(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$93(Lorg/telegram/messenger/browser/Browser$Progress;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OTu0XTu1ENDYaYz5jjKKI5CxiQI(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ChatActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$111(Lorg/telegram/ui/ChatActivity;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Om8lW_vYuHQVucH9z22LtkXfeKE(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doUpgrade$87(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$OxVhP5QBelyjKEqkExD78gNKOxI(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$53(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PzSkjiAdk1SsAaaVBgx3bmPk12I(Lorg/telegram/ui/Stars/StarGiftSheet;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$91([Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qh7q-hqTt_LRgEFvHCP3iCnd50k(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$40(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R9BHAsWmAmIPPnP4uCZE6DbdOR4(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onResellPressed$28(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R_3Du243ur4sWoapaQJVFGVc3og(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$toggleWear$9(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RkJsg6cUWBwQp4wLBi-aiuL-fbs(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doUpgrade$81(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UKLjvHToSuT54JS57C5PTJdZvd8(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onResellPressed$24(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UV2TvMVzWVDpicEiIjOSvk-ItqM(Lorg/telegram/ui/Stars/StarsIntroActivity;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$convert$60(Lorg/telegram/ui/Stars/StarsIntroActivity;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$UecmxSwCFFCUBaULcvOPYAnZfAs(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onResellPressed$23(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VMH1KsTbO7D3AdJoutCf3C7_q_g(Lorg/telegram/ui/Stars/StarGiftSheet;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doUpgrade$88(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VXeEfXES7aVJBg932DbD7a29Y3o(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$Wawhgqfmx8eMiVhoRV7RFjJLlUE(Lorg/telegram/ui/Stars/StarGiftSheet;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$43(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$XJJqz08t6y5-m4woUL5_8P6-gVc(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$toggleWear$11(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XzzVdBllPq7A-4kXJxhCWMwzjho(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$repostStory$29(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YM9syqnkuMn7O4vsU37kdNsWiIo(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onUpdatePriceClick$16(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z2HCTG1edpxHqgTDASJFZ_lxbfk(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$96(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZPTzlSsnQ5udfiyg9A_Jev-9Yns(Lorg/telegram/ui/Stars/StarGiftSheet;JJLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$115(JJLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZevQYvu_FYRqWCgfAdMY2j9b6m0(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onMenuPressed$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$_5zjzvilhb6cZjgnr1HWy1QpAM0(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$118(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_KUdp-Cfglj40kL8bCTHLlIKEBI(Lorg/telegram/ui/Stars/StarGiftSheet;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$50(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$_edO_zHm8wJhbbWVshGiLIhcdxk(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$show$70(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_jXv8QfjeYhu8FcZPIxHVlfRRh4(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$initTONTransfer$105(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_jvU8Z4k4fMRFpJ-US7VJUHO45Y(Lorg/telegram/ui/Stars/StarGiftSheet;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$90([Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aAiHp4z7wDjGfjZlr_HeG5l3DTE(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$98(Lorg/telegram/tgnet/TLObject;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$afcrqpHUoQB9MKPs4Zi5li_1yHg(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$releasedByText$35(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b4N9ACzlQ-CWCePLgCStqq-q0Hg(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onResellPressed$26(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$byvXGW2p6ktN5f_Uv2fI5rInwpk(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$92(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cGojxMrOh_kOag0lY9If1CE5TQQ(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$initTONTransfer$106(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cua9A_yRCL7vp5srOvBY7JGcubI(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onResellPressed$20(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d706fRfC8xDbgvL1PAZrNndYF08(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$44(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d9Ko-XeA8FBGxEMDU66DjbrivJg(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$switchPage$31(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dgfERspNbDte-Vi-wooecB_YEC8(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$setupWearPage$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eivmX9HR_hynkxHm5Xkc7QFRJFs(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openUpgrade$77(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fLUGElA47X5TdlKOIrbxWDLB2xA(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$119(Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fodELcOXaA2L_ZMQeqIj0K7CO9o(Lorg/telegram/ui/Stars/StarGiftSheet;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$toggleWear$12(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$g3uK35h63pp-wd9pmhVr0UmgNEo(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;JJJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$convert$63(Lorg/telegram/ui/ActionBar/AlertDialog;JJJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gC6Xk-nDypkoPmV1Q-OlduyfAH4(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openUpgrade$76(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g_XJ0QPoVPyDwsGBCvdIlZiOZv4(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$46(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$heH0yN6eU-BSksSR-3dAkoGYVdg(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$toggleWear$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i2oSqs_xuadY45CVzJfyA4BcB-4(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->onMenuPressed(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iLnVwgB9zWk-DgfvPsnlcYadkOw(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/Stars/StarsController;JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$110(Lorg/telegram/ui/Stars/StarsController;JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ihIdp59CjmAFkyoieQlJtw-54r0(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$show$71(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j3Ag7FvfX-dPzHrCVEE-cBAD-fw(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$108(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$j5eNZO0mtZLijwv26RHamPJHtmI(Lorg/telegram/ui/Stars/StarGiftSheet;JLorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onBuyPressed$122(JLorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jlAeVxE44m3OoR1l1Zv7CTWYIe4(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onResellPressed$18(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jnI0s0p8l_m9wdtZEOI58lnRhVE(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$89(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lE8UgWYOQPQ0T2Q4lySOAj2Zx1s(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$repollMessage$55(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ln2LyOmMSta3AzxOL3xLRxBEKeA(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onResellPressed$21(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mbVIANk6mdSb_GwA-Kk55HOrTJ4(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/Utilities$Callback;JJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$109(Lorg/telegram/messenger/Utilities$Callback;JJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n4SQC3RvNdW0wHVE97lxJ3sQZJ0(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$starGiftUpgradePreview;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openAsLearnMore$59(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$starGiftUpgradePreview;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ooO3mfWNjFJm1t3YRb-gjhazdwA(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$repollSavedStarGift$57(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pW7Gk_bLSgcyRv8Y6DpX4EXbaPI(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onResellPressed$22(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qiwyeKu83ykEnYZO3HUqjfqDdtY(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onResellPressed$19(Lorg/telegram/messenger/browser/Browser$Progress;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$r-oZxE1BtuxAuPmvuIjvftff0d0(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onMenuPressed$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$rGVa6AjCJLLHr8Z-oVcxoCQQ9IE(Lorg/telegram/ui/Stars/StarGiftSheet;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$38(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$rRC_D9CXfaEz94E21GQSpydP-Ts(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->onWearPressed(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rfEbOEBUY-2XOwMy_7272iPewtM(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openUpgradeAfter$78(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$suknA-Pf4EKMIaxpM3LmCQImF0U(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tEjpMCVyRBDyHCju3tWzfb6_kZM(Lorg/telegram/ui/Stars/StarGiftSheet;JJLorg/telegram/messenger/Utilities$Callback;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$117(JJLorg/telegram/messenger/Utilities$Callback;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tZoY27ppbMP-xODc1faTkjCB79I(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$52(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$thy-t7fuMBsjusM7jfA3liP60_E(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$initTONTransfer$104(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uPkKBsEVUqfYlc37PirUev7Vbj8(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$show$69(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vVIfYQykKMOP9Qxh2CAJgjioNd4(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$116(Lorg/telegram/tgnet/TLObject;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$w4YmGtxzlWt4MDlgTDOCAqbHWNc(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$initTONTransfer$102(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wGZrSFVkbPJFZ01PNOD0l1aILaE(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_payments_uniqueStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$show$68(Lorg/telegram/tgnet/tl/TL_stars$TL_payments_uniqueStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wdajGQtIdJnjG9phOVG25vrm_rQ(Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onResellPressed$25(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wiCV3Y1P9tiudVCSuroMmkZOF2Q(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doTransfer$112(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x-vOqIUx1xUnqRMlLx0EGA0nu5o(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/Stars/StarsController;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$doUpgrade$82(Lorg/telegram/ui/Stars/StarsController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xNz37MKjaPCmq-oR3U3p2GAo5XU(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$releasedByUniqueText$36(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yhvwpj1u5qP1E7v2Ox9wOwB4Bpg(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onWearPressed$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zBXcNLnP8yOKkb2Q6p3ol661f6s(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$onUpdatePriceClick$14(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zjNzZHl63ZNcaTBBnDA6_wVkTTw(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$97(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zsDBwyDDJv7fca0xRlg6S7gR_uU(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$set$34(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zvqBRoftivR-dI2ESDzsSjPueQ0(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/Long;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->lambda$openTransfer$94(Ljava/lang/Long;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 31

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->heights:[I

    const-string v1, ""

    iput-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->title:Ljava/lang/String;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;-><init>(IIF)V

    iput-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v1, 0x1

    iput-boolean v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    move/from16 v4, p2

    iput v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    move-wide/from16 v4, p3

    iput-wide v4, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    const v4, 0x3e4ccccd    # 0.2f

    iput v4, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v15}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    invoke-direct {v4, v7, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$1;

    invoke-direct {v4, v7, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$1;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$2;

    invoke-direct {v5, v7, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$2;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->updateViewPager()V

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v15}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->bottomView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v8, 0x32

    const/16 v9, 0x50

    const/4 v13, -0x1

    invoke-static {v13, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v6, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/16 v8, 0x77

    invoke-static {v13, v13, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    iget-object v4, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object v4, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    iget-object v6, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v13, v13, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->infoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v6, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v12, 0x41600000    # 14.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget v9, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    const/high16 v10, 0x42880000    # 68.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v4, v6, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    const/16 v11, 0x37

    invoke-static {v13, v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v6, v15, v14}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-static {v8, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v9, 0x11

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v0, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v0, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    const/16 v22, 0x5

    const/16 v23, 0x10

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x5

    const/16 v21, -0x4

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    new-instance v6, Lorg/telegram/ui/Components/TableView;

    invoke-direct {v6, v15, v14}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    const/16 v21, 0x0

    const/high16 v22, 0x41400000    # 12.0f

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v6, v15, v14}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v8, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v8, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {v0, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v6, v8, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    const/16 v22, 0x5

    const/16 v23, 0x8

    const/16 v17, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x5

    const/16 v21, 0x2

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget v10, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v8, v10

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iget v13, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v11, v13

    const/high16 v13, 0x42840000    # 66.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v0, v8, v10, v11, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v8, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    const/4 v9, -0x1

    const/16 v10, 0x37

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x3

    new-array v9, v8, [Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    iput-object v9, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeFeatureCells:[Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    new-instance v10, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    invoke-direct {v10, v15, v14}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v10, v9, v2

    sget v11, Lorg/telegram/messenger/R$drawable;->menu_feature_unique:I

    sget v17, Lorg/telegram/messenger/R$string;->Gift2UpgradeFeature1Title:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v17, Lorg/telegram/messenger/R$string;->Gift2UpgradeFeature1Text:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v8, v13}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;->set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aget-object v8, v9, v2

    const/4 v13, -0x2

    const/4 v10, -0x1

    invoke-static {v10, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    invoke-direct {v6, v15, v14}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v6, v9, v1

    sget v8, Lorg/telegram/messenger/R$drawable;->menu_feature_transfer:I

    sget v10, Lorg/telegram/messenger/R$string;->Gift2UpgradeFeature2Title:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v20, Lorg/telegram/messenger/R$string;->Gift2UpgradeFeature2Text:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v8, v10, v12}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;->set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aget-object v6, v9, v1

    const/4 v8, -0x1

    invoke-static {v8, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    invoke-direct {v6, v15, v14}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v8, 0x2

    aput-object v6, v9, v8

    sget v10, Lorg/telegram/messenger/R$drawable;->menu_feature_tradable:I

    sget v12, Lorg/telegram/messenger/R$string;->Gift2UpgradeFeature3Title:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v16, Lorg/telegram/messenger/R$string;->Gift2UpgradeFeature3Text:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v10, v12, v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;->set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aget-object v1, v9, v8

    const/4 v6, -0x1

    invoke-static {v6, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v15}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->checkboxSeparator:Landroid/view/View;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v6, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v23, v3, v8

    const/16 v27, 0x11

    const/16 v28, 0x6

    const/16 v22, -0x2

    const/16 v24, 0x7

    const/16 v25, 0x11

    const/16 v26, -0x4

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->checkboxLayout:Landroid/widget/LinearLayout;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v1, v9, v12, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v8, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    const/4 v9, 0x6

    invoke-static {v8, v9, v9}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v9, 0x18

    invoke-direct {v8, v15, v9, v14}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v8, v9, v10, v12}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    invoke-virtual {v8, v2, v2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v22, 0x1a

    const/16 v23, 0x1a

    const/16 v24, 0x10

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->checkboxTextView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x1

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v8, v10, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v10, Lorg/telegram/messenger/R$string;->Gift2AddSenderName:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v25, 0x9

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v28, 0x4

    const/16 v24, 0x1

    const/16 v25, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v8, 0x3ccccccd    # 0.025f

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v1, v8, v10}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->wearLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iget v3, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v12, v3

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iget v2, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v10, v2

    const/high16 v2, 0x42840000    # 66.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v8, v12, v13, v10, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    const/4 v10, -0x1

    const/16 v12, 0x37

    invoke-static {v10, v10, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->wearTitle:Landroid/widget/TextView;

    invoke-static {v9, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v29, 0x14

    const/16 v30, 0x0

    const/16 v24, -0x1

    const/16 v25, -0x2

    const/16 v26, 0x7

    const/16 v27, 0x14

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->wearSubtitle:Landroid/widget/TextView;

    invoke-static {v9, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x1

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    sget v3, Lorg/telegram/messenger/R$string;->Gift2WearSubtitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v30, 0x18

    const/16 v28, 0x6

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    iput-object v2, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->wearFeatureCells:[Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    new-instance v3, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    invoke-direct {v3, v15, v14}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v9, 0x0

    aput-object v3, v2, v9

    sget v10, Lorg/telegram/messenger/R$string;->Gift2WearFeature1Title:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v18, Lorg/telegram/messenger/R$string;->Gift2WearFeature1Text:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v10, v12}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;->set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aget-object v3, v2, v9

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    invoke-direct {v3, v15, v14}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v9, 0x1

    aput-object v3, v2, v9

    sget v10, Lorg/telegram/messenger/R$drawable;->menu_feature_cover:I

    sget v11, Lorg/telegram/messenger/R$string;->Gift2WearFeature2Title:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$string;->Gift2WearFeature2Text:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v10, v11, v12}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;->set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aget-object v3, v2, v9

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    invoke-direct {v3, v15, v14}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v9, 0x2

    aput-object v3, v2, v9

    sget v10, Lorg/telegram/messenger/R$drawable;->menu_verification:I

    sget v11, Lorg/telegram/messenger/R$string;->Gift2WearFeature3Title:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$string;->Gift2WearFeature3Text:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v10, v11, v12}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;->set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aget-object v2, v2, v9

    const/4 v3, -0x1

    const/4 v12, -0x2

    invoke-static {v3, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    new-instance v11, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda6;

    invoke-direct {v11, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda7;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    new-instance v10, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda8;

    invoke-direct {v10, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    new-instance v9, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda9;

    invoke-direct {v9, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    new-instance v8, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda10;

    invoke-direct {v8, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda11;

    invoke-direct {v3, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda12;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    move-object/from16 v16, v8

    move-object v8, v0

    move-object/from16 v17, v9

    move-object/from16 v9, p1

    move-object/from16 v18, v10

    move-object/from16 v10, p5

    move-object/from16 v19, v1

    const/16 v1, 0x37

    const/4 v13, -0x2

    const/high16 v21, 0x41600000    # 14.0f

    move-object v12, v4

    move/from16 p2, v6

    const/4 v4, -0x1

    const/4 v6, -0x2

    move-object/from16 v13, v18

    move-object/from16 v14, v17

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-direct/range {v8 .. v17}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget v2, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    invoke-static {v4, v6, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    iput-boolean v2, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    new-instance v0, Landroid/widget/FrameLayout;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->buttonShadow:Landroid/view/View;

    move/from16 v5, p2

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v5, v6, v5

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v6, v5, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-object/from16 v3, p5

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v13, 0x0

    const/high16 v14, 0x41400000    # 12.0f

    const/4 v8, -0x1

    const/high16 v9, 0x42400000    # 48.0f

    const/16 v10, 0x77

    const/4 v11, 0x0

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iget v5, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    const/16 v3, 0x48

    const/16 v5, 0x57

    invoke-static {v4, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$3;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$3;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda13;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    iget-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->bottomBulletinContainer:Landroid/widget/FrameLayout;

    iget v1, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    const/high16 v14, 0x42700000    # 60.0f

    const/4 v8, -0x1

    const/high16 v9, 0x43480000    # 200.0f

    const/16 v10, 0x57

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object v0, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    iget-object v1, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v13, 0x40c00000    # 6.0f

    const/4 v14, 0x0

    const/high16 v9, -0x40000000    # -2.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->hasNeighbour(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stars/StarGiftSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->right:Lorg/telegram/ui/Stars/StarGiftSheet;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stars/StarGiftSheet;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->heights:[I

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->repostStory(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->preDrawInternal(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stars/StarGiftSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stars/StarGiftSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stars/StarGiftSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->postDrawInternal(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->adapter:Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$TopView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBottomView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onSwitchedPage()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->infoLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->getNeighbourSavedGift(Z)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->wearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->buttonShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stars/StarGiftSheet;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->lastTop:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Stars/StarGiftSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->contentHeight:I

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarsController$IGiftsList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    return-object p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->switchingPagesAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Stars/StarGiftSheet;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->openProfile(J)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stars/StarGiftSheet;Z)Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->getNeighbourSlugGift(Z)Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stars/StarGiftSheet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->setupNeighbour(Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->left:Lorg/telegram/ui/Stars/StarGiftSheet;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    return-object p0
.end method

.method private addAttributeRow(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)V
    .locals 7

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->Gift2AttributeModel:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->Gift2AttributeBackdrop:I

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->Gift2AttributeSymbol:I

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    new-array v2, v1, [Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    iget v5, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->rarity_permille:I

    invoke-static {v5}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda71;

    invoke-direct {v6, p0, p1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;)V

    invoke-virtual {v3, v0, v4, v5, v6}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/TableView$TableRowContent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;

    aput-object p1, v2, v0

    :cond_2
    return-void
.end method

.method private applyNewGiftFromUpdates(Lorg/telegram/tgnet/TLRPC$Updates;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->update:Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v4, :cond_2

    move-object v1, v2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_4

    iput-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    new-instance p1, Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p1, v2, v1, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->setType()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarGiftSheet;

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method private canConvert()Z
    .locals 12

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v6, :cond_8

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    iget v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v9, v9, Lorg/telegram/messenger/MessagesController;->stargiftsConvertPeriodMax:I

    iget v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    sub-int/2addr v10, v8

    sub-int/2addr v9, v10

    if-nez v6, :cond_3

    if-eqz v0, :cond_4

    if-nez v7, :cond_4

    :cond_3
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_5

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->converted:Z

    if-nez v0, :cond_5

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->convert_stars:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_5

    if-lez v9, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_8

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->stargiftsConvertPeriodMax:I

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    sub-int/2addr v6, v0

    sub-int/2addr v5, v6

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    invoke-static {v0, v6, v7}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    iget-wide v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_7

    const/16 v2, 0x800

    goto :goto_2

    :cond_7
    const/16 v2, 0x8

    :goto_2
    and-int/2addr v2, v0

    if-eqz v2, :cond_8

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_8

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    if-lez v5, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method private canSomeoneConvert()Z
    .locals 10

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v6, :cond_6

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->stargiftsConvertPeriodMax:I

    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v8

    sub-int/2addr v8, v0

    sub-int/2addr v7, v8

    if-eqz v6, :cond_2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_3

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->converted:Z

    if-nez v0, :cond_3

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->convert_stars:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_3

    if-lez v7, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_6

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->stargiftsConvertPeriodMax:I

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    sub-int/2addr v6, v0

    sub-int/2addr v5, v6

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    invoke-static {v0, v6, v7}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    iget-wide v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_5

    const/16 v2, 0x800

    goto :goto_1

    :cond_5
    const/16 v2, 0x8

    :goto_1
    and-int/2addr v2, v0

    if-eqz v2, :cond_6

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_6

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    if-lez v5, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method private convert()V
    .locals 18

    move-object/from16 v9, p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget v2, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v9, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    const-wide/32 v7, 0x28ae10

    if-eqz v3, :cond_6

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    iget-object v10, v9, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v11, :cond_5

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v12, :cond_5

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v12, :cond_1

    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    goto :goto_0

    :cond_2
    move-wide v12, v5

    :goto_0
    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v10, :cond_3

    invoke-static {v10}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v14

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    move-wide v14, v5

    goto :goto_1

    :cond_4
    iget-object v3, v9, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    :goto_1
    iget-wide v10, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->convert_stars:J

    :goto_2
    move-wide/from16 v16, v10

    move v10, v4

    move-wide v3, v12

    move-wide/from16 v11, v16

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    iget-object v3, v9, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v3, :cond_a

    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    iget v10, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/2addr v10, v1

    if-eqz v10, :cond_7

    iget-boolean v10, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->name_hidden:Z

    if-nez v10, :cond_7

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v10

    move-wide v14, v10

    goto :goto_3

    :cond_7
    move-wide v14, v7

    :goto_3
    iget-object v3, v9, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-wide v10, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    iget-wide v12, v9, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    goto :goto_2

    :goto_4
    iget v13, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget v13, v13, Lorg/telegram/messenger/MessagesController;->stargiftsConvertPeriodMax:I

    iget v1, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    sub-int/2addr v1, v10

    sub-int/2addr v13, v1

    const v1, 0x15180

    div-int/2addr v13, v1

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v0, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v13, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->Gift2ConvertTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v14, v15}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v10

    if-nez v10, :cond_9

    cmp-long v10, v14, v7

    if-nez v10, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {v14, v15}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_9
    :goto_5
    sget v7, Lorg/telegram/messenger/R$string;->StarsTransactionHidden:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_6
    long-to-int v8, v11

    const-string v10, "Gift2ConvertStars"

    invoke-static {v10, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v10, v13

    const/4 v7, 0x1

    aput-object v8, v10, v7

    const-string v7, "Gift2ConvertText2"

    invoke-static {v7, v1, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v10

    sget v0, Lorg/telegram/messenger/R$string;->Gift2ConvertButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda53;

    move-object v0, v14

    move-object/from16 v1, p0

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;JJJ)V

    invoke-virtual {v10, v13, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_a
    return-void
.end method

.method private doUpgrade()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_stars:J

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v1, :cond_8

    iget-wide v1, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgrade_form:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-nez v5, :cond_4

    return-void

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$upgradeStarGift;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$upgradeStarGift;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_stars$upgradeStarGift;->keep_original_details:Z

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_stars$upgradeStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda112;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda112;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    :cond_5
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda113;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda113;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/Stars/StarsController;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Ljava/lang/Runnable;)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-void

    :cond_6
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftUpgrade;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftUpgrade;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftUpgrade;->keep_original_details:Z

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftUpgrade;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgrade_form:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->form_id:J

    iput-wide v5, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->form_id:J

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v3, v5

    goto :goto_1

    :cond_7
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda114;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda114;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;J)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_8
    :goto_2
    return-void
.end method

.method private getBottomView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeLayout:Landroid/widget/LinearLayout;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->wearLayout:Landroid/widget/LinearLayout;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->infoLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getDialogId()J
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_3
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v0, :cond_8

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v4, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v4, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    return-wide v0

    :cond_4
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    return-wide v0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_6

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    :goto_1
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    return-wide v0

    :cond_6
    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    return-wide v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    return-wide v1
.end method

.method private getDummyFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$4;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    return-object v0
.end method

.method public static getGiftName(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/String;
    .locals 3

    .line 0
    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v1, p0

    const/16 p0, 0x2c

    invoke-static {v1, v2, p0}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_8

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v3, :cond_1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit16 v3, v3, 0x1000

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved_id:J

    :goto_0
    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->saved_id:J

    goto :goto_1

    :cond_1
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v3, :cond_3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->saved_id:J

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v1, :cond_6

    iget v3, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-nez v3, :cond_5

    return-object v2

    :cond_5
    iget-wide v1, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->saved_id:J

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slug:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftSlug;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftSlug;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slug:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftSlug;->slug:Ljava/lang/String;

    :cond_7
    :goto_1
    return-object v0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_9

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v2, :cond_9

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;-><init>()V

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->saved_id:J

    return-object v0

    :cond_9
    if-eqz v0, :cond_a

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v1, :cond_a

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_a

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;-><init>()V

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->saved_id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftChat;->saved_id:J

    return-object v1

    :cond_a
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    :goto_2
    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftUser;->msg_id:I

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v1, :cond_c

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->msg_id:I

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slug:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftSlug;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftSlug;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slug:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_inputSavedStarGiftSlug;->slug:Ljava/lang/String;

    :cond_d
    :goto_3
    return-object v0
.end method

.method private getLink()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/nft/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getListPosition()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v2, :cond_5

    :goto_0
    invoke-interface {v0, v2}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-interface {v2}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->getLoadedCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-interface {v2, v0}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    invoke-virtual {p0, v3, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->eq(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_3
    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-virtual {p0, v3, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->eq(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private getNeighbourSavedGift(Z)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getListPosition()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    if-eqz p1, :cond_2

    if-ltz v0, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->getLoadedCount()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    return-object p1

    :cond_3
    return-object v1
.end method

.method private getNeighbourSlugGift(Z)Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getListPosition()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    if-eqz p1, :cond_2

    if-ltz v0, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->getLoadedCount()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    return-object p1

    :cond_3
    return-object v1
.end method

.method private hasNeighbour(Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->getNeighbourSavedGift(Z)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->getNeighbourSlugGift(Z)Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private initTONTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 2

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$getStarGiftWithdrawalUrl;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$getStarGiftWithdrawalUrl;-><init>()V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$getStarGiftWithdrawalUrl;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_stars$getStarGiftWithdrawalUrl;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda121;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda121;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static isMine(IJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static isMineWithActions(IJ)Z
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isWorn(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return v0

    :cond_1
    const/4 v5, 0x1

    cmp-long v6, v1, v3

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    if-lez v6, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v1, :cond_4

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    iget-wide p0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v3, v1, p0

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v1, :cond_4

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    iget-wide p0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v3, v1, p0

    if-nez v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private synthetic lambda$addAttributeRow$32(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;[Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;)V
    .locals 3

    sget v0, Lorg/telegram/messenger/R$string;->Gift2RarityHint:I

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->rarity_permille:I

    invoke-static {p1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p2, v2

    invoke-virtual {p0, p1, p2, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->showHint(Ljava/lang/CharSequence;Landroid/view/View;Z)V

    return-void
.end method

.method private static synthetic lambda$convert$60(Lorg/telegram/ui/Stars/StarsIntroActivity;J)V
    .locals 2

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$raw;->stars_topup:I

    sget v1, Lorg/telegram/messenger/R$string;->Gift2ConvertedTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    long-to-int p2, p1

    const-string p1, "Gift2Converted"

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private static synthetic lambda$convert$61(Lorg/telegram/ui/StatisticActivity;J)V
    .locals 2

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$raw;->stars_topup:I

    sget v1, Lorg/telegram/messenger/R$string;->Gift2ConvertedTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    long-to-int p2, p1

    const-string p1, "Gift2ConvertedChannel"

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$convert$62(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JJJLorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-ltz p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p5, p6}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$UserFull;->stargifts_count:I

    sub-int/2addr p3, v0

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$UserFull;->stargifts_count:I

    if-gtz p3, :cond_1

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit16 p3, p3, -0x101

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    :cond_1
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->invalidateBalance()V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    instance-of p2, p1, Lorg/telegram/ui/Stars/StarsIntroActivity;

    if-nez p2, :cond_2

    new-instance p2, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    new-instance p3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda117;

    invoke-direct {p3, p2, p7, p8}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda117;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity;J)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->whenFullyVisible(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->stars_topup:I

    sget p3, Lorg/telegram/messenger/R$string;->Gift2ConvertedTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    long-to-int p4, p7

    const-string p5, "Gift2Converted"

    invoke-static {p5, p4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    neg-long p5, p3

    const-string p9, "chat_id"

    invoke-virtual {p2, p9, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p5, "start_from_monetization"

    invoke-virtual {p2, p5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p5, Lorg/telegram/ui/StatisticActivity;

    invoke-direct {p5, p2}, Lorg/telegram/ui/StatisticActivity;-><init>(Landroid/os/Bundle;)V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Stars/BotStarsController;->invalidateStarsBalance(J)V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p2

    invoke-virtual {p2, p3, p4, v0}, Lorg/telegram/ui/Stars/BotStarsController;->invalidateTransactions(JZ)V

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda118;

    invoke-direct {p2, p5, p7, p8}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda118;-><init>(Lorg/telegram/ui/StatisticActivity;J)V

    invoke-virtual {p5, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->whenFullyVisible(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    if-eqz p9, :cond_5

    sget p2, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    iget-object p3, p9, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p3, p4, v1

    invoke-static {p2, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$convert$63(Lorg/telegram/ui/ActionBar/AlertDialog;JJJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    new-instance v11, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda102;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p8

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda102;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JJJLorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$convert$64(Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;JJJLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 13

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    new-instance v9, Lorg/telegram/tgnet/tl/TL_stars$convertStarGift;

    invoke-direct {v9}, Lorg/telegram/tgnet/tl/TL_stars$convertStarGift;-><init>()V

    move-object v0, p1

    iput-object v0, v9, Lorg/telegram/tgnet/tl/TL_stars$convertStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-object v10, p0

    iget v0, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;

    move-object v0, v12

    move-object v1, p0

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda88;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;JJJ)V

    invoke-virtual {v11, v9, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$doTransfer$107(Lorg/telegram/ui/ChatActivity;J)V
    .locals 5

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->forward:I

    sget v1, Lorg/telegram/messenger/R$string;->Gift2TransferredTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Gift2TransferredText:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, p3, v4

    const/4 v3, 0x1

    aput-object p2, p3, v3

    invoke-static {v2, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$doTransfer$108(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JJ)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p3, :cond_2

    const-wide/16 p2, 0x0

    cmp-long v0, p4, p2

    if-ltz v0, :cond_1

    cmp-long v0, p6, p2

    if-ltz v0, :cond_1

    invoke-static {p4, p5}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda116;

    invoke-direct {p3, p0, p2, p4, p5}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda116;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ChatActivity;J)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->whenFullyVisible(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->forward:I

    sget p3, Lorg/telegram/messenger/R$string;->Gift2TransferredTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$string;->Gift2TransferredText:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p5}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_3
    :goto_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    return-void
.end method

.method private synthetic lambda$doTransfer$109(Lorg/telegram/messenger/Utilities$Callback;JJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    move-object/from16 v4, p6

    instance-of v0, v4, Lorg/telegram/tgnet/TLRPC$Updates;

    move-object v9, p0

    if-eqz v0, :cond_0

    iget v0, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-object v1, v4

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    new-instance v10, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda101;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda101;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JJ)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$doTransfer$110(Lorg/telegram/ui/Stars/StarsController;JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const-string v0, "NO_BALANCE"

    const/4 v1, 0x0

    aput-object v0, p4, v1

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->doTransfer(JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$doTransfer$111(Lorg/telegram/ui/ChatActivity;J)V
    .locals 5

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->forward:I

    sget v1, Lorg/telegram/messenger/R$string;->Gift2TransferredTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Gift2TransferredText:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, p3, v4

    const/4 v3, 0x1

    aput-object p2, p3, v3

    invoke-static {v2, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$doTransfer$112(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$doTransfer$113([ZJLorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v0, p1, v1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->doTransfer(JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$doTransfer$114(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$doTransfer$115(JJLorg/telegram/messenger/Utilities$Callback;)V
    .locals 16

    move-object/from16 v6, p0

    const/4 v0, 0x1

    new-array v2, v0, [Z

    const/4 v0, 0x0

    aput-boolean v0, v2, v0

    new-instance v15, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v14, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;[ZJLorg/telegram/messenger/Utilities$Callback;)V

    const/16 v12, 0xb

    const/4 v13, 0x0

    move-object v7, v15

    move-wide/from16 v10, p1

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v15, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v15}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    return-void
.end method

.method private synthetic lambda$doTransfer$116(Lorg/telegram/tgnet/TLObject;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 12

    move-object v7, p0

    move-object v0, p1

    move-wide v4, p2

    move-wide/from16 v1, p4

    move-object/from16 v6, p6

    move-object/from16 v3, p7

    instance-of v8, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    iget v3, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v8, v9}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v3, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v8, v9}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget v3, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    iget v3, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    iget v3, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    iget v3, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarsController;->invalidateBalance()V

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    const-wide/16 v10, 0x0

    cmp-long v6, v4, v10

    if-ltz v6, :cond_1

    cmp-long v6, v1, v10

    if-ltz v6, :cond_1

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda130;

    invoke-direct {v2, p0, v1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda130;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ChatActivity;J)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->whenFullyVisible(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->forward:I

    sget v3, Lorg/telegram/messenger/R$string;->Gift2TransferredTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransferredText:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v9

    const/4 v8, 0x1

    aput-object v4, v5, v8

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    :goto_0
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda131;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda131;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_5

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "BALANCE_TOO_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_4
    iget v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda132;

    move-object v0, v9

    move-object v1, p0

    move-wide/from16 v2, p8

    move-wide v4, p2

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda132;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;JJLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Stars/StarsController;->invalidateBalance(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    invoke-interface/range {p6 .. p7}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$doTransfer$117(JJLorg/telegram/messenger/Utilities$Callback;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    new-instance v11, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda124;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p9

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda124;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$doTransfer$118(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13

    move-object v9, p0

    move-object v0, p1

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget v1, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    new-instance v10, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;

    invoke-direct {v10}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;-><init>()V

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->form_id:J

    iput-wide v1, v10, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->form_id:J

    move-object v1, p2

    iput-object v1, v10, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_sendStarsForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v7, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v7, v1

    goto :goto_0

    :cond_0
    iget v0, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda122;

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda122;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;JJLorg/telegram/messenger/Utilities$Callback;J)V

    invoke-virtual {v11, v10, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    :cond_1
    if-eqz p7, :cond_2

    invoke-interface/range {p7 .. p8}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->makeForError(Lorg/telegram/tgnet/TLRPC$TL_error;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_1
    return-void
.end method

.method private synthetic lambda$doTransfer$119(Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    new-instance v10, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda103;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda103;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;JJLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$doUpgrade$79(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$doUpgrade$80(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDialogId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->applyNewGiftFromUpdates(Lorg/telegram/tgnet/TLRPC$Updates;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " #"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v2, v2

    const/16 v4, 0x2c

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$raw;->gift_upgrade:I

    sget v4, Lorg/telegram/messenger/R$string;->Gift2UpgradedTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->Gift2UpgradedText:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v2, v3, v4, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda125;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda125;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$doUpgrade$81(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda123;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda123;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$doUpgrade$82(Lorg/telegram/ui/Stars/StarsController;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "NO_BALANCE"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->doUpgrade()V

    return-void
.end method

.method private synthetic lambda$doUpgrade$83(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$doUpgrade$84([Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v0, p1, v1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->doUpgrade()V

    return-void
.end method

.method private synthetic lambda$doUpgrade$85(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$doUpgrade$86(J)V
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v9, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda135;

    invoke-direct {v9, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda135;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;[Z)V

    const/16 v7, 0xa

    const/4 v8, 0x0

    move-object v2, v1

    move-wide v5, p1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda136;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda136;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    return-void
.end method

.method private synthetic lambda$doUpgrade$87(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 4

    const/4 v0, 0x1

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, p3, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, p3, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDialogId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->invalidateBalance()V

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->applyNewGiftFromUpdates(Lorg/telegram/tgnet/TLRPC$Updates;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " #"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object p3

    iget p3, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long p3, p3

    const/16 v1, 0x2c

    invoke-static {p3, p4, v1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$raw;->gift_upgrade:I

    sget v1, Lorg/telegram/messenger/R$string;->Gift2UpgradedTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->Gift2UpgradedText:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p3, p4, v1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    const/16 p3, 0x1388

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    sget-object p2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda126;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda126;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;)V

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "BALANCE_TOO_LOW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stars/StarsController;->showNoSupportDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_3
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda127;

    invoke-direct {p2, p0, p3, p4}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda127;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;J)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stars/StarsController;->invalidateBalance(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$doUpgrade$88(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda115;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda115;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initTONTransfer$102(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$initTONTransfer$103(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    if-nez p1, :cond_0

    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 p1, 0x0

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->setCurrentPasswordInfo([BLorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-static {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-virtual {p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->getNewSrpPassword()Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->initTONTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initTONTransfer$104(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initTONTransfer$105(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_12

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "PASSWORD_MISSING"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "PASSWORD_TOO_FRESH_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "SESSION_TOO_FRESH_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "SRP_ID_INVALID"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda133;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda133;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const/16 v2, 0x8

    invoke-virtual {v3, v1, v4, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_d

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->finishFragment()V

    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/BulletinFactory;->showError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto/16 :goto_d

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    :cond_5
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/messenger/R$string;->Gift2TransferToTONAlertTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/view/View;->setPadding(IIII)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v7, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_6

    const/4 v11, 0x5

    goto :goto_1

    :cond_6
    const/4 v11, 0x3

    :goto_1
    or-int/lit8 v11, v11, 0x30

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    sget v11, Lorg/telegram/messenger/R$string;->Gift2TransferToTONAlertText:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, -0x1

    const/4 v14, -0x2

    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v7, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x0

    const/high16 v19, 0x41300000    # 11.0f

    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v15, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v12, Lorg/telegram/messenger/R$drawable;->list_circle:I

    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-boolean v16, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v17, 0x41300000    # 11.0f

    if-eqz v16, :cond_7

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v13, v16

    goto :goto_2

    :cond_7
    const/4 v13, 0x0

    :goto_2
    const/high16 v18, 0x41100000    # 9.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sget-boolean v20, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v20, :cond_8

    const/4 v14, 0x0

    goto :goto_3

    :cond_8
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    move/from16 v14, v20

    :goto_3
    invoke-virtual {v15, v13, v11, v14, v9}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v11, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x5

    goto :goto_4

    :cond_9
    const/4 v13, 0x3

    :goto_4
    or-int/lit8 v13, v13, 0x30

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setGravity(I)V

    sget v13, Lorg/telegram/messenger/R$string;->Gift2TransferToTONAlertText1:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, -0x2

    if-eqz v13, :cond_a

    const/4 v13, -0x1

    invoke-static {v13, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x5

    invoke-static {v6, v6, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_a
    const/4 v13, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v13, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/high16 v25, 0x41300000    # 11.0f

    invoke-static/range {v22 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_b

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    :goto_6
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    goto :goto_7

    :cond_c
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    :goto_7
    invoke-virtual {v7, v10, v11, v12, v9}, Landroid/view/View;->setPadding(IIII)V

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x1

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_d

    const/4 v10, 0x5

    goto :goto_8

    :cond_d
    const/4 v10, 0x3

    :goto_8
    or-int/lit8 v10, v10, 0x30

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    sget v10, Lorg/telegram/messenger/R$string;->Gift2TransferToTONAlertText2:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_e

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v12, 0x5

    invoke-static {v11, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_e
    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x5

    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_f

    sget v1, Lorg/telegram/messenger/R$string;->Gift2TransferToTONSetPassword:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda134;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda134;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v3, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    :goto_a
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_c

    :cond_f
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x1

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_10

    goto :goto_b

    :cond_10
    const/4 v12, 0x3

    :goto_b
    or-int/lit8 v6, v12, 0x30

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransferToTONAlertText3:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/high16 v10, 0x41300000    # 11.0f

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    goto :goto_a

    :goto_c
    if-eqz v2, :cond_11

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_d

    :cond_11
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_d

    :cond_12
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->finishFragment()V

    instance-of v1, v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftWithdrawalUrl;

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftWithdrawalUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftWithdrawalUrl;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :cond_13
    :goto_d
    return-void
.end method

.method private synthetic lambda$initTONTransfer$106(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda129;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda129;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->openTransfer()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$onBuyPressed$120(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLjava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->boughtGift:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz p1, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onBuyPressed$121(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;JLorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 8

    invoke-virtual {p5}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda94;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p5

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda94;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;J)V

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarsController;->buyResellingGift(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private synthetic lambda$onBuyPressed$122(JLorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-static {p4}, Lorg/telegram/ui/Stars/StarsController;->getFormStarsPrice(Lorg/telegram/tgnet/TLRPC$PaymentForm;)J

    move-result-wide v6

    new-instance v8, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda77;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda77;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;J)V

    const/4 v3, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet;->openTransferAlert(ZJJLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$onMenuPressed$2()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;-><init>()V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->unsave:Z

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0x40

    invoke-virtual {v1, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    xor-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    check-cast v3, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v3, v0, v1, v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->togglePinned(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v8, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda84;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda84;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;-><init>(Landroid/content/Context;JLorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback0Return;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$raw;->ic_pin:I

    sget v2, Lorg/telegram/messenger/R$string;->Gift2PinnedTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Gift2PinnedSubtitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    sget v2, Lorg/telegram/messenger/R$string;->Gift2Unpinned:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$onMenuPressed$3()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onUpdatePriceClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onMenuPressed$4(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onMenuPressed$5()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onSharePressed(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onResellPressed$18(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setResellPrice(J)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->onGiftUpdatedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v0, Lorg/telegram/messenger/R$string;->Gift2ResaleDisable:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onResellPressed$19(Lorg/telegram/messenger/browser/Browser$Progress;J)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    long-to-int p3, p2

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->showTimeoutAlert(Landroid/content/Context;ZI)V

    return-void
.end method

.method private synthetic lambda$onResellPressed$20(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$onResellPressed$21(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    iget p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p4, p3, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    new-instance p3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda97;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda97;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "STARGIFT_RESELL_TOO_EARLY_"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/16 p3, 0x1a

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    new-instance p4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda98;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda98;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;J)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda99;

    invoke-direct {p2, p0, p1, p4}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda99;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$onResellPressed$22(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->makeButtonLoading(I)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    new-instance p3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;-><init>()V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    const-wide/16 v0, 0x0

    iput-wide v0, p3, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;->resell_stars:J

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda87;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda87;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static synthetic lambda$onResellPressed$23(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onResellPressed$24(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 3

    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setResellPrice(J)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->onGiftUpdatedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget p3, Lorg/telegram/messenger/R$string;->Gift2ResaleEnable:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onResellPressed$25(JLjava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    long-to-int p2, p1

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->showTimeoutAlert(Landroid/content/Context;ZI)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResellPressed$26(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResellPressed$27(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    iget p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    check-cast p4, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p5, p4, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    new-instance p4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda104;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda104;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V

    :goto_0
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    iget-object p1, p5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "STARGIFT_RESELL_TOO_EARLY_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    new-instance p4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda105;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda105;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;JLjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda106;

    invoke-direct {p1, p0, p5, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda106;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$onResellPressed$28(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;-><init>()V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;->resell_stars:J

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda73;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda73;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$onUpdatePriceClick$14(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 2

    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->flags:I

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setResellPrice(J)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->onGiftUpdatedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onUpdatePriceClick$15(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onUpdatePriceClick$16(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    iget p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    check-cast p4, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p5, p4, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    new-instance p4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda109;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda109;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda110;

    invoke-direct {p1, p0, p5, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda110;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onUpdatePriceClick$17(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;-><init>()V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$updateStarGiftPrice;->resell_stars:J

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda83;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda83;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$onWearPressed$6(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->shownWearInfo:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->toggleWear()V

    return-void
.end method

.method private synthetic lambda$openAsLearnMore$58(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$openAsLearnMore$59(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$starGiftUpgradePreview;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftUpgradePreview;->sample_attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setPreviewingAttributes(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZ)V

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    sget p2, Lorg/telegram/messenger/R$string;->Gift2LearnMoreTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget p2, Lorg/telegram/messenger/R$string;->Gift2LearnMoreText:I

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {p2, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setText(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeFeatureCells:[Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    aget-object p1, p1, v0

    sget p2, Lorg/telegram/messenger/R$string;->Gift2UpgradeFeature1TextLearn:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeFeatureCells:[Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    aget-object p1, p1, v1

    sget p2, Lorg/telegram/messenger/R$string;->Gift2UpgradeFeature2TextLearn:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeFeatureCells:[Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    sget p2, Lorg/telegram/messenger/R$string;->Gift2UpgradeFeature3TextLearn:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/AffiliateProgramFragment$FeatureCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->checkboxLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->checkboxSeparator:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda120;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda120;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->show()V

    return-void
.end method

.method private synthetic lambda$openTransfer$100(IIILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    const/4 v3, 0x1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x63

    const/4 v8, 0x0

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-nez v10, :cond_1

    move/from16 v4, p1

    move/from16 v5, p2

    if-ge v4, v5, :cond_0

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->Gift2ExportTONUnlocksAlertTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    move/from16 v2, p3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Gift2ExportTONUnlocksAlertText"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_1

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$GiftTransferTopView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v6, p4

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$GiftTransferTopView;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x30

    const/4 v13, 0x0

    const/4 v14, -0x4

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v6, Lorg/telegram/messenger/R$string;->Gift2ExportTONFragmentTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v15, 0x18

    const/16 v16, 0xe

    const/16 v13, 0x18

    const/4 v14, 0x4

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v5, Lorg/telegram/messenger/R$string;->Gift2ExportTONFragmentText:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v8

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v16, 0x4

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Gift2ExportTONFragmentOpen:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda79;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda79;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    goto/16 :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda80;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda80;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/Long;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmp-long v7, v5, v10

    if-gez v7, :cond_3

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    neg-long v5, v5

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;-><init>()V

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    neg-long v5, v5

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda81;

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda81;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_2
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stargifts_available:Z

    if-nez v1, :cond_5

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->Gift2ChannelDoesntSupportGiftsTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Gift2ChannelDoesntSupportGiftsText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_3
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v10

    if-ltz v7, :cond_5

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$UserFull;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v7, :cond_4

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz v7, :cond_4

    aget-object v1, v1, v8

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$raw;->error:I

    sget v5, Lorg/telegram/messenger/R$string;->UserDisallowedGifts:I

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v8

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_4
    if-nez v6, :cond_5

    if-eqz v5, :cond_5

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;-><init>()V

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda82;

    invoke-direct {v6, v0, v1, v2, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda82;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_5
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$openTransfer$89(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->initTONTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method private synthetic lambda$openTransfer$90([Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->dismiss()V

    invoke-virtual {p2}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    invoke-direct {p0, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$openTransfer$91([Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->makeButtonLoading(I)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p3}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda107;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda107;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const/4 v1, 0x2

    invoke-virtual {p3, v1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->setDelegate(ILorg/telegram/ui/TwoStepVerificationActivity$TwoStepVerificationActivityDelegate;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->setDelegateString(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda108;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda108;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-virtual {p3, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->preload(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$openTransfer$92(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$openTransfer$93(Lorg/telegram/messenger/browser/Browser$Progress;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->dismiss()V

    if-eqz p3, :cond_0

    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda128;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda128;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$openTransfer$94(Ljava/lang/Long;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 2

    invoke-virtual {p3}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda119;

    invoke-direct {p1, p0, p3, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda119;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/browser/Browser$Progress;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->doTransfer(JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$openTransfer$95(Ljava/lang/Long;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda92;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda92;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/Long;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->openTransferAlert(JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$openTransfer$96(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->putChatFull(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stargifts_available:Z

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->Gift2ChannelDoesntSupportGiftsTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Gift2ChannelDoesntSupportGiftsText:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->makeForError(Lorg/telegram/tgnet/TLRPC$TL_error;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    return-void
.end method

.method private synthetic lambda$openTransfer$97(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda111;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda111;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$openTransfer$98(Lorg/telegram/tgnet/TLObject;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;

    iget p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->users:Ljava/util/ArrayList;

    invoke-virtual {p5, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {p5, v1, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->full_user:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz p1, :cond_0

    aget-object p1, p2, v0

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p4, Lorg/telegram/messenger/R$string;->UserDisallowedGifts:I

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p3, p5, v0

    invoke-static {p4, p5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_0
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/BulletinFactory;->makeForError(Lorg/telegram/tgnet/TLRPC$TL_error;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    return-void
.end method

.method private synthetic lambda$openTransfer$99([Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda93;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda93;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/Long;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$openTransferAlert$101(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->makeButtonLoading(I)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$openUpgrade$75(Lorg/telegram/tgnet/tl/TL_stars$starGiftUpgradePreview;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftUpgradePreview;->sample_attributes:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->sample_attributes:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->openUpgradeAfter()V

    return-void
.end method

.method private synthetic lambda$openUpgrade$76(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgrade_form:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->openUpgradeAfter()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->makeForError(Lorg/telegram/tgnet/TLRPC$TL_error;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    return-void
.end method

.method private synthetic lambda$openUpgrade$77(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda74;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda74;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$openUpgradeAfter$78(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->doUpgrade()V

    return-void
.end method

.method private synthetic lambda$releasedByText$35(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$releasedByUniqueText$36(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$repollMessage$55(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObjectRepolled:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObjectRepolling:Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->unsavedFromSavedStarGift:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr p1, v0

    iput-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved:Z

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr p1, v0

    iput-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->saved:Z

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarGiftSheet;

    return-void
.end method

.method private synthetic lambda$repollMessage$56(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz p3, :cond_2

    move-object p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_1

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v3, p1, :cond_1

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-nez v4, :cond_0

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v3, :cond_1

    :cond_0
    new-instance p1, Lorg/telegram/messenger/MessageObject;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {p1, p3, v2, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->setType()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    new-instance p3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda78;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda78;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$repollSavedStarGift$57(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->userStarGiftRepolling:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->userStarGiftRepolled:Z

    if-eqz p1, :cond_4

    iget-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->unsavedFromSavedStarGift:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->saved:Z

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    xor-int/2addr p1, v0

    if-ne v3, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->saved:Z

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved:Z

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    xor-int/2addr p1, v0

    if-ne v3, p1, :cond_2

    return-void

    :cond_2
    iput-boolean p1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved:Z

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarGiftSheet;

    :cond_4
    return-void
.end method

.method private synthetic lambda$repostStory$29(Ljava/lang/Long;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->GiftRepostedToProfile:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->GiftRepostedToChannelProfile:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$repostStory$30(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda72;

    invoke-direct {p2, p0, p6}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/Long;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->replaceSourceView(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    goto :goto_0

    :cond_0
    instance-of p3, p2, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p3

    if-eqz p3, :cond_1

    check-cast p2, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromShareCell(Lorg/telegram/ui/Cells/ShareDialogCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p5

    :cond_1
    invoke-virtual {p1, p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->replaceSourceView(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    :cond_2
    :goto_0
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$set$33(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->tonBlockchainExplorerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$set$34(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onBuyPressed()V

    return-void
.end method

.method private synthetic lambda$set$37()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->copy:I

    sget v2, Lorg/telegram/messenger/R$string;->WalletAddressCopied:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$set$38(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->openProfile(J)V

    return-void
.end method

.method private synthetic lambda$set$39(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onBuyPressed()V

    return-void
.end method

.method private synthetic lambda$set$40(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$set$41()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Stars/ExplainStarsSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stars/ExplainStarsSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$set$42(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->openProfile(J)V

    return-void
.end method

.method private synthetic lambda$set$43(J)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda54;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    move-object v0, v6

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/lang/Runnable;)V

    invoke-virtual {v6}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    return-void
.end method

.method private synthetic lambda$set$44(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->openUpgrade()V

    return-void
.end method

.method private synthetic lambda$set$45(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$set$46(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->tonBlockchainExplorerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$set$47()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Stars/ExplainStarsSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stars/ExplainStarsSheet;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$set$48(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->openProfile(J)V

    return-void
.end method

.method private synthetic lambda$set$49(J)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda54;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    move-object v0, v6

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/lang/Runnable;)V

    invoke-virtual {v6}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    return-void
.end method

.method private synthetic lambda$set$50(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->openProfile(J)V

    return-void
.end method

.method private synthetic lambda$set$51(J)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda54;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    move-object v0, v6

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/lang/Runnable;)V

    invoke-virtual {v6}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    return-void
.end method

.method private synthetic lambda$set$52(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->openUpgrade()V

    return-void
.end method

.method private synthetic lambda$set$53(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$set$54(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->tonBlockchainExplorerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setupWearPage$7(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->shownWearInfo:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->toggleWear()V

    return-void
.end method

.method private synthetic lambda$show$68(Lorg/telegram/tgnet/tl/TL_stars$TL_payments_uniqueStarGift;)V
    .locals 2

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_uniqueStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;ZZ)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private static synthetic lambda$show$69(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    sget v1, Lorg/telegram/messenger/R$string;->UniqueGiftNotFound:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$70(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    instance-of p3, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_uniqueStarGift;

    if-eqz p3, :cond_0

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_uniqueStarGift;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_uniqueStarGift;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_uniqueStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of p3, p3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz p3, :cond_0

    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda59;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_payments_uniqueStarGift;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda60;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$show$71(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObjectRepolled:Z

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private static synthetic lambda$show$72(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    sget v1, Lorg/telegram/messenger/R$string;->MessageNotFound:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$73(Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz p4, :cond_1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p4, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    const/4 p4, 0x0

    :goto_0
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    if-nez v2, :cond_0

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_msg_id:I

    if-ne v2, v3, :cond_0

    new-instance p1, Lorg/telegram/messenger/MessageObject;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {p1, p3, v0, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->setType()V

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    new-instance p3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda36;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda37;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$show$74(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->userStarGiftRepolled:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v0, Lorg/telegram/messenger/R$string;->MessageNotFound:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$showHint$123(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$switchPage$31(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->setProgress(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onSwitchedPage()V

    return-void
.end method

.method private static synthetic lambda$toggleShow$65(JLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    const-string v1, "user_id"

    :goto_0
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_0
    neg-long p0, p0

    const-string v1, "chat_id"

    goto :goto_0

    :goto_1
    const-string p0, "my_profile"

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "open_gifts"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$toggleShow$66(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDialogId()J

    move-result-wide v3

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Stars/StarsController;->invalidateProfileGifts(J)V

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_4

    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    if-eqz p3, :cond_1

    sget p4, Lorg/telegram/messenger/R$string;->Gift2MadePrivateTitle:I

    goto :goto_0

    :cond_1
    sget p4, Lorg/telegram/messenger/R$string;->Gift2MadePublicTitle:I

    :goto_0
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_2

    sget p3, Lorg/telegram/messenger/R$string;->Gift2MadePrivate:I

    goto :goto_1

    :cond_2
    sget p3, Lorg/telegram/messenger/R$string;->Gift2MadePublic:I

    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    instance-of v0, v2, Lorg/telegram/ui/ProfileActivity;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda96;

    invoke-direct {v0, v3, v4, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda96;-><init>(JLorg/telegram/ui/ActionBar/BaseFragment;)V

    :goto_2
    invoke-static {p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_5

    :cond_4
    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    if-eqz p3, :cond_5

    sget p4, Lorg/telegram/messenger/R$string;->Gift2ChannelMadePrivateTitle:I

    goto :goto_3

    :cond_5
    sget p4, Lorg/telegram/messenger/R$string;->Gift2ChannelMadePublicTitle:I

    :goto_3
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_6

    sget p3, Lorg/telegram/messenger/R$string;->Gift2ChannelMadePrivate:I

    goto :goto_4

    :cond_6
    sget p3, Lorg/telegram/messenger/R$string;->Gift2ChannelMadePublic:I

    :goto_4
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_5

    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v0

    invoke-static {p2, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_8
    :goto_5
    return-void
.end method

.method private synthetic lambda$toggleShow$67(Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda75;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$toggleWear$10(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;JLorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDummyFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v5, 0x1a

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, p5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    const/4 p5, 0x1

    invoke-virtual {v0, p1, p5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    neg-long p1, p2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda100;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda100;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->showStatisticButtonInLink(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$toggleWear$11(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 8

    if-eqz p4, :cond_1

    iget v0, p4, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    iget v1, p1, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda85;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda85;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;JLorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v0, p2, p3, p4, v7}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lcom/google/android/exoplayer2/util/Consumer;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->toggleWear(Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$toggleWear$12(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->Gift2ActionWearDone:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->Gift2ActionWearOffDone:I

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->ownerTextView:Landroid/view/View;

    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->showHint(Ljava/lang/CharSequence;Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$toggleWear$13(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$toggleWear$8()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDummyFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$toggleWear$9(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->create(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private onMenuPressed(Landroid/view/View;)V
    .locals 9

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getLink()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    instance-of v1, v1, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v4, :cond_1

    iget-boolean v5, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v5, :cond_1

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    goto :goto_1

    :cond_1
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    :goto_1
    if-eqz v4, :cond_2

    iget-boolean v4, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v4, :cond_2

    sget v4, Lorg/telegram/messenger/R$string;->Gift2Unpin:I

    goto :goto_2

    :cond_2
    sget v4, Lorg/telegram/messenger/R$string;->Gift2Pin:I

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda38;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {p1, v1, v5, v4, v6}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v1

    iget-wide v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    sget v6, Lorg/telegram/messenger/R$drawable;->menu_edit_price:I

    sget v7, Lorg/telegram/messenger/R$string;->Gift2ChangePrice:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda39;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {p1, v1, v6, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_link:I

    sget v7, Lorg/telegram/messenger/R$string;->CopyLink:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda40;

    invoke-direct {v8, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v6, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v6, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda41;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {p1, v0, v1, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->canTransfer()Z

    move-result v0

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_feature_transfer:I

    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransferOption:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda42;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {p1, v0, v1, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-nez v0, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDialogId()J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_view_file:I

    sget v1, Lorg/telegram/messenger/R$string;->Gift2ViewInProfile:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda43;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {p1, v2, v0, v1, v4}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private onSwitchedPage()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->infoLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->wearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onSwitchPage(Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->updateTranslations()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private onWearPressed(Landroid/view/View;)V
    .locals 7

    const/4 p1, 0x1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->isWorn(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->shownWearInfo:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->toggleWear()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v4, v0

    const/16 v0, 0x2c

    invoke-static {v4, v5, v0}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->wearTitle:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->Gift2WearTitle:I

    new-array v5, p1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2WearStart:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, " l"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    if-nez v3, :cond_3

    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_mini_lock3:I

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v3, v0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda64;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setWearPreview(Lorg/telegram/tgnet/TLObject;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZ)V

    return-void
.end method

.method private openInProfile()V
    .locals 5

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->openProfile(J)V

    return-void
.end method

.method private openProfile(J)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, p1, v2

    if-lez v5, :cond_2

    const-string v2, "user_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v5, p1, v2

    if-nez v5, :cond_3

    const-string p1, "my_profile"

    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    neg-long p1, p1

    const-string v2, "chat_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    :goto_0
    const-string p1, "open_gifts"

    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_4
    return-void
.end method

.method private openUpgrade()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->switchingPagesAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v7, :cond_5

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v7, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_stars:J

    iget-boolean v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->name_hidden:Z

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v12, :cond_3

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x1

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    :goto_0
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v2, :cond_12

    iget-object v7, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v8, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v10, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    instance-of v7, v7, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift;

    if-eqz v7, :cond_7

    iget-boolean v7, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->name_hidden:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    :goto_1
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v12, 0x1

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    :goto_2
    iget-wide v13, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    cmp-long v2, v13, v3

    if-gez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    move-wide v15, v10

    move v11, v7

    move-wide v7, v8

    move-wide v9, v15

    :goto_4
    if-eqz v11, :cond_b

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->checkboxTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    sget v2, Lorg/telegram/messenger/R$string;->Gift2AddMyNameNameChannel:I

    goto :goto_5

    :cond_a
    sget v2, Lorg/telegram/messenger/R$string;->Gift2AddMyNameName:I

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->checkboxTextView:Landroid/widget/TextView;

    if-eqz v12, :cond_c

    sget v12, Lorg/telegram/messenger/R$string;->Gift2AddSenderNameComment:I

    :goto_6
    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    sget v12, Lorg/telegram/messenger/R$string;->Gift2AddSenderName:I

    goto :goto_6

    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v11, :cond_d

    cmp-long v11, v9, v3

    if-lez v11, :cond_d

    const/4 v11, 0x1

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v2, v11, v5}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->sample_attributes:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    cmp-long v5, v9, v3

    if-gtz v5, :cond_e

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgrade_form:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-nez v5, :cond_e

    goto :goto_9

    :cond_e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->openUpgradeAfter()V

    goto :goto_a

    :cond_f
    :goto_9
    if-nez v2, :cond_10

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda55;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v2, v7, v8, v5}, Lorg/telegram/ui/Stars/StarsController;->getStarGiftPreview(JLorg/telegram/messenger/Utilities$Callback;)V

    :cond_10
    cmp-long v2, v9, v3

    if-gtz v2, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgrade_form:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-nez v2, :cond_12

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftUpgrade;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftUpgrade;-><init>()V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->checkbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v3

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftUpgrade;->keep_original_details:Z

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftUpgrade;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/2addr v2, v6

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    :cond_11
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda56;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_12
    :goto_a
    return-void
.end method

.method private openUpgradeAfter()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_stars:J

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v2, :cond_5

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->sample_attributes:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgrade_form:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgrade_form:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    move-wide v6, v4

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgrade_form:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgrade_form:Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v6, v8

    add-int/2addr v2, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->sample_attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setPreviewingAttributes(Ljava/util/ArrayList;)V

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    sget v2, Lorg/telegram/messenger/R$string;->Gift2UpgradeTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v2, Lorg/telegram/messenger/R$string;->Gift2UpgradeText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setText(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    cmp-long v2, v6, v4

    if-lez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2UpgradeButton:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v2, Lorg/telegram/messenger/R$string;->Confirm:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda76;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda76;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZ)V

    :cond_5
    :goto_3
    return-void
.end method

.method private presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

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

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method private releasedByText(Lorg/telegram/tgnet/TLRPC$Peer;)Ljava/lang/CharSequence;
    .locals 4

    .line 0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->Gift2ReleasedBy:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private releasedByText(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/CharSequence;
    .locals 1

    .line 0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->released_by:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->releasedByText(Lorg/telegram/tgnet/TLRPC$Peer;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private releasedByUniqueText(ILorg/telegram/tgnet/TLRPC$Peer;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getPublicUsername(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Gift2CollectionNumberBy"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda70;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->replaceSingleTagToLink(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public static replaceSingleTagToLink(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
    .locals 4

    const-string v0, "**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_1

    new-instance p0, Lorg/telegram/ui/Stars/StarGiftSheet$8;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$8;-><init>(Ljava/lang/Runnable;)V

    add-int/2addr v2, v1

    invoke-virtual {v3, p0, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v3
.end method

.method private repollMessage()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObjectRepolling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObjectRepolled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObjectRepolling:Z

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda52;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;I)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private repollSavedStarGift()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->userStarGiftRepolling:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->userStarGiftRepolled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->userStarGiftRepolling:Z

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda57;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stars/StarsController;->getUserStarGift(Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private repostStory(Landroid/view/View;)V
    .locals 8

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromShareCell(Lorg/telegram/ui/Cells/ShareDialogCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    iget v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v3

    iput-object v3, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    iput v3, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->upgrade:Z

    iput-object v3, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v6, v5, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->setType()V

    goto :goto_1

    :goto_2
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda69;

    invoke-direct {v3, p0, v0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setOnPrepareCloseListener(Lorg/telegram/messenger/Utilities$Callback4;)V

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostMessage(Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openRepost(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_3
    return-void
.end method

.method private setupNeighbour(Z)V
    .locals 8

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getListPosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    invoke-interface {v1}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->getLoadedCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->right:Lorg/telegram/ui/Stars/StarGiftSheet;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->left:Lorg/telegram/ui/Stars/StarGiftSheet;

    :goto_2
    if-eqz v1, :cond_8

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->right:Lorg/telegram/ui/Stars/StarGiftSheet;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->left:Lorg/telegram/ui/Stars/StarGiftSheet;

    :goto_3
    iget-object v1, v1, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->eq(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->right:Lorg/telegram/ui/Stars/StarGiftSheet;

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->left:Lorg/telegram/ui/Stars/StarGiftSheet;

    :goto_4
    iget-object v1, v1, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->eq(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    :cond_8
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v2, :cond_9

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    goto :goto_5

    :cond_9
    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v2, :cond_a

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-virtual {v1, v2, v0, v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    :cond_a
    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    if-eqz p1, :cond_b

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->right:Lorg/telegram/ui/Stars/StarGiftSheet;

    goto :goto_6

    :cond_b
    iput-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->left:Lorg/telegram/ui/Stars/StarGiftSheet;

    :goto_6
    return-void
.end method

.method private showTimeoutAlert(Landroid/content/Context;ZI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x42800000    # 64.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v7, 0x40

    const/16 v8, 0x40

    const/16 v9, 0x31

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v7, Lorg/telegram/messenger/R$raw;->timer_3:I

    const/16 v8, 0x2a

    invoke-virtual {v6, v7, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/16 v7, 0x40

    const/16 v8, 0x11

    invoke-static {v7, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v1, v6, v5, v4}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p2, :cond_0

    sget v6, Lorg/telegram/messenger/R$string;->Gift2ResellTimeoutTitle:I

    goto :goto_0

    :cond_0
    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransferTimeoutTitle:I

    :goto_0
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0x18

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/16 v11, 0x30

    const/16 v12, 0x18

    const/16 v13, 0xe

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText8:I

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v1, v6, v5, v2}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p2, :cond_1

    sget v6, Lorg/telegram/messenger/R$string;->Gift2ResellTimeout:I

    goto :goto_1

    :cond_1
    sget v6, Lorg/telegram/messenger/R$string;->Gift2TransferTimeout:I

    :goto_1
    const/16 v7, 0xa

    move/from16 v8, p3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v2

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x18

    const/4 v12, 0x6

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/16 v8, 0x30

    const/16 v9, 0x18

    const/4 v10, 0x6

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private showTimeoutAlertAt(Landroid/content/Context;ZI)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->showTimeoutAlert(Landroid/content/Context;ZI)V

    return-void
.end method

.method private toggleShow()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v3, :cond_1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved:Z

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    :goto_0
    invoke-virtual {v1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    goto :goto_1

    :cond_1
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v3, :cond_2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->saved:Z

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    xor-int/2addr v3, v2

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance v2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;-><init>()V

    iput-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->unsave:Z

    iput-object v0, v2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda58;

    invoke-direct {v4, p0, v1, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    invoke-virtual {v0, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    return-void
.end method

.method private updateViewPager()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->hasNeighbour(Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->rebuild(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->hasNeighbour(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-interface {v0}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->getLoadedCount()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-interface {v1}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->getTotalCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-interface {v0}, Lorg/telegram/ui/Stars/StarsController$IGiftsList;->load()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canResellAt()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->can_resell_at:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_1

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_resell_at:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez v2, :cond_3

    return v1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v2, :cond_4

    :cond_3
    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_5

    :goto_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v0

    return v0

    :cond_5
    return v1
.end method

.method public canTransferAt()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->can_transfer_at:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_1

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_transfer_at:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 1

    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/Stars/StarGiftSheet$1;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->adapter:Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    if-ne p2, p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->updateViewPager()V

    :cond_0
    return-void
.end method

.method public doTransfer(JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 11

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v2, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v2, :cond_1

    iget-wide v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    iget-wide v1, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->transfer_stars:J

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->transfer_stars:J

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v7, v1, v8

    if-gtz v7, :cond_2

    new-instance v7, Lorg/telegram/tgnet/tl/TL_stars$transferStarGift;

    invoke-direct {v7}, Lorg/telegram/tgnet/tl/TL_stars$transferStarGift;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/tl/TL_stars$transferStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/tl/TL_stars$transferStarGift;->to_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda89;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda89;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/Utilities$Callback;JJ)V

    invoke-virtual {v8, v7, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda90;

    move-object v0, v6

    move-object v1, p0

    move-object v2, v7

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda90;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/Stars/StarsController;JLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Ljava/lang/Runnable;)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    return-void

    :cond_3
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;->to_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    iput-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v8, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    :cond_4
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda91;

    move-object v0, v10

    move-object v1, p0

    move-wide v3, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda91;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStarGiftTransfer;JJLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v9, v8, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public eq(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-ne v2, v3, :cond_2

    return v0

    :cond_2
    instance-of v4, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v4, :cond_4

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v4, :cond_4

    iget-wide p1, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v2, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    instance-of v4, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift;

    if-eqz v4, :cond_6

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift;

    if-eqz v4, :cond_6

    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v2, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_5

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    if-ne p1, p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public eq(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v4, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method protected getActionBarProgressHeight()I
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->bottomBulletinContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method

.method public getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    return-object v0

    :cond_1
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v2, :cond_4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    return-object v1
.end method

.method public getGiftName()Ljava/lang/String;
    .locals 4

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v2, v0

    const/16 v0, 0x2c

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->onlyWearInfo:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    iget v0, v0, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->isLearnMore:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarGiftSheet;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slug:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    invoke-virtual {p0, v1, v0, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    :cond_2
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZ)V

    return-void

    :cond_3
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    return-void
.end method

.method public onBuyPressed()V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->resale:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    :goto_0
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda35;

    invoke-direct {v4, p0, v1, v2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;JLorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lorg/telegram/ui/Stars/StarsController;->getResellingGiftForm(Lorg/telegram/tgnet/tl/TL_stars$StarGift;JLorg/telegram/messenger/Utilities$Callback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResellPressed(Landroid/view/View;)V
    .locals 6

    const/4 p1, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->Gift2UnlistTitle:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, p1, v4

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->Gift2UnlistText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->Gift2ActionUnlist:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda45;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda46;

    invoke-direct {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda46;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->canResellAt()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->canResellAt()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->showTimeoutAlertAt(Landroid/content/Context;ZI)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda47;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1, v2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showGiftResellPriceSheet(Landroid/content/Context;ILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :goto_0
    return-void
.end method

.method public onSharePressed(Landroid/view/View;)V
    .locals 19

    move-object/from16 v15, p0

    iget-object v0, v15, Lorg/telegram/ui/Stars/StarGiftSheet;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v15, Lorg/telegram/ui/Stars/StarGiftSheet;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getLink()Ljava/lang/String;

    move-result-object v8

    new-instance v14, Lorg/telegram/ui/Stars/StarGiftSheet$5;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v13, v15, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v12, 0x1

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v8

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Stars/StarGiftSheet$5;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v0, v18

    iput-object v0, v15, Lorg/telegram/ui/Stars/StarGiftSheet;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$6;

    invoke-direct {v1, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$6;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->setDelegate(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V

    iget-object v0, v15, Lorg/telegram/ui/Stars/StarGiftSheet;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method protected onSwipeStarts()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method

.method public onUpdatePriceClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController;->starsStargiftResaleAmountMin:J

    :cond_1
    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda62;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showGiftResellPriceSheet(Landroid/content/Context;IJLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method public openAsLearnMore(JLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->isLearnMore:Z

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda95;

    invoke-direct {v1, p0, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda95;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Stars/StarsController;->getStarGiftPreview(JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public openTransfer()V
    .locals 18

    move-object/from16 v7, p0

    const/4 v0, 0x1

    const/4 v8, 0x0

    iget-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v1, 0x0

    iput-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->canTransferAt()I

    move-result v1

    iget v2, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->canTransferAt()I

    move-result v1

    invoke-direct {v7, v0, v8, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->showTimeoutAlertAt(Landroid/content/Context;ZI)V

    return-void

    :cond_1
    iget-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_export_at:I

    :goto_0
    move v3, v1

    move-object v5, v2

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez v3, :cond_3

    return-void

    :cond_3
    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->can_export_at:I

    goto :goto_0

    :goto_1
    iget v1, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    iget v11, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object v14

    iget-object v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v15, 0x3

    const/16 v16, 0x1

    const-wide/16 v12, 0x0

    move-object v9, v1

    move-object/from16 v17, v4

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;-><init>(Landroid/content/Context;IJLorg/telegram/messenger/BirthdayController$BirthdayState;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-array v9, v0, [Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    aput-object v1, v9, v8

    aget-object v1, v9, v8

    sget v4, Lorg/telegram/messenger/R$string;->Gift2TransferShort:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->setTitle(Ljava/lang/String;)V

    if-le v2, v3, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    sub-int v1, v3, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v4, 0x47a8c000    # 86400.0f

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v0

    :goto_2
    aget-object v0, v9, v8

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->addTONOption(I)V

    aget-object v10, v9, v8

    new-instance v11, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda63;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;IIILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;[Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->setOnUserSelector(Lorg/telegram/messenger/Utilities$Callback;)V

    aget-object v0, v9, v8

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_5
    return-void
.end method

.method public openTransferAlert(JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->transfer_stars:J

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->transfer_stars:J

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    move-object v2, p0

    move-wide v4, p1

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet;->openTransferAlert(ZJJLorg/telegram/messenger/Utilities$Callback;)V

    :cond_2
    return-void
.end method

.method public openTransferAlert(ZJJLorg/telegram/messenger/Utilities$Callback;)V
    .locals 23

    .line 0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    const-wide/16 v9, 0x0

    cmp-long v11, v1, v9

    if-ltz v11, :cond_1

    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_1
    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    neg-long v12, v1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    if-nez v11, :cond_2

    const-string v12, ""

    goto :goto_0

    :cond_2
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_0
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v14, Lorg/telegram/ui/Stars/StarGiftSheet$GiftTransferTopView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v8, v11}, Lorg/telegram/ui/Stars/StarGiftSheet$GiftTransferTopView;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/tgnet/TLObject;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x30

    const/16 v19, 0x0

    const/16 v20, -0x4

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v13, v14, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v8, v7, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p1, :cond_4

    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    cmp-long v14, v1, v11

    if-nez v14, :cond_3

    long-to-int v1, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const-string v2, "Gift2BuyPriceSelfText"

    invoke-static {v2, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    long-to-int v11, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v12, v2, v6

    aput-object v1, v2, v7

    const-string v1, "Gift2BuyPriceText"

    invoke-static {v1, v11, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    cmp-long v11, v3, v9

    if-lez v11, :cond_5

    long-to-int v11, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v12, v2, v6

    aput-object v1, v2, v7

    const-string v1, "Gift2TransferPriceText"

    invoke-static {v1, v11, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->Gift2TransferText:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName()Ljava/lang/String;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v12, v5, v7

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x18

    const/16 v20, 0x4

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x30

    const/16 v17, 0x18

    const/16 v18, 0x4

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    if-eqz p1, :cond_6

    long-to-int v2, v3

    const-string v3, "Gift2BuyDoPrice2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_3

    :cond_6
    cmp-long v2, v3, v9

    if-lez v2, :cond_7

    sget v2, Lorg/telegram/messenger/R$string;->Gift2TransferDoPrice:I

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    sget v2, Lorg/telegram/messenger/R$string;->Gift2TransferDo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda61;

    move-object/from16 v4, p6

    invoke-direct {v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->setShowStarsBalance(Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method public set(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;
    .locals 5

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slug:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    iget-wide v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    const-wide/16 v2, 0x0

    const/4 p1, 0x1

    const/4 p3, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMine(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->resale:Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setTransferAvailable(Z)V

    invoke-virtual {p0, p2, p1, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_address:Ljava/lang/String;

    iget-object v2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->gift_address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2InBlockchain:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const v2, 0x402aaaab

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f28f5c3    # 0.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->resale:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    long-to-int p2, v1

    const-string v1, "ResellGiftBuy"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    xor-int/2addr p1, v1

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda25;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, p3, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    iput-boolean p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->updateViewPager()V

    return-object p0
.end method

.method public set(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarGiftSheet;
    .locals 49

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4b

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v6, :cond_0

    goto/16 :goto_35

    :cond_0
    iput-boolean v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    const/4 v6, 0x0

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-nez v11, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-nez v11, :cond_8

    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v11, :cond_2

    move-object v14, v10

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v14, v14, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift;

    if-eqz v14, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v11, :cond_7

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v2, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setTransferAvailable(Z)V

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget v3, v10, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->refunded:Z

    invoke-virtual {v0, v2, v3, v11}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;ZZ)V

    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->saved:Z

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->upgrade:Z

    xor-int/2addr v10, v4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v14

    if-ne v10, v14, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    cmp-long v16, v14, v7

    if-nez v16, :cond_6

    const/4 v10, 0x0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->repollSavedStarGift()V

    move/from16 v26, v2

    move-object v2, v6

    move/from16 v37, v9

    const/16 v28, 0x0

    const/16 v30, 0x0

    goto/16 :goto_29

    :cond_7
    return-object v0

    :cond_8
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v10

    if-eqz v9, :cond_9

    const/4 v10, 0x0

    :cond_9
    iget-object v11, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v15, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v15, :cond_a

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-boolean v15, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->converted:Z

    iget-boolean v6, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved:Z

    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->refunded:Z

    iget-boolean v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->name_hidden:Z

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-boolean v4, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->can_upgrade:Z

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->convert_stars:J

    move/from16 v20, v2

    iget-wide v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_stars:J

    move-wide/from16 v21, v1

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgraded:Z

    move-object/from16 v23, v1

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v24, v7

    move-wide/from16 v46, v21

    move/from16 v21, v2

    move-object/from16 v2, v23

    move-wide/from16 v22, v46

    move/from16 v48, v4

    move v4, v3

    move-object v3, v5

    move/from16 v5, v48

    goto :goto_4

    :cond_a
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    iget-boolean v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->saved:Z

    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->refunded:Z

    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move v6, v1

    move/from16 v20, v2

    move-object v1, v4

    move-wide/from16 v24, v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x1

    const-wide/16 v22, 0x0

    :goto_4
    iget-wide v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v11, :cond_b

    invoke-static {v11}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v28

    const-wide/16 v18, 0x0

    cmp-long v2, v28, v18

    if-gez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    :goto_5
    iget-object v8, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    move/from16 v28, v4

    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setTransferAvailable(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    move/from16 v29, v14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v14

    invoke-static {v8, v14}, Lorg/telegram/ui/Stars/StarGiftSheet;->isWorn(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z

    move-result v8

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getLink()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v30, v11

    const/4 v11, 0x0

    if-eqz v14, :cond_c

    const/4 v14, 0x1

    goto :goto_6

    :cond_c
    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v4, v3, v11, v8, v14}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZ)V

    const-string v4, " "

    const-string v8, ""

    if-eqz v9, :cond_11

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    sget v11, Lorg/telegram/messenger/R$string;->Gift2TitleSaved:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->title:Ljava/lang/String;

    if-eqz v20, :cond_d

    move/from16 v37, v9

    const/16 v34, 0x0

    goto :goto_a

    :cond_d
    if-eqz v5, :cond_e

    sget v14, Lorg/telegram/messenger/R$string;->Gift2SelfInfoUpgrade:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v14

    move/from16 v37, v9

    move-object/from16 v34, v14

    goto :goto_a

    :cond_e
    const-wide/16 v18, 0x0

    cmp-long v14, v12, v18

    if-lez v14, :cond_10

    if-eqz v15, :cond_f

    const-string v14, "Gift2SelfInfoConverted"

    :goto_7
    move/from16 v37, v9

    goto :goto_8

    :cond_f
    const-string v14, "Gift2SelfInfoConvert"

    goto :goto_7

    :goto_8
    long-to-int v9, v12

    invoke-static {v14, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :goto_9
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    move-object/from16 v34, v9

    goto :goto_a

    :cond_10
    move/from16 v37, v9

    sget v9, Lorg/telegram/messenger/R$string;->Gift2SelfInfo:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :goto_a
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v9, v9, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stars/StarGiftSheet;->releasedByText(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/CharSequence;

    move-result-object v36

    const/16 v35, 0x0

    const/16 v32, 0x0

    move-object/from16 v31, v7

    move-object/from16 v33, v11

    :goto_b
    invoke-virtual/range {v31 .. v36}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setText(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    move-object/from16 v33, v8

    goto/16 :goto_1c

    :cond_11
    move/from16 v37, v9

    if-eqz v2, :cond_12

    iget-boolean v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    if-nez v9, :cond_12

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    sget v9, Lorg/telegram/messenger/R$string;->Gift2TitleProfile:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v33

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v9, v9, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stars/StarGiftSheet;->releasedByText(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/CharSequence;

    move-result-object v36

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v32, 0x0

    move-object/from16 v31, v7

    goto :goto_b

    :cond_12
    if-nez v10, :cond_13

    if-eqz v5, :cond_17

    :cond_13
    const-wide/16 v18, 0x0

    cmp-long v9, v22, v18

    if-lez v9, :cond_17

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    if-eqz v10, :cond_14

    sget v11, Lorg/telegram/messenger/R$string;->Gift2TitleSent:I

    goto :goto_c

    :cond_14
    sget v11, Lorg/telegram/messenger/R$string;->Gift2TitleReceived:I

    :goto_c
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->title:Ljava/lang/String;

    if-eqz v20, :cond_15

    goto :goto_f

    :cond_15
    if-nez v10, :cond_16

    sget v7, Lorg/telegram/messenger/R$string;->Gift2InfoInFreeUpgrade:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v41, v7

    move-object/from16 v33, v8

    move-object/from16 v38, v9

    move-object/from16 v40, v11

    goto/16 :goto_1b

    :cond_16
    sget v14, Lorg/telegram/messenger/R$string;->Gift2InfoFreeUpgrade:I

    move-object/from16 v31, v9

    move-object/from16 v32, v11

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v11, v9

    invoke-static {v14, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v41, v7

    move-object/from16 v33, v8

    :goto_d
    move-object/from16 v38, v31

    move-object/from16 v40, v32

    goto/16 :goto_1b

    :cond_17
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    if-eqz v10, :cond_18

    sget v11, Lorg/telegram/messenger/R$string;->Gift2TitleSent:I

    goto :goto_e

    :cond_18
    sget v11, Lorg/telegram/messenger/R$string;->Gift2TitleReceived:I

    :goto_e
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->title:Ljava/lang/String;

    if-eqz v20, :cond_19

    :goto_f
    move-object/from16 v33, v8

    move-object/from16 v38, v9

    move-object/from16 v40, v11

    const/16 v41, 0x0

    goto/16 :goto_1b

    :cond_19
    if-nez v1, :cond_1a

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->canSomeoneConvert()Z

    move-result v14

    if-nez v14, :cond_1b

    :cond_1a
    move-object/from16 v33, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v11

    goto/16 :goto_13

    :cond_1b
    if-eqz v10, :cond_1f

    if-eqz v5, :cond_1c

    const-wide/16 v18, 0x0

    cmp-long v14, v22, v18

    if-lez v14, :cond_1c

    sget v14, Lorg/telegram/messenger/R$string;->Gift2Info2OutUpgrade:I

    move-object/from16 v31, v9

    move-object/from16 v32, v11

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v7, v11, v17

    invoke-static {v14, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_10
    move-object/from16 v33, v8

    goto/16 :goto_17

    :cond_1c
    move-object/from16 v31, v9

    move-object/from16 v32, v11

    const/4 v9, 0x1

    const/16 v17, 0x0

    if-eqz v6, :cond_1d

    if-nez v15, :cond_1d

    sget v11, Lorg/telegram/messenger/R$string;->Gift2InfoOutPinned:I

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v7, v14, v17

    invoke-static {v11, v14}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_10

    :cond_1d
    if-eqz v15, :cond_1e

    const-string v9, "Gift2InfoOutConverted"

    goto :goto_11

    :cond_1e
    const-string v9, "Gift2InfoOut"

    :goto_11
    long-to-int v11, v12

    move-object/from16 v33, v8

    const/4 v14, 0x1

    new-array v8, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v8, v14

    invoke-static {v9, v11, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_17

    :cond_1f
    move-object/from16 v33, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v11

    if-eqz v15, :cond_21

    if-eqz v2, :cond_20

    const-string v7, "Gift2InfoChannelConverted"

    goto :goto_12

    :cond_20
    const-string v7, "Gift2InfoConverted"

    goto :goto_12

    :cond_21
    if-eqz v2, :cond_22

    const-string v7, "Gift2Info3Channel"

    goto :goto_12

    :cond_22
    const-string v7, "Gift2Info3"

    :goto_12
    long-to-int v8, v12

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_17

    :goto_13
    if-eqz v10, :cond_24

    if-eqz v5, :cond_23

    const-wide/16 v8, 0x0

    cmp-long v11, v22, v8

    if-lez v11, :cond_23

    sget v8, Lorg/telegram/messenger/R$string;->Gift2Info2OutUpgrade:I

    :goto_14
    const/4 v9, 0x1

    goto :goto_15

    :cond_23
    sget v8, Lorg/telegram/messenger/R$string;->Gift2Info2OutExpired:I

    goto :goto_14

    :goto_15
    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v11, v9

    invoke-static {v8, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_17

    :cond_24
    if-nez v6, :cond_26

    if-eqz v2, :cond_25

    sget v7, Lorg/telegram/messenger/R$string;->Gift2Info2ChannelKeep:I

    goto :goto_16

    :cond_25
    sget v7, Lorg/telegram/messenger/R$string;->Gift2Info2BotKeep:I

    goto :goto_16

    :cond_26
    if-eqz v2, :cond_27

    sget v7, Lorg/telegram/messenger/R$string;->Gift2Info2ChannelRemove:I

    goto :goto_16

    :cond_27
    sget v7, Lorg/telegram/messenger/R$string;->Gift2Info2BotRemove:I

    :goto_16
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_17
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    if-nez v1, :cond_28

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->canConvert()Z

    move-result v8

    if-nez v8, :cond_29

    :cond_28
    const/4 v9, 0x1

    goto :goto_19

    :cond_29
    sget v8, Lorg/telegram/messenger/R$string;->Gift2More:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    const/16 v11, 0xa0

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda26;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_18
    const/4 v11, 0x3

    goto :goto_1a

    :goto_19
    move-object/from16 v8, v33

    goto :goto_18

    :goto_1a
    new-array v14, v11, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    aput-object v7, v14, v11

    aput-object v4, v14, v9

    const/4 v7, 0x2

    aput-object v8, v14, v7

    invoke-static {v14}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v41, v7

    goto/16 :goto_d

    :goto_1b
    invoke-direct {v0, v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->releasedByText(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/CharSequence;

    move-result-object v43

    const/16 v42, 0x0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v43}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setText(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_1c
    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/TableView;->clear()V

    if-eqz v26, :cond_2a

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    goto :goto_1d

    :cond_2a
    if-eqz v10, :cond_2b

    move-wide/from16 v7, v24

    goto :goto_1d

    :cond_2b
    iget-wide v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    :goto_1d
    if-eqz v30, :cond_2c

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v30

    move v9, v15

    move-wide/from16 v14, v30

    goto :goto_1e

    :cond_2c
    move v9, v15

    if-eqz v10, :cond_2d

    iget-wide v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    goto :goto_1e

    :cond_2d
    move-wide/from16 v14, v24

    :goto_1e
    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    move/from16 v26, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v11, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    cmp-long v11, v7, v24

    if-nez v11, :cond_2f

    if-eqz v2, :cond_2e

    goto :goto_1f

    :cond_2e
    move/from16 v31, v5

    move/from16 v30, v9

    goto :goto_22

    :cond_2f
    :goto_1f
    iget-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v30, Lorg/telegram/messenger/R$string;->Gift2From:I

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v39

    move/from16 v30, v9

    iget v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    move/from16 v31, v5

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda27;

    invoke-direct {v5, v0, v7, v8}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;J)V

    cmp-long v32, v7, v24

    if-eqz v32, :cond_30

    const-wide/32 v34, 0x28ae10

    cmp-long v32, v7, v34

    if-eqz v32, :cond_30

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-nez v6, :cond_30

    if-nez v1, :cond_30

    if-nez v2, :cond_30

    sget v1, Lorg/telegram/messenger/R$string;->Gift2ButtonSendGift:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v44, v1

    goto :goto_20

    :cond_30
    const/16 v44, 0x0

    :goto_20
    if-eqz v2, :cond_31

    const/16 v45, 0x0

    goto :goto_21

    :cond_31
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0, v7, v8}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;J)V

    move-object/from16 v45, v1

    :goto_21
    move-object/from16 v38, v11

    move/from16 v40, v9

    move-wide/from16 v41, v7

    move-object/from16 v43, v5

    invoke-virtual/range {v38 .. v45}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    :goto_22
    cmp-long v1, v14, v24

    if-nez v1, :cond_32

    if-eqz v2, :cond_34

    :cond_32
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2To:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v39

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda29;

    invoke-direct {v6, v0, v14, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;J)V

    if-eqz v2, :cond_33

    const/16 v45, 0x0

    goto :goto_23

    :cond_33
    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda30;

    invoke-direct {v2, v0, v14, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;J)V

    move-object/from16 v45, v2

    :goto_23
    const/16 v44, 0x0

    move-object/from16 v38, v1

    move/from16 v40, v5

    move-wide/from16 v41, v14

    move-object/from16 v43, v6

    invoke-virtual/range {v38 .. v45}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_34
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v2, Lorg/telegram/messenger/R$string;->StarsTransactionDate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v5, v29

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Components/TableView;->addRowDateTime(Ljava/lang/CharSequence;I)Landroid/widget/TableRow;

    iget-wide v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_36

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v2, Lorg/telegram/messenger/R$string;->Gift2Value:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2b50\ufe0f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    add-long v6, v6, v22

    const/16 v8, 0x2c

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->canConvert()Z

    move-result v6

    if-eqz v6, :cond_35

    if-nez v20, :cond_35

    long-to-int v6, v12

    const-string v7, "Gift2ButtonSell"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda18;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/ButtonSpan;->make(Ljava/lang/CharSequence;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_24
    const/4 v7, 0x3

    goto :goto_25

    :cond_35
    move-object/from16 v6, v33

    goto :goto_24

    :goto_25
    new-array v7, v7, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v4, v7, v5

    const/4 v5, 0x2

    aput-object v6, v7, v5

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v5, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    :cond_36
    iget-boolean v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v1, :cond_37

    if-nez v20, :cond_37

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2, v3, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->addAvailabilityRow(Lorg/telegram/ui/Components/TableView;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_37
    const/16 v1, 0x21

    if-nez v10, :cond_3a

    if-nez v20, :cond_3a

    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObjectRepolled:Z

    if-nez v2, :cond_38

    if-nez v21, :cond_38

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v4, Lorg/telegram/messenger/R$string;->Gift2Status:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v33

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/TableView$TableRowContent;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string v6, "x "

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/telegram/ui/Components/LoadingSpan;

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v2, v7, v4, v8}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    const v9, 0x3e570a3d    # 0.21f

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    const v9, 0x3da3d70a    # 0.08f

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lorg/telegram/ui/Components/LoadingSpan;->setColors(II)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->repollMessage()V

    goto :goto_26

    :cond_38
    if-eqz v31, :cond_39

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$string;->Gift2StatusNonUnique:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->Gift2StatusUpgrade:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda19;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/ButtonSpan;->make(Ljava/lang/CharSequence;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2Status:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_26

    :cond_39
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v4, Lorg/telegram/messenger/R$string;->Gift2Status:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->Gift2StatusNonUnique:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    :cond_3a
    :goto_26
    move-object/from16 v2, v27

    if-eqz v27, :cond_3b

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    if-nez v20, :cond_3b

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/TableView;->addFullRow(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    :cond_3b
    if-nez v10, :cond_3d

    if-eqz v31, :cond_3d

    const-wide/16 v4, 0x0

    cmp-long v6, v22, v4

    if-lez v6, :cond_3d

    if-nez v20, :cond_3d

    new-instance v4, Landroid/text/SpannableStringBuilder;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2UpgradeButtonFree:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v5, " ^"

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeIconSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    if-nez v5, :cond_3c

    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$UpgradeIcon;

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/telegram/ui/Stars/StarGiftSheet$UpgradeIcon;-><init>(Landroid/view/View;I)V

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeIconSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    :cond_3c
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeIconSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v4, v5, v6, v8, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-boolean v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    xor-int/2addr v5, v7

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda31;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    :goto_27
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_28

    :cond_3d
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v4, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda32;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    goto :goto_27

    :goto_28
    move/from16 v11, v20

    :goto_29
    if-nez v3, :cond_3e

    const/4 v1, 0x0

    goto :goto_2a

    :cond_3e
    iget-object v1, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_address:Ljava/lang/String;

    :goto_2a
    if-nez v3, :cond_3f

    const/4 v6, 0x0

    goto :goto_2b

    :cond_3f
    iget-object v6, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->gift_address:Ljava/lang/String;

    :goto_2b
    const/16 v4, 0x8

    if-eqz v11, :cond_40

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2Refunded:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    :goto_2c
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_30

    :cond_40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_44

    if-eqz v28, :cond_44

    if-nez v37, :cond_44

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz v10, :cond_42

    if-eqz v2, :cond_41

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    sget v2, Lorg/telegram/messenger/R$string;->Gift2OutSenderMessageHidden2:I

    goto :goto_2d

    :cond_41
    sget v2, Lorg/telegram/messenger/R$string;->Gift2OutSenderHidden2:I

    :goto_2d
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v9, v8

    invoke-static {v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    :cond_42
    if-eqz v2, :cond_43

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    sget v2, Lorg/telegram/messenger/R$string;->Gift2InSenderMessageHidden2:I

    goto :goto_2e

    :cond_43
    sget v2, Lorg/telegram/messenger/R$string;->Gift2InSenderHidden2:I

    :goto_2e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2f
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    goto :goto_2c

    :cond_44
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x3f28f5c3    # 0.66f

    const v5, 0x402aaaab

    if-nez v1, :cond_45

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2InBlockchain:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda33;

    invoke-direct {v4, v0, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V

    :goto_31
    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x1

    invoke-static {v3, v5, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34

    :cond_45
    if-nez v30, :cond_49

    if-nez v11, :cond_49

    if-eqz v3, :cond_49

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDialogId()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMine(IJ)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDialogId()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-ltz v1, :cond_47

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz v26, :cond_46

    sget v3, Lorg/telegram/messenger/R$string;->Gift2ProfileVisible3:I

    goto :goto_32

    :cond_46
    sget v3, Lorg/telegram/messenger/R$string;->Gift2ProfileInvisible3:I

    :goto_32
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda23;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    goto :goto_31

    :cond_47
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz v26, :cond_48

    sget v3, Lorg/telegram/messenger/R$string;->Gift2ChannelProfileVisible3:I

    goto :goto_33

    :cond_48
    sget v3, Lorg/telegram/messenger/R$string;->Gift2ChannelProfileInvisible3:I

    :goto_33
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda23;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    goto :goto_31

    :cond_49
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_34
    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    if-eqz v1, :cond_4a

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZ)V

    iget-object v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    iput-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    :cond_4a
    iget-object v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->updateViewPager()V

    :cond_4b
    :goto_35
    return-object v0
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;
    .locals 40

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMine(IJ)Z

    move-result v6

    iput-boolean v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-object/from16 v6, p2

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->giftsList:Lorg/telegram/ui/Stars/StarsController$IGiftsList;

    const/4 v6, 0x0

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-wide v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget v11, v11, Lorg/telegram/messenger/MessagesController;->stargiftsConvertPeriodMax:I

    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v12

    iget v13, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    sub-int/2addr v12, v13

    sub-int/2addr v11, v12

    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iget v14, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/2addr v14, v3

    if-eqz v14, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v8, 0x28ae10

    :goto_0
    iget-wide v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    const-wide/16 v24, 0x0

    cmp-long v16, v2, v24

    if-gez v16, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    :goto_1
    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-boolean v14, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->refunded:Z

    iget-object v15, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v5, v15, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v5, :cond_4

    iget-object v2, v15, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_address:Ljava/lang/String;

    iget-object v3, v15, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->gift_address:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setTransferAvailable(Z)V

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget v7, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v0, v5, v7, v14}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;ZZ)V

    move-object/from16 v26, v6

    move-object v6, v2

    goto/16 :goto_1d

    :cond_4
    iget-boolean v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    if-eqz v5, :cond_5

    cmp-long v5, v12, v8

    if-nez v5, :cond_5

    cmp-long v5, v2, v24

    if-ltz v5, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setTransferAvailable(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v4

    invoke-static {v15, v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->isWorn(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z

    move-result v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getLink()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v6

    const/4 v6, 0x0

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v3, v5, v6, v4, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZ)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableView;->clear()V

    const-string v3, " "

    const-string v4, ""

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2TitleSaved:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->title:Ljava/lang/String;

    if-eqz v14, :cond_7

    goto/16 :goto_b

    :cond_7
    iget-boolean v6, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    if-eqz v6, :cond_8

    sget v6, Lorg/telegram/messenger/R$string;->Gift2SelfInfoUpgrade:I

    :goto_5
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    :goto_7
    move-object/from16 v30, v6

    goto/16 :goto_c

    :cond_8
    iget-wide v6, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    cmp-long v11, v6, v24

    if-lez v11, :cond_9

    long-to-int v7, v6

    const-string v6, "Gift2SelfInfoConvert"

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_9
    sget v6, Lorg/telegram/messenger/R$string;->Gift2SelfInfo:I

    goto :goto_5

    :cond_a
    if-eqz v16, :cond_b

    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    if-nez v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2TitleProfile:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->title:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->released_by:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stars/StarGiftSheet;->releasedByText(Lorg/telegram/tgnet/TLRPC$Peer;)Ljava/lang/CharSequence;

    move-result-object v32

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v28, 0x0

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    :goto_8
    invoke-virtual/range {v27 .. v32}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setText(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    move-object/from16 v27, v4

    move v11, v14

    goto/16 :goto_19

    :cond_b
    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    if-eqz v2, :cond_c

    iget-boolean v5, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    if-eqz v5, :cond_10

    :cond_c
    iget-wide v5, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    cmp-long v15, v5, v24

    if-lez v15, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    if-eqz v2, :cond_d

    sget v2, Lorg/telegram/messenger/R$string;->Gift2TitleReceived:I

    goto :goto_9

    :cond_d
    sget v2, Lorg/telegram/messenger/R$string;->Gift2TitleProfile:I

    :goto_9
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->title:Ljava/lang/String;

    if-eqz v14, :cond_e

    goto :goto_a

    :cond_e
    iget-boolean v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    if-eqz v6, :cond_f

    sget v6, Lorg/telegram/messenger/R$string;->Gift2InfoInFreeUpgrade:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v29, v2

    move-object/from16 v27, v5

    goto :goto_7

    :cond_f
    :goto_a
    move-object/from16 v39, v5

    move-object v5, v2

    move-object/from16 v2, v39

    :goto_b
    move-object/from16 v27, v2

    move-object/from16 v29, v5

    const/16 v30, 0x0

    :goto_c
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->releasedByText(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/CharSequence;

    move-result-object v32

    const/16 v31, 0x0

    const/16 v28, 0x0

    goto :goto_8

    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    cmp-long v6, v12, v8

    if-nez v6, :cond_11

    if-nez v16, :cond_11

    sget v2, Lorg/telegram/messenger/R$string;->Gift2TitleSaved:I

    goto :goto_d

    :cond_11
    if-eqz v2, :cond_12

    sget v2, Lorg/telegram/messenger/R$string;->Gift2TitleReceived:I

    goto :goto_d

    :cond_12
    sget v2, Lorg/telegram/messenger/R$string;->Gift2TitleProfile:I

    :goto_d
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->title:Ljava/lang/String;

    if-eqz v14, :cond_13

    move-object/from16 v27, v4

    move v11, v14

    const/16 v36, 0x0

    goto/16 :goto_18

    :cond_13
    if-nez v10, :cond_14

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->canConvert()Z

    move-result v6

    if-nez v6, :cond_15

    :cond_14
    move v11, v14

    goto :goto_10

    :cond_15
    iget-boolean v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    if-eqz v6, :cond_19

    if-gtz v11, :cond_17

    if-eqz v16, :cond_16

    const-string v6, "Gift2Info2ChannelExpired"

    :goto_e
    move v11, v14

    goto :goto_f

    :cond_16
    const-string v6, "Gift2Info2Expired"

    goto :goto_e

    :cond_17
    if-eqz v16, :cond_18

    const-string v6, "Gift2Info3Channel"

    goto :goto_e

    :cond_18
    const-string v6, "Gift2Info3"

    goto :goto_e

    :goto_f
    iget-wide v14, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    long-to-int v7, v14

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_14

    :cond_19
    move v11, v14

    iget-wide v14, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    long-to-int v6, v14

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v15, v14

    const-string v7, "Gift2Info2Out"

    invoke-static {v7, v6, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_14

    :goto_10
    iget-boolean v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    if-eqz v6, :cond_1d

    iget-boolean v6, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v6, :cond_1b

    if-eqz v16, :cond_1a

    sget v6, Lorg/telegram/messenger/R$string;->Gift2Info2ChannelKeep:I

    goto :goto_11

    :cond_1a
    sget v6, Lorg/telegram/messenger/R$string;->Gift2Info2BotKeep:I

    :goto_11
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_14

    :cond_1b
    if-eqz v16, :cond_1c

    sget v6, Lorg/telegram/messenger/R$string;->Gift2Info2ChannelRemove:I

    goto :goto_11

    :cond_1c
    sget v6, Lorg/telegram/messenger/R$string;->Gift2Info2BotRemove:I

    goto :goto_11

    :cond_1d
    iget-boolean v6, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    if-eqz v6, :cond_1e

    iget-wide v14, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    cmp-long v6, v14, v24

    if-lez v6, :cond_1e

    sget v6, Lorg/telegram/messenger/R$string;->Gift2Info2OutUpgrade:I

    :goto_12
    const/4 v14, 0x1

    goto :goto_13

    :cond_1e
    sget v6, Lorg/telegram/messenger/R$string;->Gift2Info2OutExpired:I

    goto :goto_12

    :goto_13
    new-array v15, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v15, v14

    invoke-static {v6, v15}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_14
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    if-nez v10, :cond_1f

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->canConvert()Z

    move-result v7

    if-nez v7, :cond_20

    :cond_1f
    const/4 v14, 0x1

    goto :goto_16

    :cond_20
    sget v7, Lorg/telegram/messenger/R$string;->Gift2More:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x20

    const/16 v15, 0xa0

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda15;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-static {v7, v14}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    const/4 v14, 0x1

    invoke-static {v7, v14}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v27, v4

    :goto_15
    const/4 v15, 0x3

    goto :goto_17

    :goto_16
    move-object v7, v4

    move-object/from16 v27, v7

    goto :goto_15

    :goto_17
    new-array v4, v15, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    aput-object v6, v4, v15

    aput-object v3, v4, v14

    const/4 v6, 0x2

    aput-object v7, v4, v6

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v36, v4

    :goto_18
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->releasedByText(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/CharSequence;

    move-result-object v38

    const/16 v37, 0x0

    const/16 v34, 0x0

    move-object/from16 v33, v5

    move-object/from16 v35, v2

    invoke-virtual/range {v33 .. v38}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setText(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_19
    cmp-long v2, v12, v8

    if-nez v2, :cond_21

    if-eqz v16, :cond_23

    :cond_21
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2From:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v17

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda16;

    invoke-direct {v6, v0, v8, v9}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;J)V

    cmp-long v7, v8, v12

    if-eqz v7, :cond_22

    const-wide/32 v12, 0x28ae10

    cmp-long v7, v8, v12

    if-eqz v7, :cond_22

    if-nez v10, :cond_22

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_22

    if-nez v16, :cond_22

    sget v2, Lorg/telegram/messenger/R$string;->Gift2ButtonSendGift:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_1a

    :cond_22
    const/16 v22, 0x0

    :goto_1a
    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0, v8, v9}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;J)V

    move-object/from16 v16, v4

    move/from16 v18, v5

    move-wide/from16 v19, v8

    move-object/from16 v21, v6

    move-object/from16 v23, v2

    invoke-virtual/range {v16 .. v23}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_23
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v4, Lorg/telegram/messenger/R$string;->StarsTransactionDate:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/LocaleController;->getFormatterGiveawayCard()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    iget v8, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    int-to-long v8, v8

    const-wide/16 v12, 0x3e8

    mul-long v8, v8, v12

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    iget v9, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->date:I

    int-to-long v9, v9

    mul-long v9, v9, v12

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v9, v8

    const/4 v6, 0x1

    aput-object v7, v9, v6

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v4, Lorg/telegram/messenger/R$string;->Gift2Value:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2b50\ufe0f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v6, v6, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    iget-wide v8, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    add-long/2addr v6, v8

    const/16 v8, 0x2c

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->canConvert()Z

    move-result v6

    if-eqz v6, :cond_24

    if-nez v11, :cond_24

    iget-wide v6, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    long-to-int v7, v6

    const-string v6, "Gift2ButtonSell"

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda18;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/ButtonSpan;->make(Ljava/lang/CharSequence;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v27, v6

    :cond_24
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v3, v6, v5

    const/4 v3, 0x2

    aput-object v27, v6, v3

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-boolean v3, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v3, :cond_25

    if-nez v11, :cond_25

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4, v2, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->addAvailabilityRow(Lorg/telegram/ui/Components/TableView;ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_25
    if-nez v11, :cond_26

    iget-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    if-eqz v2, :cond_26

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2Status:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->Gift2StatusNonUnique:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->Gift2StatusUpgrade:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda19;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_26
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v2, :cond_27

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    if-nez v11, :cond_27

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/TableView;->addFullRow(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    :cond_27
    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    if-eqz v2, :cond_29

    iget-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->can_upgrade:Z

    if-eqz v2, :cond_29

    iget-wide v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->upgrade_stars:J

    cmp-long v4, v2, v24

    if-lez v4, :cond_29

    new-instance v2, Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2UpgradeButtonFree:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, " ^"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeIconSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    if-nez v3, :cond_28

    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$UpgradeIcon;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$UpgradeIcon;-><init>(Landroid/view/View;I)V

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeIconSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeIconSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-boolean v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda20;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    :goto_1b
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1c

    :cond_29
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda21;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    goto :goto_1b

    :goto_1c
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_1d
    iget-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->refunded:Z

    const/16 v4, 0x8

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2Refunded:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    :goto_1e
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_20

    :cond_2a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    if-eqz v2, :cond_2c

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v2, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift;

    if-eqz v2, :cond_2c

    iget-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->name_hidden:Z

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz v26, :cond_2b

    move-object/from16 v5, v26

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    sget v5, Lorg/telegram/messenger/R$string;->Gift2InSenderMessageHidden2:I

    goto :goto_1f

    :cond_2b
    sget v5, Lorg/telegram/messenger/R$string;->Gift2InSenderHidden2:I

    :goto_1f
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    goto :goto_1e

    :cond_2c
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->beforeTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_20
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v5, 0x3f28f5c3    # 0.66f

    const v6, 0x402aaaab

    if-nez v2, :cond_2d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->Gift2InBlockchain:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda22;

    invoke-direct {v4, v0, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-static {v2, v5, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_21
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25

    :cond_2d
    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->myProfile:Z

    if-eqz v2, :cond_31

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-wide v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    invoke-static {v2, v7, v8}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMine(IJ)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-wide v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->dialogId:J

    cmp-long v4, v2, v24

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-ltz v4, :cond_2f

    if-nez v1, :cond_2e

    sget v1, Lorg/telegram/messenger/R$string;->Gift2ProfileVisible3:I

    goto :goto_22

    :cond_2e
    sget v1, Lorg/telegram/messenger/R$string;->Gift2ProfileInvisible3:I

    :goto_22
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda23;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    :goto_23
    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-static {v1, v5, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    :cond_2f
    if-nez v1, :cond_30

    sget v1, Lorg/telegram/messenger/R$string;->Gift2ChannelProfileVisible3:I

    goto :goto_24

    :cond_30
    sget v1, Lorg/telegram/messenger/R$string;->Gift2ChannelProfileInvisible3:I

    :goto_24
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda23;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    goto :goto_23

    :cond_31
    const/4 v2, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->afterTableTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_25
    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    if-eqz v1, :cond_32

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    iput-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    :cond_32
    iget-object v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->updateViewPager()V

    return-object v0
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;ZZ)V
    .locals 21

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v5, v5

    const/16 v7, 0x2c

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->title:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5, v8, v9}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/ui/Stars/StarGiftSheet;->isWorn(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z

    move-result v6

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getLink()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4, v1, v5, v6, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZ)V

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget-object v15, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->released_by:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 v10, 0x0

    if-nez v4, :cond_1

    iget v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    const-string v5, "Gift2CollectionNumber"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_1

    :cond_1
    move-object/from16 v16, v10

    :goto_1
    iget v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->released_by:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/Stars/StarGiftSheet;->releasedByUniqueText(ILorg/telegram/tgnet/TLRPC$Peer;)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v13 .. v18}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setText(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->ownerTextView:Landroid/view/View;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/TableView;->clear()V

    const-wide/16 v13, 0x0

    if-nez p3, :cond_2

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_address:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2Owner:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_address:Ljava/lang/String;

    new-instance v7, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda48;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Components/TableView;->addWalletAddressRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    :cond_2
    :goto_2
    move-object v15, v10

    goto :goto_3

    :cond_3
    cmp-long v4, v8, v13

    if-nez v4, :cond_4

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_name:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2Owner:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_2

    :cond_4
    cmp-long v4, v8, v13

    if-eqz v4, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v4, Lorg/telegram/messenger/R$string;->Gift2Owner:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda49;

    invoke-direct {v4, v0, v8, v9}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;J)V

    move-object v15, v10

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/TableView;->addRowUserWithEmojiStatus(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/TableView$TableRowContent;

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->ownerTextView:Landroid/view/View;

    :goto_3
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {v4, v5}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->addAttributeRow(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)V

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v4, v5}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->addAttributeRow(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)V

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v4, v5}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->addAttributeRow(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;)V

    const/16 v4, 0x21

    if-nez p3, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    const-string v6, "Gift2QuantityIssued2"

    const-string v7, "Gift2QuantityIssued1"

    if-eqz v5, :cond_6

    iget-boolean v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObjectRepolled:Z

    if-nez v5, :cond_5

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2Quantity:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/TableView$TableRowContent;

    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Landroid/text/SpannableStringBuilder;

    const-string v7, "x "

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Lorg/telegram/ui/Components/LoadingSpan;

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v7, v5, v8, v11, v9}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    const v10, 0x3e570a3d    # 0.21f

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    const v10, 0x3da3d70a    # 0.08f

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    invoke-virtual {v7, v9, v8}, Lorg/telegram/ui/Components/LoadingSpan;->setColors(II)V

    invoke-virtual {v6, v7, v11, v12, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->repollMessage()V

    goto :goto_5

    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v8, Lorg/telegram/messenger/R$string;->Gift2Quantity:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    iget v10, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_issued:I

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/TableRow;

    goto :goto_5

    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v8, Lorg/telegram/messenger/R$string;->Gift2Quantity:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :cond_7
    :goto_5
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;

    invoke-static {v5, v6}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;

    if-eqz v5, :cond_f

    iget v6, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->flags:I

    and-int/2addr v6, v12

    if-eqz v6, :cond_8

    iget-object v6, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->sender_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    new-instance v10, Landroid/text/SpannableString;

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Lorg/telegram/ui/Stars/StarGiftSheet$9;

    invoke-direct {v8, v0, v6, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$9;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;J)V

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v10, v8, v11, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :cond_8
    move-object v10, v15

    :goto_6
    iget-object v6, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->recipient_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    new-instance v8, Landroid/text/SpannableString;

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/telegram/ui/Stars/StarGiftSheet$10;

    invoke-direct {v9, v0, v6, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$10;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;J)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v8, v9, v11, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v4, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v4, :cond_9

    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v12}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v7, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v7, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-static/range {v15 .. v20}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-static {v6, v7, v11}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v4

    move-object v15, v4

    :cond_9
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    iget v6, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->date:I

    int-to-long v6, v6

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\\."

    const-string v7, "/"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->sender_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->recipient_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-ne v6, v5, :cond_b

    if-nez v15, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2AttributeOriginalDetailsSelf:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v11

    aput-object v4, v3, v12

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_7
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/TableView;->addFullRow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/TableView$TableRowFullContent;

    move-result-object v2

    goto :goto_9

    :cond_a
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2AttributeOriginalDetailsSelfComment:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v11

    aput-object v4, v2, v12

    aput-object v15, v2, v3

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_8
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/TableView;->addFullRow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/TableView$TableRowFullContent;

    move-result-object v2

    goto :goto_9

    :cond_b
    if-eqz v10, :cond_d

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    if-nez v15, :cond_c

    sget v6, Lorg/telegram/messenger/R$string;->Gift2AttributeOriginalDetails:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v11

    aput-object v8, v2, v12

    aput-object v4, v2, v3

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_8

    :cond_c
    sget v6, Lorg/telegram/messenger/R$string;->Gift2AttributeOriginalDetailsComment:I

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v10, v7, v11

    aput-object v8, v7, v12

    aput-object v4, v7, v3

    aput-object v15, v7, v2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_8

    :cond_d
    if-nez v15, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2AttributeOriginalDetailsNoSender:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v11

    aput-object v4, v3, v12

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_7

    :cond_e
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->tableView:Lorg/telegram/ui/Components/TableView;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2AttributeOriginalDetailsNoSenderComment:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v11

    aput-object v4, v2, v12

    aput-object v15, v2, v3

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_8

    :goto_9
    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/TableView$TableRowFullContent;->setFilled(Z)V

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v12, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    :cond_f
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMine(IJ)Z

    move-result v2

    if-nez v2, :cond_10

    iget-wide v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    cmp-long v3, v1, v13

    if-lez v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    long-to-int v2, v1

    const-string v1, "ResellGiftBuy"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    xor-int/2addr v2, v12

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda50;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    :goto_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    xor-int/2addr v3, v12

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda51;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    goto :goto_a

    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnBoughtGift(Lorg/telegram/messenger/Utilities$Callback2;)Lorg/telegram/ui/Stars/StarGiftSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->boughtGift:Lorg/telegram/messenger/Utilities$Callback2;

    return-object p0
.end method

.method public setOnGiftUpdatedListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stars/StarGiftSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->onGiftUpdatedListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setupWearPage()Lorg/telegram/ui/Stars/StarGiftSheet;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v6, v2

    const/16 v2, 0x2c

    invoke-static {v6, v7, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->wearTitle:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2WearTitle:I

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v2, v7, v0

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2WearStart:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, " l"

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    if-nez v5, :cond_1

    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mini_lock3:I

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v5, v2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda34;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setWearPreview(Lorg/telegram/tgnet/TLObject;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZ)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->onlyWearInfo:Z

    return-object p0
.end method

.method protected shouldDrawBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slug:Ljava/lang/String;

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slugStarGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    new-instance v1, Lorg/telegram/tgnet/tl/TL_stars$getUniqueStarGift;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stars$getUniqueStarGift;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->slug:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$getUniqueStarGift;->slug:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->savedStarGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    if-eqz v4, :cond_3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgraded:Z

    if-eqz v4, :cond_3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_msg_id:I

    if-eqz v4, :cond_2

    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_msg_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getInputStarGift()Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stars/StarsController;->getUserStarGift(Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :cond_3
    :goto_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public showHint(Ljava/lang/CharSequence;Landroid/view/View;Z)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintViewTextView:Landroid/view/View;

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    instance-of v3, p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawableX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawableWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v4, v3

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    move-object v3, p2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    goto :goto_0

    :cond_4
    instance-of v3, p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v3, :cond_a

    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_5

    return-void

    :cond_5
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v5, v4, Landroid/text/Spanned;

    if-nez v5, :cond_6

    return-void

    :cond_6
    check-cast v4, Landroid/text/Spanned;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Lorg/telegram/ui/Components/ButtonSpan;

    invoke-interface {v4, v2, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/ui/Components/ButtonSpan;

    if-eqz v5, :cond_a

    array-length v6, v5

    if-gtz v6, :cond_7

    goto/16 :goto_3

    :cond_7
    array-length v6, v5

    sub-int/2addr v6, v1

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    add-float/2addr v6, v3

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ButtonSpan;->getSize()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float v4, v6, v3

    :goto_1
    const/4 v3, 0x2

    new-array v5, v3, [I

    new-array v3, v3, [I

    invoke-virtual {p2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v6, v5, v2

    aget v7, v3, v2

    sub-int/2addr v6, v7

    aput v6, v5, v2

    aget v6, v5, v1

    aget v3, v3, v1

    sub-int/2addr v6, v3

    aput v6, v5, v1

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_8
    new-instance v3, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    xor-int/lit8 v6, p3, 0x1

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    aget p1, v5, v2

    int-to-float p1, p1

    add-float/2addr p1, v4

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr p1, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v6, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    aget p1, v5, v1

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr p1, v5

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    sub-float/2addr p1, v5

    if-eqz p3, :cond_9

    const/16 p3, 0x12

    goto :goto_2

    :cond_9
    const/4 p3, 0x0

    :goto_2
    int-to-float p3, p3

    const v0, 0x408a8f5c    # 4.33f

    add-float/2addr p3, v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationY(F)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v5, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr p1, p3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr p3, v0

    invoke-virtual {v3, p1, v2, p3, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda86;

    invoke-direct {p1, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda86;-><init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    const/4 p3, -0x1

    invoke-static {p3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, v3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintViewTextView:Landroid/view/View;

    :cond_a
    :goto_3
    return-void
.end method

.method public switchPage(IZ)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public switchPage(IZLjava/lang/Runnable;)V
    .locals 7

    .line 0
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->switchingPagesAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->switchingPagesAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->access$4800(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->container:Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->top()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->lastTop:Ljava/lang/Float;

    :cond_2
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    iget v4, v4, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to:I

    :goto_0
    const/4 v6, 0x0

    invoke-direct {v3, v4, p1, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;-><init>(IIF)V

    iput-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->adapter:Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v4}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getFinalHeight()I

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBottomView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->setHeights(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x8

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->infoLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->wearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    new-array p2, v0, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->switchingPagesAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->switchingPagesAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$7;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$7;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;ILjava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->switchingPagesAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->switchingPagesAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->switchingPagesAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->prepareSwitchPage(Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;)V

    goto :goto_7

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->setProgress(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->onSwitchedPage()V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->infoLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_8

    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->upgradeLayout:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_9

    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->wearLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_a

    goto :goto_6

    :cond_a
    const/16 v5, 0x8

    :goto_6
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_b

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_b
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_c
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public toggleWear()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->toggleWear(Z)V

    return-void
.end method

.method public toggleWear(Z)V
    .locals 8

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "statusgiftpage"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->isWorn(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getUniqueGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->isWorn(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDialogId()J

    move-result-wide v3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v0, v5}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatus(JLorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDialogId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v1, Lorg/telegram/messenger/R$string;->Gift2ActionWearNeededPremium:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda65;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletinDetail(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_2
    if-nez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda66;

    invoke-direct {v1, p0, p1, v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Lorg/telegram/messenger/MessagesController;J)V

    invoke-virtual {v0, v3, v4, v1}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;-><init>()V

    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iput-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;->collectible_id:J

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p1, v0}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatus(JLorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object p1, p1, v2

    if-eqz v1, :cond_4

    sget v0, Lorg/telegram/messenger/R$drawable;->filled_crown_off:I

    goto :goto_1

    :cond_4
    sget v0, Lorg/telegram/messenger/R$drawable;->filled_crown_on:I

    :goto_1
    if-eqz v1, :cond_5

    sget v3, Lorg/telegram/messenger/R$string;->Gift2ActionWearOff:I

    goto :goto_2

    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->Gift2ActionWear:I

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;->set(ILjava/lang/CharSequence;Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->onlyWearInfo:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_6
    new-instance p1, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda67;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->is(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1, v2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->switchPage(IZLjava/lang/Runnable;)V

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->firstSet:Z

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda68;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda68;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
