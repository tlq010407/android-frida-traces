.class public Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$TouchHelperCallback;,
        Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;,
        Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$EmptyView;
    }
.end annotation


# instance fields
.field private addAnswerRow:I

.field private allowAdding:Z

.field private allowAddingRow:I

.field private allowMarking:Z

.field private allowMarkingRow:I

.field private allowNesterScroll:Z

.field private anonymousPoll:Z

.field private anonymousRow:I

.field private answerHeaderRow:I

.field private answerSectionRow:I

.field private answerStartRow:I

.field private answers:[Ljava/lang/CharSequence;

.field private answersChecks:[Z

.field private answersCount:I

.field private currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

.field private destroyed:Z

.field private doneItemEnabled:Z

.field private emojiPadding:I

.field public emojiView:Lorg/telegram/ui/Components/EmojiView;

.field public emojiViewVisible:Z

.field public emojiViewWasVisible:Z

.field private emptyRow:I

.field private hintShowed:Z

.field private hintView:Lorg/telegram/ui/Components/HintView;

.field private ignoreLayout:Z

.field private isAnimatePopupClosing:Z

.field public isEmojiSearchOpened:Z

.field private isPremium:Z

.field private itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final maxAnswersCount:I

.field private multipleChoise:Z

.field private multipleRow:I

.field private final openKeyboardRunnable:Ljava/lang/Runnable;

.field private paddingRow:I

.field private questionHeaderRow:I

.field private questionRow:I

.field private questionSectionRow:I

.field private questionString:Ljava/lang/CharSequence;

.field private quizOnly:I

.field private quizPoll:Z

.field private quizRow:I

.field private requestFieldFocusAtPosition:I

.field private rowCount:I

.field private settingsHeaderRow:I

.field private settingsSectionRow:I

.field private solutionInfoRow:I

.field private solutionRow:I

.field private solutionString:Ljava/lang/CharSequence;

.field private suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

.field private final todo:Z

.field private topPadding:I

.field private waitingForKeyboardOpen:Z

.field public wasEmojiSearchOpened:Z


# direct methods
.method public static synthetic $r8$lambda$3ehfOkLWLlD9u_hGUqFKzEz5U90(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$showEmojiPopup$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ClfWtU82k_BCg0DMR_TAlDsTXA(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$B6XRsnCk2KQss4wwBPDUtRI0DWA(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$onMenuItemClick$2(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FvD59bnlum7KSNdRMZimg8dHG1E(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$onMenuItemClick$4(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UPndmhOrauPBimrMT7uKEuqKR_0(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$onMenuItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$_5uDpDqijQF3LIDHuQJf4lVE_uE(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$animateEmojiViewTranslationY$8(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$frK0zdik8C-b0pNKhoq1xlRUtwE(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$hideEmojiPopup$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gh-_zhFn-r6zHLdLgpKq-2wlv4s(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;ZI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$onMenuItemClick$3(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$rxkKvm4tPElDlbhVSZ97SW_SiRw(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lambda$checkDiscard$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    invoke-direct {p0, p1, p2, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousPoll:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAdding:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->requestFieldFocusAtPosition:I

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->wasEmojiSearchOpened:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getAnswersMaxCount()I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->maxAnswersCount:I

    new-array v2, p3, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    new-array p3, p3, [Z

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p3

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p3, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$2;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {p3, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v8, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$4;

    const/high16 v1, 0x42540000    # 53.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {p3, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setSkipFirstItem()V

    new-instance p3, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$TouchHelperCallback;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$TouchHelperCallback;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x33

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance p1, Lorg/telegram/ui/Components/HintView;

    const/4 p3, 0x4

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    sget v0, Lorg/telegram/messenger/R$string;->PollTapToSelect:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    const/high16 v7, 0x41980000    # 19.0f

    const/4 v8, 0x0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41980000    # 19.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {p1, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$6;

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v5, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;ILorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forbidCopy()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forbidSetAsStatus()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SuggestEmojiView;->setHorizontalPadding(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    const/4 p2, -0x2

    const/16 p3, 0xa0

    invoke-static {p2, p3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->checkDoneButton()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Landroidx/recyclerview/widget/DefaultItemAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/FillLastLinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/HintView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isAnimatePopupClosing:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionHeaderRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerHeaderRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizOnly:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->settingsHeaderRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionInfoRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->settingsSectionRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->maxAnswersCount:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    return p0
.end method

.method static synthetic access$2208(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    return v0
.end method

.method static synthetic access$2210(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAdding:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarkingRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousPoll:Z

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Cells/PollEditTextCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/Cells/PollEditTextCell;)Lorg/telegram/ui/Cells/PollEditTextCell;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->setTextLeft(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->requestFieldFocusAtPosition:I

    return p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->requestFieldFocusAtPosition:I

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->destroyed:Z

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiPopup(Z)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/Cells/PollEditTextCell;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->onCellFocusChanges(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->onEmojiClicked(Lorg/telegram/ui/Cells/PollEditTextCell;)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionRow:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->checkDoneButton()V

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionSectionRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerSectionRow:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emptyRow:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->paddingRow:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addNewField()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->topPadding:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    return-object p0
.end method

.method private addNewField()V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->resetSuggestEmojiPanel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->requestFieldFocusAtPosition:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerSectionRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emptyRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private animateEmojiViewTranslationY(FF)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$10;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;F)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0xfa

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkDiscard()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->CancelTodoAlertTitle:I

    goto :goto_2

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->CancelPollAlertTitle:I

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/messenger/R$string;->CancelTodoAlertText:I

    goto :goto_3

    :cond_3
    sget v2, Lorg/telegram/messenger/R$string;->CancelPollAlertText:I

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_4
    return v0
.end method

.method private checkDoneButton()V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v4, 0xc8

    if-le v0, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v4, 0xff

    if-le v0, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    array-length v8, v7

    if-ge v4, v8, :cond_8

    aget-object v7, v7, v4

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v6, v6, v4

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x2

    :goto_5
    if-lt v5, v4, :cond_a

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v4, :cond_b

    if-ge v2, v3, :cond_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowNesterScroll:Z

    goto :goto_7

    :cond_d
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowNesterScroll:Z

    :goto_7
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowNesterScroll:Z

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v4, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v0, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->doneItemEnabled:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    return-void
.end method

.method private collapseSearchEmojiView()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->wasEmojiSearchOpened:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->animateEmojiViewTranslationY(FF)V

    :cond_0
    return-void
.end method

.method private createEmojiView()V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x3

    iput v1, v0, Lorg/telegram/ui/Components/EmojiView;->emojiCacheType:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getAnswersMaxCount()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->todoItemsMax:I

    return v0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->pollAnswersMax:I

    return v0
.end method

.method public static getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    const-string v2, "\n\n\n"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    const-string v4, "\n\n"

    if-ltz v3, :cond_1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/CharSequence;

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    if-nez v3, :cond_2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/CharSequence;

    aput-object v4, v5, v0

    invoke-static {p0, v3, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method private getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method private hideEmojiPopup(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->scrollEmojiToTop()V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->showEmojiPopup(I)V

    :cond_2
    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    aput p1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isAnimatePopupClosing:Z

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiView()V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$animateEmojiViewTranslationY$8(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$checkDiscard$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$hideEmojiPopup$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 8

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addNewField()V

    goto/16 :goto_8

    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_13

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousRow:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousPoll:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousPoll:Z

    goto/16 :goto_6

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    if-ne p2, v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAdding:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAdding:Z

    goto/16 :goto_6

    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarkingRow:I

    if-ne p2, v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    xor-int/2addr v3, v2

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    if-ltz v4, :cond_4

    if-gez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    :cond_4
    if-ltz v1, :cond_5

    if-gez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_5
    :goto_0
    move v1, v3

    goto/16 :goto_6

    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p2, v1, :cond_8

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    if-eqz v1, :cond_f

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v5, :cond_f

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    invoke-virtual {v4, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emptyRow:I

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_6

    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizOnly:I

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateRows()V

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v6, :cond_a

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    invoke-virtual {v5, v6, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    invoke-virtual {v6, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emptyRow:I

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    if-eqz v3, :cond_c

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_c
    :goto_3
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    array-length v7, v6

    if-ge v3, v7, :cond_f

    if-eqz v5, :cond_d

    aput-boolean v4, v6, v3

    goto :goto_5

    :cond_d
    aget-boolean v6, v6, v3

    if-eqz v6, :cond_e

    const/4 v5, 0x1

    :cond_e
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_f
    :goto_6
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintShowed:Z

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-nez v3, :cond_10

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    :goto_7
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_12

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_11

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v4, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v5, :cond_11

    check-cast v4, Lorg/telegram/ui/Cells/PollEditTextCell;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->setShowCheckBox(ZZ)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    sub-int v6, v3, v6

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setChecked(ZZ)V

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le v5, v6, :cond_11

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    if-ne p2, v5, :cond_11

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintShowed:Z

    if-nez v5, :cond_11

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/PollEditTextCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintShowed:Z

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->checkDoneButton()V

    :cond_13
    :goto_8
    return-void
.end method

.method private synthetic lambda$onMenuItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;ZI)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v2, 0x0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;->sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$2(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;)V
    .locals 10

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;Ljava/lang/Long;)V

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-interface/range {v3 .. v9}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;->sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onMenuItemClick$3(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;ZI)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;->sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$4(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;)V
    .locals 10

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;Ljava/lang/Long;)V

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v3 .. v9}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;->sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZIJ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showEmojiPopup$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private onCellFocusChanges(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->collapseSearchEmojiView()V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setEmojiButtonVisibility(Z)V

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->updateSuggestEmojiPanelDelegate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->collapseSearchEmojiView()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiPopup(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardInternal()V

    :cond_1
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setEmojiButtonVisibility(Z)V

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_2
    return-void
.end method

.method private onEmojiClicked(Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->collapseSearchEmojiView()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardInternal()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->showEmojiPopup(I)V

    :goto_0
    return-void
.end method

.method private openKeyboardInternal()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitKeyboard()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->showEmojiPopup(I)V

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->waitingForKeyboardOpen:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private resetSuggestEmojiPanel()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->setDelegate(Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_0
    return-void
.end method

.method private setTextLeft(Landroid/view/View;I)V
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionRow:I

    if-ne p2, v1, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->todoTitleLengthMax:I

    goto :goto_0

    :cond_1
    const/16 p2, 0xff

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    sub-int v1, p2, v1

    goto :goto_5

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/16 v1, 0xc8

    rsub-int p2, p2, 0xc8

    move v1, p2

    const/16 p2, 0xc8

    goto :goto_5

    :cond_5
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    if-lt p2, v1, :cond_a

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    add-int/2addr v2, v1

    if-ge p2, v2, :cond_a

    sub-int/2addr p2, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->todoItemLengthMax:I

    goto :goto_3

    :cond_6
    const/16 v1, 0x64

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object p2, v2, p2

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    sub-int p2, v1, p2

    move v4, v1

    move v1, p2

    move p2, v4

    :goto_5
    int-to-float v2, v1

    int-to-float p2, p2

    const v3, 0x3f333333    # 0.7f

    mul-float v3, v3, p2

    sub-float/2addr p2, v3

    cmpg-float p2, v2, p2

    if-gtz p2, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string p2, "%d"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->setText2(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    if-gez v1, :cond_8

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_6

    :cond_8
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    :goto_6
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_7

    :cond_9
    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->setText2(Ljava/lang/String;)V

    :cond_a
    :goto_7
    return-void
.end method

.method private showEmojiPopup(I)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->createEmojiView()V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewWasVisible:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x43160000    # 150.0f

    if-gtz v4, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_1
    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const-string v8, "kbd_height"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    :cond_3
    :goto_2
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    if-gtz v4, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_3
    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    goto :goto_4

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const-string v6, "kbd_height_land3"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_3

    :cond_5
    :goto_4
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v5, v4, :cond_6

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    goto :goto_5

    :cond_6
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_7

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_7
    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    :goto_6
    if-eqz v2, :cond_9

    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_9
    if-nez p1, :cond_10

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-nez p1, :cond_10

    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    int-to-float p1, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p1, v2, v1

    const/4 p1, 0x0

    aput p1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8

    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_c

    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_e

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewWasVisible:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v2, :cond_d

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_e

    :cond_d
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_e
    if-nez p1, :cond_f

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_10
    :goto_8
    return-void
.end method

.method private showQuizHint()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateRows()V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionInfoRow:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousRow:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarkingRow:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->settingsSectionRow:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->paddingRow:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionHeaderRow:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionRow:I

    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionSectionRow:I

    const/4 v2, 0x5

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    const/4 v3, 0x4

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerHeaderRow:I

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersCount:I

    if-eqz v4, :cond_0

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerStartRow:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v4, v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->addAnswerRow:I

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v4, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answerSectionRow:I

    add-int/lit8 v5, v2, 0x2

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->settingsHeaderRow:I

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v4, :cond_2

    add-int/lit8 v0, v2, 0x3

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarkingRow:I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    if-eqz v1, :cond_7

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAddingRow:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousRow:I

    :cond_4
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizOnly:I

    if-eq v2, v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleRow:I

    :cond_5
    if-nez v2, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizRow:I

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->settingsSectionRow:I

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v3, :cond_7

    add-int/lit8 v3, v0, 0x2

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionRow:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionInfoRow:I

    :cond_7
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emptyRow:I

    return-void
.end method

.method private updateSuggestEmojiPanelDelegate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->getDelegate()Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    move-result-object v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->setDelegate(Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public getButtonsHideOffset()I
    .locals 1

    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getEmojiPadding()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getListTopPadding()I

    move-result v0

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->topPadding:I

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-class v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v3, v14, v5

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    move/from16 v18, v22

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v25, v7, v8

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v3, v7, v5

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v6

    move-object/from16 v26, v7

    move/from16 v30, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v11, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$EmptyView;

    aput-object v6, v11, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object v8, v2

    move v15, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v7, v8, v5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object v15, v2

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v10, v6, v8

    new-array v11, v4, [Ljava/lang/Class;

    aput-object v7, v11, v5

    move-object v8, v2

    move v15, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v7, v6, v5

    const-string v7, "textView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v22, 0x0

    const/16 v17, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-class v3, Lorg/telegram/ui/Cells/HeaderCell;

    new-array v11, v4, [Ljava/lang/Class;

    aput-object v3, v11, v5

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v15, 0x0

    const/4 v10, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v3, v8, v5

    const-string v9, "textView2"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v21

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v20, v8

    move/from16 v25, v26

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v13, v4, [Ljava/lang/Class;

    aput-object v3, v13, v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v29, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-class v6, Lorg/telegram/ui/Cells/PollEditTextCell;

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v6, v8, v5

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v31

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v8

    move/from16 v35, v19

    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v13, v4, [Ljava/lang/Class;

    aput-object v6, v13, v5

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v14

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v29, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v6, v8, v5

    const-string v10, "deleteImageView"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v31

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v8

    move/from16 v35, v20

    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v6, v8, v5

    const-string v11, "moveImageView"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v36

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v37, 0x0

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v8

    move/from16 v40, v20

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v42, v8, v11

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v6, v8, v5

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v44

    sget v48, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v45, 0x0

    move-object/from16 v40, v2

    move-object/from16 v41, v3

    move-object/from16 v43, v8

    invoke-direct/range {v40 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v13, v4, [Ljava/lang/Class;

    aput-object v6, v13, v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    move-object v10, v2

    move/from16 v18, v26

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v6, v8, v5

    const-string v9, "checkBox"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v36

    const/16 v34, 0x0

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v8

    move/from16 v40, v20

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v4, [Ljava/lang/Class;

    aput-object v6, v13, v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v12, 0x0

    move-object v10, v2

    move/from16 v18, v28

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-class v3, Lorg/telegram/ui/Cells/TextCheckCell;

    new-array v13, v4, [Ljava/lang/Class;

    aput-object v3, v13, v5

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v14

    move-object v10, v2

    move/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v3, v8, v5

    const-string v10, "valueTextView"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v33

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v6

    move-object/from16 v32, v8

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v4, [Ljava/lang/Class;

    aput-object v3, v13, v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v3, v8, v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v23

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move/from16 v27, v17

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v8, Landroid/view/View;

    aput-object v8, v6, v5

    sget-object v22, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v23, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-class v3, Lorg/telegram/ui/Cells/TextCell;

    new-array v11, v4, [Ljava/lang/Class;

    aput-object v3, v11, v5

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const/4 v10, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v12, v4, [Ljava/lang/Class;

    aput-object v3, v12, v5

    const-string v6, "imageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v3, v4, v5

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public hasDoneItem()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hideEmojiView()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    :cond_2
    return-void
.end method

.method public isAnimatePopupClosing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isAnimatePopupClosing:Z

    return v0
.end method

.method public isDoneItemEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->doneItemEnabled:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    return v0
.end method

.method public isPopupVisible()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWaitingForKeyboardOpen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->waitingForKeyboardOpen:Z

    return v0
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiPopup(Z)V

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->checkDiscard()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->destroyed:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDismissWithTouchOutside()Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->checkDiscard()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismissWithTouchOutside()Z

    move-result v0

    return v0
.end method

.method public onHidden()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    return-void
.end method

.method public onHideShowProgress(F)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x28

    if-ne p1, v2, :cond_16

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/CharSequence;

    aput-object p1, v2, v0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object p1

    aget-object v2, v2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v6, v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v6, v7

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_0
    add-int/2addr v4, v1

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TodoList;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TodoList;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowMarking:Z

    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowAdding:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->others_can_append:Z

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->others_can_complete:Z

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    array-length v4, v2

    if-ge p1, v4, :cond_6

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/CharSequence;

    aput-object v2, v4, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v2

    aget-object v4, v4, v0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v9, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v8, v9

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v8, v9, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iget v9, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_4
    add-int/2addr v6, v1

    goto :goto_3

    :cond_5
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TodoItem;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TodoItem;-><init>()V

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TodoItem;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TodoItem;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TodoItem;->id:I

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/2addr p1, v1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iget v2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result p1

    add-int/2addr p1, v1

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;)V

    invoke-static {v2, v4, v5, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    goto/16 :goto_a

    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->doneItemEnabled:Z

    if-nez p1, :cond_b

    const/4 p1, 0x0

    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_8

    add-int/2addr p1, v1

    :cond_8
    add-int/2addr v0, v1

    goto :goto_5

    :cond_9
    if-gtz p1, :cond_a

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->showQuizHint()V

    :cond_a
    return-void

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->questionString:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/CharSequence;

    aput-object p1, v2, v0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object p1

    aget-object v2, v2, v0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_d

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v6, v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_c

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v6, v7

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_c
    add-int/2addr v4, v1

    goto :goto_6

    :cond_d
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_poll;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_poll;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->multiple_choice:Z

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->anonymousPoll:Z

    xor-int/2addr v5, v1

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->public_voters:Z

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Poll;->question:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    new-instance p1, Lorg/telegram/tgnet/SerializedData;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->maxAnswersCount:I

    invoke-direct {p1, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    const/4 v2, 0x0

    :goto_7
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    array-length v5, v4

    if-ge v2, v5, :cond_13

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto/16 :goto_9

    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answers:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/CharSequence;

    aput-object v4, v5, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v5, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v4

    aget-object v5, v5, v0

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v6, :cond_10

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v9, v10

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v9, v10, :cond_f

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v9, v10

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_f
    add-int/2addr v7, v1

    goto :goto_8

    :cond_10
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;-><init>()V

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    new-array v4, v1, [B

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->multipleChoise:Z

    if-nez v4, :cond_11

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizPoll:Z

    if-eqz v4, :cond_12

    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->answersChecks:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_12

    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$PollAnswer;->option:[B

    aget-byte v4, v4, v0

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/SerializedData;->writeByte(B)V

    :cond_12
    :goto_9
    add-int/2addr v2, v1

    goto/16 :goto_7

    :cond_13
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    const-string v4, "answers"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_pollResults;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_pollResults;-><init>()V

    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->solutionString:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/CharSequence;

    aput-object p1, v4, v0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$PollResults;->solution_entities:Ljava/util/ArrayList;

    :cond_14
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$PollResults;->flags:I

    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iget v4, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result p1

    add-int/2addr p1, v1

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, v3, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;)V

    invoke-static {v4, v5, v6, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    :cond_16
    :goto_a
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPause()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->hideEmojiPopup(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setEmojiButtonVisibility(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onPreMeasure(II)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    if-gt p1, v0, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isAnimatePopupClosing:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_0
    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->allowNesterScroll:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    const/high16 p1, 0x42500000    # 52.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    :goto_2
    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->ignoreLayout:Z

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->topPadding:I

    if-eq p2, p1, :cond_4

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->topPadding:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->paddingRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->ignoreLayout:Z

    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 1

    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setBuildFullLayout(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->todo:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->TodoTitle:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->quizOnly:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->NewQuiz:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->NewPoll:I

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateDoneItemEnabled()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPremium:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-le p1, v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    const-string v2, "kbd_height_land3"

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    const-string v2, "kbd_height"

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-eqz v0, :cond_8

    if-eqz p2, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeightLand:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardHeight:I

    :goto_2
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    const/high16 v2, 0x42f00000    # 120.0f

    if-eqz v1, :cond_4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_5

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v0, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->wasEmojiSearchOpened:Z

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    if-eq v3, v5, :cond_8

    :cond_5
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->wasEmojiSearchOpened:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    :goto_3
    int-to-float v0, v0

    goto :goto_4

    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_3

    :goto_4
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->animateEmojiViewTranslationY(FF)V

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isEmojiSearchOpened:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->wasEmojiSearchOpened:Z

    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_9

    return-void

    :cond_9
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lastSizeChangeValue1:I

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->lastSizeChangeValue2:Z

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    if-lez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    goto :goto_6

    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    :goto_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-eqz p1, :cond_c

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->showEmojiPopup(I)V

    :cond_c
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-nez p1, :cond_d

    if-eq p1, p2, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiViewVisible:Z

    if-nez p1, :cond_d

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->emojiPadding:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_d
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->keyboardVisible:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_e

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->waitingForKeyboardOpen:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
