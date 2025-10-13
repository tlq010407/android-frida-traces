.class public Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static instance:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;


# instance fields
.field private final actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final allSelectedObjects:Ljava/util/HashMap;

.field private birthdays:Lorg/telegram/messenger/BirthdayController$BirthdayState;

.field private final bulletinContainer:Landroid/widget/FrameLayout;

.field private final buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

.field private final contacts:Ljava/util/List;

.field private final contactsLetters:Ljava/util/List;

.field private final contactsMap:Ljava/util/Map;

.field private customTitle:Ljava/lang/String;

.field private final excludeUserIds:Ljava/util/HashSet;

.field private final headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

.field private final hints:Ljava/util/List;

.field private includeTonOption:Z

.field private isHintSearchText:Z

.field private final items:Ljava/util/ArrayList;

.field private listPaddingTop:I

.field private final oldItems:Ljava/util/ArrayList;

.field private onShareCallLinkListener:Ljava/lang/Runnable;

.field private onUserSelectedListener:Lorg/telegram/messenger/Utilities$Callback;

.field private onUsersSelectedListener:Lorg/telegram/messenger/Utilities$Callback2;

.field private final paymentOptions:Ljava/util/List;

.field private query:Ljava/lang/String;

.field private recipientsBtnExtraSpace:F

.field private recipientsBtnSpaceSpan:Landroid/text/style/ReplacementSpan;

.field private final remoteSearchRunnable:Ljava/lang/Runnable;

.field private runningRequest:I

.field private final searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

.field private final searchResult:Ljava/util/ArrayList;

.field private final sectionCell:Landroid/view/View;

.field private final selectedIds:Ljava/util/HashSet;

.field private selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

.field private tonDays:I

.field private tonIcon:Landroid/graphics/drawable/Drawable;

.field public type:I

.field private userId:J

.field private videoCheckbox:Lorg/telegram/ui/Components/CheckBox2;


