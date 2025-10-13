.class public Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;
    }
.end annotation


# instance fields
.field private actionButton:Landroid/widget/TextView;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private banChecked:Z

.field private banFilter:[Z

.field private banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

.field private bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field private buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

.field private canRestrict:Z

.field private defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field private deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

.field private inChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private isForum:Z

.field private mergeDialogId:J

.field private messages:Ljava/util/ArrayList;

.field private mode:I

.field private monoforum:Z

.field private onDelete:Ljava/lang/Runnable;

.field private participantMessageCounts:[I

.field private participantMessageCountsLoaded:Z

.field private participantMessageCountsLoading:Z

.field private participantsBannedRights:Ljava/util/ArrayList;

.field private report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

.field private restrict:Z

.field private restrictFilter:[Z

.field private sendMediaCollapsed:Z

.field private shiftDp:F

.field private topicId:I


# direct methods
.method public static synthetic $r8$lambda$16nOCZ1w6J5ndf6CtkiNmYfyroc(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputPeer;I[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$updateParticipantMessageCounts$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputPeer;I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3SJuYVy5cddzIttGg4mw2fuI1eA(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$updateParticipantMessageCounts$4(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/messenger/MessageObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5Zey1OzsFC0fmqS38btvfrnvAiM(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$16(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$67L5RmoBdYJmiw61hWr_X9XjytE(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$fillAction$7(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6aoAeEL8qfBsW7odqhsExiEh7S0(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$82O3WbpYK_gYRTgiLEYVRyur6_E(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9WQe8c-QUTqk0bY4f2Bj0cfZbhM(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$11(Lorg/telegram/messenger/MessageObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EUmPOiQKR_Bpp-FOUPaGPdtjjG4(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLRPC$InputPeer;I[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$updateParticipantMessageCounts$6(Lorg/telegram/tgnet/TLRPC$InputPeer;I[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FIvSAJdGQOuakkUWlmKDlVelxWg(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$new$2(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ghe1BS5PquP7pn-rZK4xOHPIuNg(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$15(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HcCJiCNH3HWniBoEU98ACVQCxqI(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$13(Lorg/telegram/messenger/MessageObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KCbqlPSYDjp60ZDbRLyRjANnjmg(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b3Ki-U874kdM6Th7oBLZP-fIUl4(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$new$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$czt-FQN0Sv7gLVDErBT5SqeizFA(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$10(Lorg/telegram/messenger/MessageObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gxDIC6ljcHyY43GFpcRGyV7691E(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILorg/telegram/ui/Components/UniversalAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$fillItems$9(ILorg/telegram/ui/Components/UniversalAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i4qGv2yVDcFIA4Om27BKc6WBIe0(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;[ILorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$getTitle$3([ILorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ryWzjrH3ye5_WMU2VirydlonCVM(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$12(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s_jGyvEN6tSYjEMcZZE95YFFEDM(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$fillAction$8(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;Ljava/util/ArrayList;[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;JIILjava/lang/Runnable;)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;->SLIDING:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    iput-boolean v0, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoading:Z

    iput-boolean v0, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoaded:Z

    const/4 v1, 0x1

    iput-boolean v1, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->sendMediaCollapsed:Z

    const/high16 v2, 0x41200000    # 10.0f

    iput v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->shiftDp:F

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setShowHandle(Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    iput-boolean v1, v9, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->takeTranslationIntoAccount:Z

    iget-object v3, v9, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v4, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    iget v5, v9, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerTotalHeight:I

    const/high16 v6, 0x42880000    # 68.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, v9, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    iput-boolean v1, v9, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->takeTranslationIntoAccount:Z

    new-instance v3, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$1;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$1;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object v4, v9, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v3, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {v3, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v3, v4, v5, v7, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v4, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->DeleteProceedBtn:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    new-array v4, v1, [F

    const/high16 v5, 0x40c00000    # 6.0f

    aput v5, v4, v0

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    iget-object v3, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    const/16 v4, 0x30

    const/16 v5, 0x57

    const/4 v7, -0x1

    invoke-static {v7, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    iget v4, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x57

    move/from16 v16, v4

    move/from16 v18, v4

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v10, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->isForum:Z

    move-object/from16 v2, p3

    iput-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    move-wide/from16 v2, p6

    iput-wide v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    move/from16 v2, p8

    iput v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->topicId:I

    move/from16 v2, p9

    iput v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mode:I

    move-object/from16 v2, p10

    iput-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onDelete:Ljava/lang/Runnable;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v3, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v4, :cond_0

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    :cond_0
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-eqz v4, :cond_1

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    :cond_1
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v4, :cond_2

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    :cond_2
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v4, :cond_3

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    :cond_3
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v4, :cond_4

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    :cond_4
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v4, :cond_5

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    :cond_5
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v4, :cond_6

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    :cond_6
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v4, :cond_7

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    :cond_7
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v4, :cond_8

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    :cond_8
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v4, :cond_9

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    :cond_9
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v4, :cond_a

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    :cond_a
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v4, :cond_b

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    :cond_b
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-eqz v4, :cond_c

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    :cond_c
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v4, :cond_d

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    :cond_d
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v4, :cond_e

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    :cond_e
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v4, :cond_f

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    :cond_f
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v4, :cond_10

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    :cond_10
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v4, :cond_11

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    :cond_11
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v4, :cond_12

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    :cond_12
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v3, :cond_13

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    :cond_13
    iget v2, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    new-instance v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {v2, v9, v0, v11}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILjava/util/ArrayList;)V

    iput-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    new-instance v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {v2, v9, v1, v11}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILjava/util/ArrayList;)V

    iput-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->monoforum:Z

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1e

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banFilter:[Z

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_18

    array-length v4, v12

    if-ge v2, v4, :cond_14

    aget-object v4, v12, v2

    goto :goto_1

    :cond_14
    move-object v4, v6

    :goto_1
    iget-boolean v5, v10, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v5, :cond_15

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v5, :cond_17

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v5, :cond_15

    goto :goto_2

    :cond_15
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    if-eqz v5, :cond_16

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v4, :cond_16

    invoke-static {v4}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->isBanned(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_2

    :cond_16
    iget-object v4, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banFilter:[Z

    aput-boolean v1, v4, v2

    :cond_17
    :goto_2
    add-int/2addr v2, v1

    goto :goto_0

    :cond_18
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrictFilter:[Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->hasAnyDefaultRights()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    :goto_3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1d

    array-length v4, v12

    if-ge v2, v4, :cond_19

    aget-object v4, v12, v2

    goto :goto_4

    :cond_19
    move-object v4, v6

    :goto_4
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_1a

    goto :goto_5

    :cond_1a
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    if-eqz v5, :cond_1b

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v4, :cond_1b

    invoke-direct {v9, v4}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->canBeRestricted(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_5

    :cond_1b
    iget-object v4, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banFilter:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_1c

    iget-object v4, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrictFilter:[Z

    aput-boolean v1, v4, v2

    iput-boolean v1, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->canRestrict:Z

    :cond_1c
    :goto_5
    add-int/2addr v2, v1

    goto :goto_3

    :cond_1d
    invoke-static/range {p5 .. p5}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda252;

    invoke-direct {v2}, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda252;-><init>()V

    invoke-static {v2}, Lj$/util/stream/Collectors;->toCollection(Lj$/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantsBannedRights:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {v1, v9, v3, v11}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILjava/util/ArrayList;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget-object v2, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banFilter:[Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->setFilter([Z)V

    goto :goto_6

    :cond_1e
    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v1, v9, v3, v2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILjava/util/ArrayList;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    :goto_6
    iget-object v1, v9, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-object v0, v9, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Lorg/telegram/ui/Components/UniversalAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private allDefaultMediaBanned()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bannedRightsOr(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 4

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-nez v1, :cond_7

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v1, :cond_9

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v1, 0x1

    :goto_7
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v1, :cond_b

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v1, 0x1

    :goto_9
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v1, :cond_d

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v1, :cond_c

    goto :goto_a

    :cond_c
    const/4 v1, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v1, 0x1

    :goto_b
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez v1, :cond_f

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v1, :cond_e

    goto :goto_c

    :cond_e
    const/4 v1, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v1, 0x1

    :goto_d
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v1, :cond_11

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v1, :cond_10

    goto :goto_e

    :cond_10
    const/4 v1, 0x0

    goto :goto_f

    :cond_11
    :goto_e
    const/4 v1, 0x1

    :goto_f
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v1, :cond_13

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v1, :cond_12

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    goto :goto_11

    :cond_13
    :goto_10
    const/4 v1, 0x1

    :goto_11
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v1, :cond_15

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v1, :cond_14

    goto :goto_12

    :cond_14
    const/4 v1, 0x0

    goto :goto_13

    :cond_15
    :goto_12
    const/4 v1, 0x1

    :goto_13
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v1, :cond_17

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v1, :cond_16

    goto :goto_14

    :cond_16
    const/4 v1, 0x0

    goto :goto_15

    :cond_17
    :goto_14
    const/4 v1, 0x1

    :goto_15
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v1, :cond_19

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v1, :cond_18

    goto :goto_16

    :cond_18
    const/4 v1, 0x0

    goto :goto_17

    :cond_19
    :goto_16
    const/4 v1, 0x1

    :goto_17
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-eqz v1, :cond_1a

    goto :goto_18

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19

    :cond_1b
    :goto_18
    const/4 v1, 0x1

    :goto_19
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v1, :cond_1d

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v1, :cond_1c

    goto :goto_1a

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b

    :cond_1d
    :goto_1a
    const/4 v1, 0x1

    :goto_1b
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v1, :cond_1f

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_1e

    goto :goto_1c

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1f
    :goto_1c
    const/4 v1, 0x1

    :goto_1d
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v1, :cond_21

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_20

    goto :goto_1e

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f

    :cond_21
    :goto_1e
    const/4 v1, 0x1

    :goto_1f
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v1, :cond_23

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_22

    goto :goto_20

    :cond_22
    const/4 v1, 0x0

    goto :goto_21

    :cond_23
    :goto_20
    const/4 v1, 0x1

    :goto_21
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v1, :cond_25

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_24

    goto :goto_22

    :cond_24
    const/4 v1, 0x0

    goto :goto_23

    :cond_25
    :goto_22
    const/4 v1, 0x1

    :goto_23
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v1, :cond_27

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_26

    goto :goto_24

    :cond_26
    const/4 v1, 0x0

    goto :goto_25

    :cond_27
    :goto_24
    const/4 v1, 0x1

    :goto_25
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p0, :cond_29

    iget-boolean p0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz p0, :cond_28

    goto :goto_26

    :cond_28
    const/4 v2, 0x0

    :cond_29
    :goto_26
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    return-object v0
.end method

.method private canBeRestricted(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z
    .locals 2

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v0, :cond_10

    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v0, :cond_10

    :cond_1
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v0, :cond_10

    :cond_2
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v0, :cond_10

    :cond_3
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v0, :cond_10

    :cond_4
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v0, :cond_10

    :cond_5
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v0, :cond_10

    :cond_6
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v0, :cond_10

    :cond_7
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v0, :cond_10

    :cond_8
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->isForum:Z

    if-nez v0, :cond_10

    :cond_9
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v0, :cond_10

    :cond_a
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v0, :cond_10

    :cond_b
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v0, :cond_10

    :cond_c
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v0, :cond_10

    :cond_d
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v0, :cond_10

    :cond_e
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v0, :cond_10

    :cond_f
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p1, :cond_11

    :cond_10
    const/4 p1, 0x1

    goto :goto_0

    :cond_11
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private fillAction(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V
    .locals 5

    invoke-virtual {p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget v0, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->type:I

    iget-object v3, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->title:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget p2, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget v0, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->type:I

    iget-object v3, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->title:Ljava/lang/String;

    iget v4, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->getCount()I

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/UItem;->asUserGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget v3, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-boolean v1, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapsed:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapsed:Z

    if-nez v0, :cond_5

    new-instance v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda15;-><init>(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->forEach(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->DeleteAdditionalActions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->fillAction(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->fillAction(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->fillAction(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->monoforum:Z

    if-nez v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v2, v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "UserRestrictionsCanDoUsers"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/UItem;->asAnimatedHeader(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCanDo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsSend:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/UItem;->asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->getSendMediaSelectedCount()I

    move-result v2

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsSendMedia:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v0

    const-string v5, "%d/9"

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/UItem;->asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    if-lez v2, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->allDefaultMediaBanned()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->sendMediaCollapsed:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v2, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILorg/telegram/ui/Components/UniversalAdapter;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->sendMediaCollapsed:Z

    if-nez p2, :cond_d

    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionPhotos:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x6

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionVideos:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x7

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionFiles:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x8

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionMusic:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x9

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionVoice:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0xa

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionRound:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0xb

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionStickersGifs:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0xc

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPolls:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0xd

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsEmbedLinks:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0xe

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v4, :cond_c

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v2, :cond_c

    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsInviteUsers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v2, :cond_e

    const/4 v2, 0x1

    goto :goto_d

    :cond_e
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsPinMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v2, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_e

    :cond_f
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsChangeInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x4

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v2, :cond_10

    const/4 v2, 0x1

    goto :goto_f

    :cond_10
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->isForum:Z

    if-eqz p2, :cond_12

    sget p2, Lorg/telegram/messenger/R$string;->CreateTopicsPermission:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x5

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/UItem;->asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-boolean p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->canRestrict:Z

    if-eqz p2, :cond_13

    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->getRestrictToggleTextKey()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asShadowCollapseButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method private getRestrictToggleTextKey()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->DeleteToggleBanUser:I

    return v0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->DeleteToggleRestrictUser:I

    return v0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->DeleteToggleBanUsers:I

    return v0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->DeleteToggleRestrictUsers:I

    return v0
.end method

.method private getSendMediaSelectedCount()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v3, :cond_7

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v3, :cond_7

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    return v1
.end method

.method private hasAnyDefaultRights()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->isForum:Z

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isBanned(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    return p0
.end method

.method private synthetic lambda$fillAction$7(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->saveScrollPosition()V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapseOrExpand()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->applyScrolledPosition(Z)V

    return-void
.end method

.method private static synthetic lambda$fillAction$8(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;Lorg/telegram/tgnet/TLObject;I)V
    .locals 1

    iget v0, p1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->type:I

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, p3

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asUserCheckbox(ILorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean p1, p1, p3

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$fillItems$9(ILorg/telegram/ui/Components/UniversalAdapter;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->allDefaultMediaBanned()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyDisabled:I

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

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    :cond_0
    const/4 p3, 0x1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    xor-int/2addr p1, p3

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$getTitle$3([ILorg/telegram/tgnet/TLObject;I)V
    .locals 2

    const/4 p2, 0x0

    aget v0, p1, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCounts:[I

    aget p3, v1, p3

    add-int/2addr v0, p3

    aput v0, p1, p2

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IFF)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->proceed()V

    return-void
.end method

.method private static synthetic lambda$new$2(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$performDelete$10(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    iget-wide v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    neg-long v2, v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$performDelete$11(Lorg/telegram/messenger/MessageObject;)Z
    .locals 6

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    iget-wide v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    neg-long v4, v2

    cmp-long p1, v0, v4

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$performDelete$12(Lorg/telegram/tgnet/TLObject;I)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    move-wide v6, v3

    goto :goto_0

    :cond_0
    move-wide v6, v1

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantsBannedRights:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRightsOr(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v10

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object v8, p1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v12

    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/messenger/MessagesController;->setParticipantBannedRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_3

    :cond_1
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_4

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object v9, p1

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v12

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object v8, p1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    :goto_2
    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZ)V

    goto :goto_3

    :cond_3
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_4

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object v9, p1

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic lambda$performDelete$13(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    iget-wide v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    neg-long v2, v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$performDelete$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)Z
    .locals 5

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v0, v3, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v0, v3, p0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method private synthetic lambda$performDelete$15(Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    :goto_0
    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/tgnet/TLObject;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda252;

    invoke-direct {v0}, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda252;-><init>()V

    invoke-static {v0}, Lj$/util/stream/Collectors;->toCollection(Lj$/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->id:Ljava/util/ArrayList;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$performDelete$16(Lorg/telegram/tgnet/TLObject;I)V
    .locals 3

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p2, v2, p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;I)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p2, v2, v1, p1, v0}, Lorg/telegram/messenger/MessagesController;->deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateParticipantMessageCounts$4(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0, p1}, Lorg/telegram/messenger/MessageObject;->peersEqual(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$Peer;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateParticipantMessageCounts$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputPeer;I[I)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda18;

    invoke-direct {v1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Lj$/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCounts:[I

    sub-int/2addr p1, p2

    aput p1, v0, p3

    :cond_0
    const/4 p1, 0x0

    aget p2, p4, p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    aput p2, p4, p1

    if-nez p2, :cond_1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoading:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoaded:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitleAnimated()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateParticipantMessageCounts$6(Lorg/telegram/tgnet/TLRPC$InputPeer;I[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p5, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda13;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputPeer;I[I)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 3

    iget p2, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 p3, 0x25

    const/4 p4, 0x2

    const/4 p5, 0x1

    if-ne p2, p3, :cond_2

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    ushr-int/lit8 p2, p1, 0x18

    const p3, 0xffffff

    and-int/2addr p1, p3

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    :goto_0
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleCheck(I)V

    goto/16 :goto_9

    :cond_0
    if-ne p2, p5, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleCheck(I)V

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onDeleteAllChanged()V

    goto/16 :goto_9

    :cond_1
    if-ne p2, p4, :cond_1e

    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    goto :goto_0

    :cond_2
    const/16 p3, 0x24

    const/4 v0, 0x0

    const/16 v1, 0x27

    const/16 v2, 0x23

    if-eq p2, p3, :cond_c

    if-ne p2, v2, :cond_3

    goto/16 :goto_3

    :cond_3
    if-ne p2, v1, :cond_9

    iget-boolean p2, p1, Lorg/telegram/ui/Components/UItem;->locked:Z

    if-eqz p2, :cond_4

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyDisabled:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    :cond_4
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne p1, p4, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    goto/16 :goto_8

    :cond_5
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    goto/16 :goto_8

    :cond_6
    const/4 p2, 0x4

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    goto/16 :goto_8

    :cond_7
    const/4 p2, 0x5

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    goto/16 :goto_8

    :cond_8
    if-nez p1, :cond_1d

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    goto/16 :goto_8

    :cond_9
    const/16 p1, 0x28

    if-ne p2, p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->sendMediaCollapsed:Z

    xor-int/2addr p1, p5

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->sendMediaCollapsed:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->saveScrollPosition()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-virtual {p0, p5}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->applyScrolledPosition(Z)V

    goto/16 :goto_9

    :cond_a
    const/16 p1, 0x26

    if-ne p2, p1, :cond_1e

    iget-boolean p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    xor-int/2addr p1, p5

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrictFilter:[Z

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banFilter:[Z

    :goto_2
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->setFilter([Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto/16 :goto_9

    :cond_c
    :goto_3
    iget p3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-nez p3, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    :goto_4
    invoke-virtual {p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleAllChecks()V

    goto/16 :goto_9

    :cond_d
    if-ne p3, p5, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleAllChecks()V

    goto/16 :goto_1

    :cond_e
    if-ne p3, p4, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    goto :goto_4

    :cond_f
    if-ne p2, v2, :cond_1e

    iget-boolean p1, p1, Lorg/telegram/ui/Components/UItem;->locked:Z

    if-eqz p1, :cond_10

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyDisabled:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    :cond_10
    const/4 p1, 0x6

    if-ne p3, p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    goto/16 :goto_8

    :cond_11
    const/4 p1, 0x7

    if-ne p3, p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    goto/16 :goto_8

    :cond_12
    const/16 p1, 0x9

    if-ne p3, p1, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    goto/16 :goto_8

    :cond_13
    const/16 p1, 0x8

    if-ne p3, p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    goto/16 :goto_8

    :cond_14
    const/16 p1, 0xb

    if-ne p3, p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    goto/16 :goto_8

    :cond_15
    const/16 p1, 0xa

    if-ne p3, p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    goto :goto_8

    :cond_16
    const/16 p1, 0xc

    if-ne p3, p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    goto :goto_8

    :cond_17
    const/16 p1, 0xe

    if-ne p3, p1, :cond_1c

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p2, :cond_19

    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz p2, :cond_18

    goto :goto_5

    :cond_18
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    goto :goto_8

    :cond_19
    :goto_5
    const/4 p1, 0x0

    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_1b

    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget p3, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p3, v1, :cond_1a

    iget p2, p2, Lorg/telegram/ui/Components/UItem;->id:I

    if-nez p2, :cond_1a

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    add-int/2addr p1, p5

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->shiftDp:F

    neg-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->shiftDp:F

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    goto :goto_7

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_1b
    :goto_7
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    :cond_1c
    const/16 p1, 0xd

    if-ne p3, p1, :cond_1d

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    :goto_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    :cond_1d
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1e
    :goto_9
    return-void
.end method

.method private onDeleteAllChanged()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitleAnimated()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->updateParticipantMessageCounts()V

    :goto_0
    return-void
.end method

.method private onRestrictionsChanged()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v0, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banChecked:Z

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleAllChecks()V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banChecked:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v4, v3, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eq v0, v4, :cond_4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleAllChecks()V

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v0, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banChecked:Z

    :cond_6
    return-void
.end method

.method private performDelete()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda252;

    invoke-direct {v1}, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda252;-><init>()V

    invoke-static {v1}, Lj$/util/stream/Collectors;->toCollection(Lj$/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda252;

    invoke-direct {v1}, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda252;-><init>()V

    invoke-static {v1}, Lj$/util/stream/Collectors;->toCollection(Lj$/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v3

    iget v7, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->topicId:I

    iget v9, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mode:I

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JIZI)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v7, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    iget v9, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->topicId:I

    iget v11, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mode:I

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v11}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JIZI)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->forEachSelected(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->forEachSelected(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->forEachSelected(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V

    return-void
.end method

.method private proceed()V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->dismiss()V

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onDelete:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v0, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    const/4 v1, 0x0

    const-string v2, ""

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v2, v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "UsersReported"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v0, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v0, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v2, v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "UsersRestricted"

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v2, v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "UsersBanned"

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v0, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$raw;->ic_admin:I

    goto :goto_2

    :cond_5
    sget v0, Lorg/telegram/messenger/R$raw;->contact_check:I

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->MessagesDeleted:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->MessagesDeleted:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->performDelete()V

    return-void
.end method

.method private savePreferences()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->areAllSelected()Z

    move-result v1

    const-string v2, "delete_report"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->areAllSelected()Z

    move-result v1

    const-string v2, "delete_deleteAll"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->areAllSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "delete_ban"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateParticipantMessageCounts()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoading:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v1, v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCounts:[I

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v3, v3, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v2, v3, :cond_1

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const-string v4, ""

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget-object v4, v4, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->options:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->from_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    or-int/2addr v5, v0

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v4, v2, v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLRPC$InputPeer;I[I)V

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected canHighlightChildAt(Landroid/view/View;FF)Z
    .locals 0

    instance-of p1, p1, Lorg/telegram/ui/Cells/CollapseTextCell;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 9

    new-instance v8, Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v4

    new-instance v6, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v8
.end method

.method public dismiss()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->savePreferences()V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCounts:[I

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoaded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    new-instance v3, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;[I)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->forEachSelected(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V

    :cond_1
    aget v0, v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DeleteOptionsTitle"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    return-void
.end method