# direct methods
.method public static synthetic $r8$lambda$-5XBYufr0uXpSzhX_pYwoMOYcnI(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$-QCy2m6YxxkXfCM8aJZsv7DVncM(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0B1faahw0cZUwrRfI5NcL5hgzP0(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$new$13(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2JLkkUMBNB7wbbEXF-Bb_eqtjCM(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$search$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$51Bs8XOHV65Df_QHJP2u-6L_lLU(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$checkEditTextHint$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$5iOPav8QqlW3dUo__kOKycxclNo(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$search$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6u3zzV5y7Xj3mVXjqZxqcEdX5hg(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$didReceivedNotification$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$7YBKyQhQFMyPSKY5Nz40PFFZUkg(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8kKdpjh_0OuQcaYsmX2ybR91oXc(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$new$8(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$AXL3A7wY9Z74xlPbr_7EWYJwT40(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$didReceivedNotification$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$CToVPwadFfzznbM7YPDpuoM9lJk(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onSearch(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CVcUtRSXCoulwDJffJQ4I3J1ASs(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$new$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$ITcvWT8lL3QlYzl2CrKlh5boNpU(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;ILandroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$new$11(ILandroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KTm_RzEGg85h2YWkN-V_TbOqsVI(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$openOptions$21(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MKup2kYen_qxKi642wjpMY6OkQA(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$updateItems$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$MQ5NvXudouSTUAzmpqoNfwcqs4E(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$didReceivedNotification$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$OVnsOhLy9pDu8q_q2Mq-WFXG1og(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$new$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$Shasi9nP4fsIXQugTkdHsIww4dw(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$openBirthdaySetup$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$TlKhW1F_j3eSoHvRrHi7NOISMIQ(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$new$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$U3G6GjWZQIACj9w13bhGTU0uDyQ(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$openBirthdaySetup$26(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WdnFYVVN26cDj_ocEinpOtpz1pQ(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$openBirthdaySetup$27(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wq0r2owXv-paQcvAFuPQN9wy2vo(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$openOptions$22(Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XvVa3k7_RvHz84AThKMa6J-QQuM(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$openBirthdaySetup$28(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_JONRs_oWbd0iXglXbbIV4ay_Fw(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;JLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$decorate$15(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c-CklPGnT7INa8urQ_glO51JQvA(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;JLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$decorate$14(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c7IXqtqABYg68CS6vsYCnckBkrA(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$updateItems$19(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nX24rB1fQoJi2WvtWmgX35HxRhM(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$r6jeScuTZFCi78JMEDJP-VeSYbM(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$checkEditTextHint$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$zOcU9y4C0DOW2euf1Z5Rco_mUic(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->lambda$openOptions$20(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLorg/telegram/messenger/BirthdayController$BirthdayState;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move/from16 v12, p6

    move-object/from16 v13, p8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->oldItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->contacts:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->hints:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchResult:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->contactsMap:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->contactsLetters:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->listPaddingTop:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->paymentOptions:Ljava/util/List;

    const/4 v3, 0x0

    iput-boolean v3, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->isHintSearchText:Z

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$2;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->remoteSearchRunnable:Ljava/lang/Runnable;

    const/4 v4, -0x1

    iput v4, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->runningRequest:I

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->excludeUserIds:Ljava/util/HashSet;

    iput v9, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v5, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    iput-boolean v3, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->drawDoubleNavigationBar:Z

    iput v12, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    move-object/from16 v6, p5

    iput-object v6, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->birthdays:Lorg/telegram/messenger/BirthdayController$BirthdayState;

    iget-object v6, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->needChecks()Z

    move-result v14

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->setNeedChecks2(Z)V

    :cond_0
    iput-wide v10, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->userId:J

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    if-eqz v6, :cond_1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$4;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v7, v6, v13}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->setOnCloseClickListener(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->setCloseImageVisible(Z)V

    iget-object v6, v2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->createRecipientsBtnSpaceSpan()V

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v14, 0x0

    invoke-direct {v6, v7, v11, v13, v14}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$5;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v11, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v11, v7}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->setOnSearchTextChange(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v11

    const/4 v15, 0x2

    const/4 v4, 0x4

    const/4 v10, 0x1

    if-eqz v11, :cond_3

    if-eq v12, v10, :cond_3

    if-eq v12, v15, :cond_3

    const/4 v11, 0x3

    if-eq v12, v11, :cond_3

    if-ne v12, v4, :cond_2

    goto :goto_0

    :cond_2
    sget v11, Lorg/telegram/messenger/R$string;->GiftPremiumUsersSearchHint:I

    goto :goto_1

    :cond_3
    :goto_0
    sget v11, Lorg/telegram/messenger/R$string;->Search:I

    :goto_1
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->setHintText(Ljava/lang/String;Z)V

    new-instance v11, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$6;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v11, v7, v15}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$6;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Landroid/content/Context;)V

    iput-object v11, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->sectionCell:Landroid/view/View;

    iget-object v15, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40000000    # -2.0f

    const/16 v18, 0x37

    move/from16 v19, v4

    move/from16 v21, v4

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v15, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/16 v19, 0x0

    const/16 v21, 0x0

    move/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v4, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v15, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/16 v16, -0x1

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x37

    move/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v4, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v4, v11, v13, v14}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {v4, v10}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v4, v15, v14, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v5, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v5, 0x4

    if-ne v12, v5, :cond_4

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v14, 0x40800000    # 4.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v5, v11, v15, v10, v14}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    const/4 v11, 0x6

    invoke-static {v10, v11, v11}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v11, 0x18

    invoke-direct {v10, v8, v11, v13}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v10, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->videoCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v10, v11, v14, v15}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    iget-object v10, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->videoCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    iget-object v10, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->videoCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v10, v3, v3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object v10, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->videoCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    iget-object v10, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->videoCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x1a

    const/16 v19, 0x1a

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v8, Lorg/telegram/messenger/R$string;->ConferenceCallWithVideo:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v21, 0x9

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v8, 0x3ccccccd    # 0.025f

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-static {v5, v8, v10}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    new-instance v8, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v8, v7}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v24, 0x8

    const/16 v20, 0x11

    const/16 v21, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$7;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v7, v8, v13}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$7;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v8, 0x4

    if-ne v12, v8, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    new-instance v10, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v10, v7}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v10, 0x30

    const/16 v11, 0x57

    const/4 v14, -0x1

    invoke-static {v14, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x4

    if-ne v12, v5, :cond_6

    iget-object v5, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v10, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x57

    move/from16 v21, v10

    move/from16 v23, v10

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object v5, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v10, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v11, 0x42880000    # 68.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v24

    const/16 v20, 0x57

    const/16 v22, 0x0

    const/16 v18, -0x1

    const/high16 v19, 0x43960000    # 300.0f

    move/from16 v21, v10

    move/from16 v23, v10

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v7, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    iget-object v5, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->setData(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v4, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v5, 0x1

    if-eq v12, v5, :cond_7

    const/high16 v10, 0x42700000    # 60.0f

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$8;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$8;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v4, v7, v12, v13, v9}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    const/4 v0, 0x4

    if-ne v12, v0, :cond_8

    iget-object v0, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v4, v7, v12}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;I)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    :cond_8
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v4, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$9;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$9;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const-string v0, ""

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->spansContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$SpansContainer;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell$SpansContainer;->removeAllSpans(Z)V

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v1, v0, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->updateSpans(ZLjava/util/HashSet;Ljava/lang/Runnable;Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_9
    invoke-direct {v7, v3}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateActionButton(Z)V

    invoke-direct {v7, v3}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->initContacts(Z)V

    invoke-direct {v7, v3}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->initHints(Z)V

    const/4 v0, 0x1

    invoke-direct {v7, v3, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateList(ZZ)V

    const/4 v0, 0x2

    if-eqz v12, :cond_a

    if-ne v12, v0, :cond_b

    :cond_a
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    const/4 v2, 0x0

    invoke-static {v9, v2, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->loadGiftOptions(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/Utilities$Callback;)I

    :cond_b
    if-eqz v12, :cond_c

    if-ne v12, v0, :cond_d

    :cond_c
    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->loadStarGifts()V

    :cond_d
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->search(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->recipientsBtnExtraSpace:F

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->recipientsBtnExtraSpace:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->listPaddingTop:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->listPaddingTop:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->createRecipientsBtnSpaceSpan()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateActionButton(Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addSection(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/util/ArrayList;Z)I
    .locals 7

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    return v0

    :cond_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_1

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v4, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->userId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->excludeUserIds:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asUser(Lorg/telegram/tgnet/TLRPC$User;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->decorate(Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_6

    return v0

    :cond_6
    const/high16 p3, 0x42000000    # 32.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr v0, p3

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asTopSection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return v0
.end method

.method private cancelSearch()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->runningRequest:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->runningRequest:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->runningRequest:I

    :cond_0
    return-void
.end method

.method private checkEditTextHint()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0xa

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->isHintSearchText:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->isHintSearchText:Z

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->isHintSearchText:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->isHintSearchText:Z

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private clearSearchAfterSelect()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->query:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->remoteSearchRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateItems(ZZ)V

    :cond_0
    return-void
.end method

.method private createRecipientsBtnSpaceSpan()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->recipientsBtnSpaceSpan:Landroid/text/style/ReplacementSpan;

    return-void
.end method

.method private decorate(Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;J)V

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;J)V

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->withCall(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->openOptions(Lorg/telegram/tgnet/TLRPC$User;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->withOptions(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object p1

    return-object p1
.end method

.method public static handleIntent(Landroid/content/Intent;Lorg/telegram/messenger/browser/Browser$Progress;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "tg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "tg:premium_multigift"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "tg://premium_multigift"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open()Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "telegram.me"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "t.me"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "telegram.dog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, "/premium_multigift"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open()Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private initContacts(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->contacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->contacts:Ljava/util/List;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->contactsMap:Ljava/util/Map;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->contactsLetters:Ljava/util/List;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateItems(ZZ)V

    :cond_0
    return-void
.end method

.method private initHints(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->hints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->hints:Ljava/util/List;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateItems(ZZ)V

    :cond_0
    return-void
.end method

.method private isSearching()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$checkEditTextHint$2()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->setHintText(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$checkEditTextHint$3()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    sget v1, Lorg/telegram/messenger/R$string;->GiftPremiumUsersSearchHint:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->setHintText(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$decorate$14(JLandroid/view/View;)V
    .locals 0

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUsersSelectedListener:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz p1, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUsersSelectedListener:Lorg/telegram/messenger/Utilities$Callback2;

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$decorate$15(JLandroid/view/View;)V
    .locals 0

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUsersSelectedListener:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz p1, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUsersSelectedListener:Lorg/telegram/messenger/Utilities$Callback2;

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$23()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->initContacts(Z)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$24()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->initHints(Z)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$25()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateItems(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$10()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->checkEditTextHint()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateList(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$11(ILandroid/view/View;IFF)Z
    .locals 5

    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    const/4 p4, 0x0

    if-eqz p3, :cond_b

    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p3, :cond_0

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    :goto_0
    const/4 p2, 0x4

    const/4 p5, 0x1

    if-ne p1, p2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result p3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->getLimit()I

    move-result v3

    add-int/2addr v3, p5

    if-ne p3, v3, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->showMaximumUsersToast()V

    return p5

    :cond_4
    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 p1, 0x1

    :goto_5
    const/4 p2, 0x0

    if-eq v2, p1, :cond_a

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p1, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    const/high16 p4, 0x41400000    # 12.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    :goto_7
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    sget-object p4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 v0, 0x140

    invoke-virtual {p3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    if-nez p1, :cond_9

    new-instance p4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda20;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    goto :goto_8

    :cond_9
    move-object p4, p2

    :goto_8
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    xor-int/2addr p1, p5

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->setCallButtonsVisible(Z)V

    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->checkEditTextHint()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    new-instance p4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda21;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {p1, p5, p3, p4, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->updateSpans(ZLjava/util/HashSet;Ljava/lang/Runnable;Ljava/util/List;)V

    invoke-direct {p0, p5, p5}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateList(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->clearSearchAfterSelect()V

    return p5

    :cond_b
    return p4
.end method

.method private synthetic lambda$new$12()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->checkEditTextHint()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateList(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$13(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->paymentOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->paymentOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->next()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->videoCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->next()V

    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->checkEditTextHint()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateList(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$8(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/view/View;IFF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    instance-of v6, v3, Lorg/telegram/ui/Cells/TextCell;

    const/4 v7, 0x4

    if-eqz v6, :cond_2

    if-ne v1, v7, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onShareCallLinkListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->dismiss()V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->openBirthdaySetup()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v6, v3, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    if-eqz v6, :cond_1d

    check-cast v3, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    const/4 v8, 0x3

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    if-ne v1, v8, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUserSelectedListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v1, :cond_3

    const-wide/16 v2, -0x63

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    if-nez v6, :cond_5

    if-nez v3, :cond_5

    return-void

    :cond_5
    if-eqz v6, :cond_6

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_1

    :cond_6
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v9, v9

    :goto_1
    if-ne v1, v8, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUserSelectedListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v1, :cond_7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    if-ne v1, v5, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_9
    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-direct {v1, v3, v2, v6, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->attachedFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_a
    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$GiftStarsSheet;->show()V

    return-void

    :cond_b
    if-eqz v1, :cond_1a

    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    goto/16 :goto_a

    :cond_c
    const/4 v2, 0x0

    if-ne v1, v7, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUsersSelectedListener:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v1, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->videoCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    :cond_d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-interface {v1, v3, v4}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUsersSelectedListener:Lorg/telegram/messenger/Utilities$Callback2;

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->dismiss()V

    return-void

    :cond_f
    if-ne v1, v7, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_2

    :cond_10
    const/4 v3, 0x0

    goto :goto_3

    :cond_11
    :goto_2
    const/4 v3, 0x1

    :goto_3
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->getLimit()I

    move-result v8

    add-int/2addr v8, v5

    if-ne v6, v8, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->showMaximumUsersToast()V

    return-void

    :cond_13
    if-ne v1, v7, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_5

    :cond_14
    const/4 v1, 0x0

    goto :goto_6

    :cond_15
    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-eq v3, v1, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_16

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_16
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v1, :cond_17

    goto :goto_8

    :cond_17
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    :goto_8
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v6, 0x140

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-nez v1, :cond_18

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    goto :goto_9

    :cond_18
    move-object v4, v2

    :goto_9
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    xor-int/2addr v1, v5

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->setCallButtonsVisible(Z)V

    :cond_19
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->checkEditTextHint()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {v1, v5, v3, v4, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->updateSpans(ZLjava/util/HashSet;Ljava/lang/Runnable;Ljava/util/List;)V

    invoke-direct {v0, v5, v5}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateList(ZZ)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->clearSearchAfterSelect()V

    goto :goto_b

    :cond_1a
    :goto_a
    invoke-static {v9, v10}, Lorg/telegram/messenger/UserObject;->areGiftsDisabled(J)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    sget v3, Lorg/telegram/messenger/R$string;->UserDisallowedGifts:I

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->paymentOptions:Ljava/util/List;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptionsByBilling(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    new-instance v1, Lorg/telegram/ui/Gifts/GiftSheet;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    move-object v11, v1

    move/from16 v13, p3

    move-wide v14, v9

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v17}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->birthdays:Lorg/telegram/messenger/BirthdayController$BirthdayState;

    if-eqz v2, :cond_1c

    invoke-virtual {v2, v9, v10}, Lorg/telegram/messenger/BirthdayController$BirthdayState;->contains(J)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v4, 0x1

    :cond_1c
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Gifts/GiftSheet;->setBirthday(Z)Lorg/telegram/ui/Gifts/GiftSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    :cond_1d
    :goto_b
    return-void
.end method

.method private synthetic lambda$new$9()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$openBirthdaySetup$26(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget p3, Lorg/telegram/messenger/R$string;->PrivacyBirthdaySetDone:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 p2, 0x1388

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_2

    iget p1, p2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    if-nez p3, :cond_1

    and-int/lit8 p1, p1, -0x21

    :goto_1
    iput p1, p2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    goto :goto_2

    :cond_1
    or-int/lit8 p1, p1, 0x20

    goto :goto_1

    :goto_2
    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    :cond_2
    if-eqz p4, :cond_3

    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p2, "FLOOD_WAIT_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->PrivacyBirthdayTooOftenTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PrivacyBirthdayTooOftenMessage:I

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

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic lambda$openBirthdaySetup$27(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda29;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$openBirthdaySetup$28(Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V
    .locals 5

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;-><init>()V

    iget v1, v0, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;->flags:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;->flags:I

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$updateBirthday;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda28;

    invoke-direct {v4, p0, v1, v3}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V

    const/16 v1, 0x400

    invoke-virtual {p1, v0, v4, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->invalidateContentSettings()V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v3, "BIRTHDAY_SETUP"

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateItems(ZZ)V

    return-void
.end method

.method private synthetic lambda$openBirthdaySetup$29()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

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

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method private synthetic lambda$openOptions$20(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    const-string v1, "user_id"

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v2}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v3}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$openOptions$21(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    const-string v1, "user_id"

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v2}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v3}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$openOptions$22(Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {v0, v1, p2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->profile_discuss:I

    sget v1, Lorg/telegram/messenger/R$string;->SendMessage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    sget v1, Lorg/telegram/messenger/R$string;->OpenProfile:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$search$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->runningRequest:I

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->my_results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateList(ZZ)V

    return-void
.end method

.method private synthetic lambda$search$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateItems$18()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->checkEditTextHint()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateList(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateItems$19(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->checkEditTextHint()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->updateSpans(ZLjava/util/HashSet;Ljava/lang/Runnable;Ljava/util/List;)V

    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateList(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->clearSearchAfterSelect()V

    return-void
.end method

.method private next()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->paymentOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->allSelectedObjects:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iget v4, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    if-ne v4, v1, :cond_3

    return-void

    :cond_3
    if-ne v4, v3, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUsersSelectedListener:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->videoCheckbox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-interface {v2, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUsersSelectedListener:Lorg/telegram/messenger/Utilities$Callback2;

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->dismiss()V

    return-void

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->paymentOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->filterGiftOptionsByBilling(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_9

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/UserObject;->areGiftsDisabled(J)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$raw;->error:I

    sget v6, Lorg/telegram/messenger/R$string;->UserDisallowedGifts:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_7
    new-instance v11, Lorg/telegram/ui/Gifts/GiftSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v10, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    move-object v4, v11

    move-wide v7, v2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Gifts/GiftSheet;-><init>(Landroid/content/Context;IJLjava/util/List;Ljava/lang/Runnable;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->birthdays:Lorg/telegram/messenger/BirthdayController$BirthdayState;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/BirthdayController$BirthdayState;->contains(J)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-virtual {v11, v0}, Lorg/telegram/ui/Gifts/GiftSheet;->setBirthday(Z)Lorg/telegram/ui/Gifts/GiftSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/GiftSheet;->show()V

    :cond_9
    :goto_1
    return-void
.end method

.method private onSearch(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->query:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->remoteSearchRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->remoteSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x15e

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static open()Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;
    .locals 3

    .line 0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(JLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    move-result-object v0

    return-object v0
.end method

.method public static open(IJLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;
    .locals 12

    .line 0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->instance:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$1;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    const/4 v9, 0x1

    move-object v2, v1

    move-wide v5, p1

    move-object v7, p3

    move v8, p0

    move v11, p0

    invoke-direct/range {v2 .. v11}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$1;-><init>(Landroid/content/Context;IJLorg/telegram/messenger/BirthdayController$BirthdayState;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->makeAttached(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    sput-object v1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->instance:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return-object v1
.end method

.method public static open(JLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(IJLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    move-result-object p0

    return-object p0
.end method

.method private openBirthdaySetup()V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->EditProfileBirthdayTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->EditProfileBirthdayButton:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda24;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->createBirthdayPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private search(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->cancelSearch()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->runningRequest:I

    return-void
.end method

.method private showMaximumUsersToast()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->getLimit()I

    move-result v0

    const-string v1, "UserSelectorLimit"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->BoostingSelectUpToWarningUsers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updateActionButton(Z)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->CallInviteMembersButton:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x21

    const-string v5, "d"

    const-string v6, "GiftPremiumChooseRecipientsBtn"

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/R$string;->GiftPremiumChooseRecipientsBtn:I

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->recipientsBtnSpaceSpan:Landroid/text/style/ReplacementSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->recipientsBtnSpaceSpan:Landroid/text/style/ReplacementSpan;

    invoke-virtual {v2, v5, v1, v4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v2, Lorg/telegram/messenger/R$string;->GiftPremiumChooseRecipientsBtn:I

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->GiftPremiumProceedBtn:I

    const-string v3, "GiftPremiumProceedBtn"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v2, v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    return-void
.end method

.method private updateCheckboxes(Z)V
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    if-ltz v7, :cond_3

    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_0

    goto :goto_1

    :cond_0
    if-ne v3, v0, :cond_1

    move v3, v6

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    check-cast v5, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    iget-boolean v7, v4, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    invoke-virtual {v5, v7, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setChecked(ZZ)V

    iget-object v4, v4, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->getParticipantsCount(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v4

    const/16 v8, 0xc8

    if-le v4, v8, :cond_2

    const v7, 0x3e99999a    # 0.3f

    :cond_2
    invoke-virtual {v5, v7, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCheckboxAlpha(FZ)V

    move v4, v6

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    invoke-virtual {p1, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_5
    return-void
.end method

.method private updateList(ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateItems(ZZ)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateCheckboxes(Z)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateActionButton(Z)V

    return-void
.end method


# virtual methods
.method public addTONOption(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->includeTonOption:Z

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->tonDays:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateItems(ZZ)V

    return-void
.end method

.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 3

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->setGreenSelector(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->giftsToUserSent:I

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->dismiss()V

    goto :goto_1

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    if-ne p1, p2, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    if-ne p1, p2, :cond_2

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    goto :goto_0

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    if-ne p1, p2, :cond_3

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->instance:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->remoteSearchRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exceptUsers(Ljava/util/Collection;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->excludeUserIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateItems(ZZ)V

    return-object p0
.end method

.method public varargs exceptUsers([J)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;
    .locals 6

    .line 0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p1, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->excludeUserIds:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateItems(ZZ)V

    return-object p0
.end method

.method protected getLimit()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->conferenceCallSizeLimit:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->excludeUserIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->customTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->GiftTelegramPremiumTitle:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->VoipConferenceAddPeople:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->GiftStarsTitle:I

    goto :goto_0

    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->GiftTelegramPremiumOrStarsTitle:I

    goto :goto_0
.end method

.method protected needChecks()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->giftsToUserSent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateItems(ZZ)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->giftsToUserSent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onPreDraw(Landroid/graphics/Canvas;IF)V
    .locals 1

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 p3, 0x41000000    # 8.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->sectionCell:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchField:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorSearchCell;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->sectionCell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void
.end method

.method public openOptions(Lorg/telegram/tgnet/TLRPC$User;)Landroid/view/View$OnClickListener;
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$User;)V

    return-object v0
.end method

.method public scrollToTop(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {p1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;IF)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    return-void
.end method

.method public setOnShareCallLinkListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onShareCallLinkListener:Ljava/lang/Runnable;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->updateItems(ZZ)V

    return-object p0
.end method

.method public setOnUserSelector(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUserSelectedListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setOnUsersSelector(Lorg/telegram/messenger/Utilities$Callback2;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onUsersSelectedListener:Lorg/telegram/messenger/Utilities$Callback2;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->customTitle:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->headerView:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateItems(ZZ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->oldItems:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->isSearching()Z

    move-result v1

    const/4 v2, 0x3

    const/high16 v3, 0x42600000    # 56.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLObject;

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_3

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v7, :cond_0

    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v5, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->excludeUserIds:Ljava/util/HashSet;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asUser(Lorg/telegram/tgnet/TLRPC$User;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->decorate(Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v6

    :goto_1
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_0

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v7, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    if-eq v7, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_0

    :cond_5
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v7, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v5, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->excludeUserIds:Ljava/util/HashSet;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_0

    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v6

    goto :goto_1

    :cond_7
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->includeTonOption:Z

    const/4 v5, 0x2

    if-eqz v1, :cond_a

    iget v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    if-ne v1, v2, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->tonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_8

    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 v6, 0x42380000    # 46.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->ton:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v7, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->tonIcon:Landroid/graphics/drawable/Drawable;

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->tonIcon:Landroid/graphics/drawable/Drawable;

    sget v7, Lorg/telegram/messenger/R$string;->Gift2ExportTONTitle:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->tonDays:I

    if-lez v8, :cond_9

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "Gift2ExportTONUnlocksIn"

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_9
    const-string v8, ""

    :goto_2
    invoke-static {v5, v6, v7, v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asCustomUser(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    const/4 v6, 0x1

    if-nez v1, :cond_b

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    invoke-virtual {v7, v8, v4, v6}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    :cond_b
    iget v7, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    if-eqz v7, :cond_c

    if-ne v7, v5, :cond_d

    :cond_c
    if-eqz v1, :cond_d

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->birthday:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    if-nez v1, :cond_d

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    sget v8, Lorg/telegram/messenger/R$drawable;->menu_birthday:I

    sget v9, Lorg/telegram/messenger/R$string;->GiftsBirthdaySetup:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asButton(IILjava/lang/String;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->onShareCallLinkListener:Ljava/lang/Runnable;

    if-eqz v7, :cond_e

    iget v7, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    sget v8, Lorg/telegram/messenger/R$drawable;->msg2_link2:I

    sget v9, Lorg/telegram/messenger/R$string;->VoipConferenceShareLink:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asButton(IILjava/lang/String;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->birthdays:Lorg/telegram/messenger/BirthdayController$BirthdayState;

    if-eqz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    sget v7, Lorg/telegram/messenger/R$string;->BirthdayToday:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->birthdays:Lorg/telegram/messenger/BirthdayController$BirthdayState;

    iget-object v8, v8, Lorg/telegram/messenger/BirthdayController$BirthdayState;->today:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v7, v8, v6}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->addSection(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/util/ArrayList;Z)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    sget v7, Lorg/telegram/messenger/R$string;->BirthdayYesterday:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->birthdays:Lorg/telegram/messenger/BirthdayController$BirthdayState;

    iget-object v8, v8, Lorg/telegram/messenger/BirthdayController$BirthdayState;->yesterday:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v7, v8, v6}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->addSection(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/util/ArrayList;Z)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    sget v7, Lorg/telegram/messenger/R$string;->BirthdayTomorrow:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->birthdays:Lorg/telegram/messenger/BirthdayController$BirthdayState;

    iget-object v8, v8, Lorg/telegram/messenger/BirthdayController$BirthdayState;->tomorrow:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v7, v8, v6}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->addSection(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/util/ArrayList;Z)I

    move-result v2

    add-int/2addr v1, v2

    :cond_f
    iget v2, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->type:I

    if-eqz v2, :cond_10

    if-ne v2, v5, :cond_11

    :cond_10
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2MyselfSection:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asTopSection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asUser(Lorg/telegram/tgnet/TLRPC$User;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$string;->Gift2Myself:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->subtext:Ljava/lang/CharSequence;

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->hints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/high16 v6, 0x42000000    # 32.0f

    const/4 v7, 0x0

    if-nez v5, :cond_18

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->hints:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    if-eqz v9, :cond_12

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v12, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->userId:J

    cmp-long v14, v10, v12

    if-eqz v14, :cond_12

    iget-boolean v12, v9, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v12, :cond_12

    iget-boolean v12, v9, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v12, :cond_12

    invoke-static {v10, v11}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_13

    goto :goto_4

    :cond_13
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->birthdays:Lorg/telegram/messenger/BirthdayController$BirthdayState;

    if-eqz v10, :cond_14

    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v10, v11, v12}, Lorg/telegram/messenger/BirthdayController$BirthdayState;->contains(J)Z

    move-result v10

    if-eqz v10, :cond_14

    goto :goto_4

    :cond_14
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->excludeUserIds:Ljava/util/HashSet;

    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    goto :goto_4

    :cond_15
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asUser(Lorg/telegram/tgnet/TLRPC$User;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->decorate(Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_17
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v1, v7

    sget v7, Lorg/telegram/messenger/R$string;->GiftPremiumFrequentContacts:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asTopSection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_18
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->contactsLetters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->contactsMap:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1a
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    cmp-long v16, v14, v12

    if-eqz v16, :cond_1a

    iget-wide v12, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->userId:J

    cmp-long v16, v14, v12

    if-nez v16, :cond_1b

    goto :goto_6

    :cond_1b
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->birthdays:Lorg/telegram/messenger/BirthdayController$BirthdayState;

    if-eqz v12, :cond_1c

    invoke-virtual {v12, v14, v15}, Lorg/telegram/messenger/BirthdayController$BirthdayState;->contains(J)Z

    move-result v12

    if-eqz v12, :cond_1c

    goto :goto_6

    :cond_1c
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->excludeUserIds:Ljava/util/HashSet;

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    goto :goto_6

    :cond_1d
    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v12, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    if-eqz v11, :cond_1a

    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v12, :cond_1a

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v12, v13}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v12

    if-eqz v12, :cond_1e

    goto :goto_6

    :cond_1e
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asUser(Lorg/telegram/tgnet/TLRPC$User;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->decorate(Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_20
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_19

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asLetter(Ljava/lang/String;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_21
    if-eqz v7, :cond_22

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_22

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    sget v3, Lorg/telegram/messenger/R$string;->DeselectAll:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v3, v5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->withRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    :cond_22
    move v5, v1

    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asNoUsers()Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v5, v1

    :cond_24
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    sub-int/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->asPad(I)Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_26

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->selectorAdapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;

    if-eqz v1, :cond_26

    if-eqz p1, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->oldItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_7

    :cond_25
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_26
    :goto_7
    return-void
.end method
