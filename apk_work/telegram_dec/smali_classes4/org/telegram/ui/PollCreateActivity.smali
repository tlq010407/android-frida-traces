.class public Lorg/telegram/ui/PollCreateActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;,
        Lorg/telegram/ui/PollCreateActivity$ListAdapter;,
        Lorg/telegram/ui/PollCreateActivity$TouchHelperCallback;
    }
.end annotation


# instance fields
.field private addAnswerRow:I

.field private allowAdding:Z

.field private allowAddingRow:I

.field private allowMarking:Z

.field private allowMarkingRow:I

.field private anonymousPoll:Z

.field private anonymousRow:I

.field private answerHeaderRow:I

.field private answerIds:[I

.field private answerSectionRow:I

.field private answerStartRow:I

.field private final answers:[Ljava/lang/CharSequence;

.field private final answersChecks:[Z

.field private answersCount:I

.field private currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

.field private delegate:Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;

.field private destroyed:Z

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private editing:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field private emojiPadding:I

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field public emojiViewVisible:Z

.field public emojiViewWasVisible:Z

.field private firstRequestField:Z

.field private hintShowed:Z

.field private hintView:Lorg/telegram/ui/Components/HintView;

.field private isAnimatePopupClosing:Z

.field isEmojiSearchOpened:Z

.field private isPremium:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private maxAnswerId:I

.field private final maxAnswersCount:I

.field private multipleChoise:Z

.field private multipleRow:I

.field private oldAnswersCount:I

.field private onlyAdding:Z

.field private openKeyboardRunnable:Ljava/lang/Runnable;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

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

.field private shiftDp:I

.field private sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private solutionInfoRow:I

.field private solutionRow:I

.field private solutionString:Ljava/lang/CharSequence;

.field private suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

.field private final todo:Z

.field private waitingForKeyboardOpen:Z

.field wasEmojiSearchOpened:Z


# direct methods
.method public static synthetic $r8$lambda$0FRgb5aYHXeNJFwIOaVx20DJ_uA(Lorg/telegram/ui/PollCreateActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PollCreateActivity;->lambda$hideEmojiPopup$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EdmxrXuzb7SBQM9xD_eK2M4liAs(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PollCreateActivity;->lambda$onBecomeFullyVisible$0(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QzjjAi5KN_NE5ioxt2yQl5a2Pwg(Lorg/telegram/ui/PollCreateActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PollCreateActivity;->lambda$createView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fO3VA2kn5bIxq9Z-AmlYEjWuwlQ(Lorg/telegram/ui/PollCreateActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PollCreateActivity;->lambda$showEmojiPopup$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tvbfZBCdby3pU3HNHAIiGyH8oZI(Lorg/telegram/ui/PollCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PollCreateActivity;->lambda$checkDiscard$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yp5aq0CECsw-lgJfloGqbvtH-Xc(Lorg/telegram/ui/PollCreateActivity;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PollCreateActivity;->lambda$animateEmojiViewTranslationY$3(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;ZLjava/lang/Boolean;)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    iput-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->anonymousPoll:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->allowAdding:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->allowMarking:Z

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->shiftDp:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->requestFieldFocusAtPosition:I

    new-instance v1, Lorg/telegram/ui/PollCreateActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PollCreateActivity$1;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->openKeyboardRunnable:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lorg/telegram/ui/PollCreateActivity;->todo:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->todoItemsMax:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->pollAnswersMax:I

    :goto_0
    iput p2, p0, Lorg/telegram/ui/PollCreateActivity;->maxAnswersCount:I

    new-array v1, p2, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    new-array p2, p2, [Z

    iput-object p2, p0, Lorg/telegram/ui/PollCreateActivity;->answersChecks:[Z

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->isPremium:Z

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->quizOnly:I

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->onlyAdding:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->todo:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PollCreateActivity;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->questionString:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/PollCreateActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->questionString:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->allowAdding:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->allowMarking:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PollCreateActivity;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->answerIds:[I

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->oldAnswersCount:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->delegate:Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PollCreateActivity;)[Z
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->answersChecks:[Z

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PollCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->showQuizHint()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->multipleChoise:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->anonymousPoll:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->maxAnswersCount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/PollCreateActivity$ListAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PollCreateActivity;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->solutionString:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/PollCreateActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->solutionString:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/EmojiView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/HintView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PollCreateActivity;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/PollCreateActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->isAnimatePopupClosing:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->questionHeaderRow:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->editing:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->answerHeaderRow:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->quizOnly:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->settingsHeaderRow:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->solutionInfoRow:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->settingsSectionRow:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    return p0
.end method

.method static synthetic access$4908(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Cells/PollEditTextCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->allowAddingRow:I

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/PollCreateActivity;Lorg/telegram/ui/Cells/PollEditTextCell;)Lorg/telegram/ui/Cells/PollEditTextCell;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->allowMarkingRow:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->anonymousRow:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->multipleRow:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->quizRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PollCreateActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PollCreateActivity;->setTextLeft(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->firstRequestField:Z

    return p0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/PollCreateActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->firstRequestField:Z

    return p1
.end method

.method static synthetic access$5700(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->requestFieldFocusAtPosition:I

    return p0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/PollCreateActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PollCreateActivity;->requestFieldFocusAtPosition:I

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->isPremium:Z

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/PollCreateActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PollCreateActivity;->hideEmojiPopup(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->destroyed:Z

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->questionRow:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->addAnswerRow:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/PollCreateActivity;Lorg/telegram/ui/Cells/PollEditTextCell;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PollCreateActivity;->onCellFocusChanges(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V

    return-void
.end method

.method static synthetic access$6300(Lorg/telegram/ui/PollCreateActivity;Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PollCreateActivity;->onEmojiClicked(Lorg/telegram/ui/Cells/PollEditTextCell;)V

    return-void
.end method

.method static synthetic access$6400(Lorg/telegram/ui/PollCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->updateRows()V

    return-void
.end method

.method static synthetic access$6500(Lorg/telegram/ui/PollCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->checkDoneButton()V

    return-void
.end method

.method static synthetic access$6600(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->solutionRow:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->questionSectionRow:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/PollCreateActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PollCreateActivity;->answerSectionRow:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/PollCreateActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->addNewField()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PollCreateActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PollCreateActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PollCreateActivity;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private addNewField()V
    .locals 6

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->resetSuggestEmojiPanel()V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->answersChecks:[Z

    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->answerIds:[I

    if-eqz v0, :cond_2

    new-array v0, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->answerIds:[I

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget v4, v4, v3

    goto :goto_1

    :cond_0
    iget v4, p0, Lorg/telegram/ui/PollCreateActivity;->maxAnswerId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/ui/PollCreateActivity;->maxAnswerId:I

    :goto_1
    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->answerIds:[I

    :cond_2
    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->addAnswerRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->addAnswerRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->updateRows()V

    iput-boolean v2, p0, Lorg/telegram/ui/PollCreateActivity;->firstRequestField:Z

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->requestFieldFocusAtPosition:I

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->answerSectionRow:I

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

    new-instance v1, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PollCreateActivity;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lorg/telegram/ui/PollCreateActivity$6;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PollCreateActivity$6;-><init>(Lorg/telegram/ui/PollCreateActivity;F)V

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
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->editing:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->onlyAdding:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->questionString:Ljava/lang/CharSequence;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v3, v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_6

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TodoItem;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TodoItem;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->questionString:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_3
    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    if-ge v2, v1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move v2, v0

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :goto_4
    if-nez v2, :cond_c

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->todo:Z

    if-eqz v1, :cond_a

    sget v1, Lorg/telegram/messenger/R$string;->CancelTodoAlertTitle:I

    goto :goto_5

    :cond_a
    sget v1, Lorg/telegram/messenger/R$string;->CancelPollAlertTitle:I

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->todo:Z

    if-eqz v1, :cond_b

    sget v1, Lorg/telegram/messenger/R$string;->CancelTodoAlertText:I

    goto :goto_6

    :cond_b
    sget v1, Lorg/telegram/messenger/R$string;->CancelPollAlertText:I

    :goto_6
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_c
    return v2
.end method

.method private checkDoneButton()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->answersChecks:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->answersChecks:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->solutionString:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->solutionString:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v4, 0xc8

    if-le v0, v4, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->questionString:Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->questionString:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v4, 0xff

    if-le v0, v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    array-length v6, v5

    if-ge v0, v6, :cond_7

    aget-object v5, v5, v0

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->getFixedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    aget-object v5, v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->todo:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x2

    :goto_3
    if-lt v4, v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    if-eqz v0, :cond_9

    if-ge v2, v3, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v0, 0x0

    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v5, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    if-eqz v5, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    if-eqz v0, :cond_d

    :cond_c
    const/4 v1, 0x1

    :cond_d
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_e
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private collapseSearchEmojiView()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiPadding:I

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->wasEmojiSearchOpened:Z

    iput-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PollCreateActivity;->animateEmojiViewTranslationY(FF)V

    :cond_0
    return-void
.end method

.method private createEmojiView()V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

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

    iput-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/PollCreateActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PollCreateActivity$9;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private hideEmojiPopup(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/PollCreateActivity;->isPremium:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->scrollEmojiToTop()V

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    invoke-direct {p0, v1}, Lorg/telegram/ui/PollCreateActivity;->showEmojiPopup(I)V

    :cond_2
    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

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

    new-instance v1, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->isAnimatePopupClosing:Z

    new-instance v0, Lorg/telegram/ui/PollCreateActivity$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PollCreateActivity$8;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/PollCreateActivity;->hideEmojiView()V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$animateEmojiViewTranslationY$3(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$checkDiscard$2(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;I)V
    .locals 8

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->addAnswerRow:I

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->addNewField()V

    goto/16 :goto_8

    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_14

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->onlyAdding:Z

    if-eqz v1, :cond_2

    iget p2, p0, Lorg/telegram/ui/PollCreateActivity;->shiftDp:I

    neg-int p2, p2

    iput p2, p0, Lorg/telegram/ui/PollCreateActivity;->shiftDp:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    :cond_2
    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->anonymousRow:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->anonymousPoll:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->anonymousPoll:Z

    goto/16 :goto_6

    :cond_3
    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->allowAddingRow:I

    if-ne p2, v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->allowAdding:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->allowAdding:Z

    goto/16 :goto_6

    :cond_4
    iget v3, p0, Lorg/telegram/ui/PollCreateActivity;->allowMarkingRow:I

    if-ne p2, v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/PollCreateActivity;->allowMarking:Z

    xor-int/2addr v3, v2

    iput-boolean v3, p0, Lorg/telegram/ui/PollCreateActivity;->allowMarking:Z

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->updateRows()V

    iget v4, p0, Lorg/telegram/ui/PollCreateActivity;->allowAddingRow:I

    if-ltz v4, :cond_5

    if-gez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    :cond_5
    if-ltz v1, :cond_6

    if-gez v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_6
    :goto_0
    move v1, v3

    goto/16 :goto_6

    :cond_7
    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->multipleRow:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p2, v1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->multipleChoise:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->multipleChoise:Z

    if-eqz v1, :cond_10

    iget-boolean v5, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    if-eqz v5, :cond_10

    iget v5, p0, Lorg/telegram/ui/PollCreateActivity;->solutionRow:I

    iput-boolean v4, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->updateRows()V

    iget-object v6, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v7, p0, Lorg/telegram/ui/PollCreateActivity;->quizRow:I

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    iget v6, p0, Lorg/telegram/ui/PollCreateActivity;->quizRow:I

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    invoke-virtual {v4, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_6

    :cond_9
    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->quizOnly:I

    if-eqz v1, :cond_a

    return-void

    :cond_a
    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    iget v5, p0, Lorg/telegram/ui/PollCreateActivity;->solutionRow:I

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->updateRows()V

    iget-boolean v6, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    if-eqz v6, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    iget v6, p0, Lorg/telegram/ui/PollCreateActivity;->solutionRow:I

    invoke-virtual {v5, v6, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_2

    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    invoke-virtual {v6, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :goto_2
    iget-boolean v3, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lorg/telegram/ui/PollCreateActivity;->multipleChoise:Z

    if-eqz v3, :cond_d

    iput-boolean v4, p0, Lorg/telegram/ui/PollCreateActivity;->multipleChoise:Z

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v5, p0, Lorg/telegram/ui/PollCreateActivity;->multipleRow:I

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_3

    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    iget v5, p0, Lorg/telegram/ui/PollCreateActivity;->multipleRow:I

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_d
    :goto_3
    iget-boolean v3, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/PollCreateActivity;->answersChecks:[Z

    array-length v7, v6

    if-ge v3, v7, :cond_10

    if-eqz v5, :cond_e

    aput-boolean v4, v6, v3

    goto :goto_5

    :cond_e
    aget-boolean v6, v6, v3

    if-eqz v6, :cond_f

    const/4 v5, 0x1

    :cond_f
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_10
    :goto_6
    iget-boolean v3, p0, Lorg/telegram/ui/PollCreateActivity;->hintShowed:Z

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    if-nez v3, :cond_11

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    iget v3, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    :goto_7
    iget v4, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    iget v5, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_13

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v4, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v5, :cond_12

    check-cast v4, Lorg/telegram/ui/Cells/PollEditTextCell;

    iget-boolean v5, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->setShowCheckBox(ZZ)V

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity;->answersChecks:[Z

    iget v6, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    sub-int v6, v3, v6

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setChecked(ZZ)V

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le v5, v6, :cond_12

    iget v5, p0, Lorg/telegram/ui/PollCreateActivity;->quizRow:I

    if-ne p2, v5, :cond_12

    iget-boolean v5, p0, Lorg/telegram/ui/PollCreateActivity;->hintShowed:Z

    if-nez v5, :cond_12

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/PollEditTextCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    iput-boolean v2, p0, Lorg/telegram/ui/PollCreateActivity;->hintShowed:Z

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_13
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->checkDoneButton()V

    :cond_14
    :goto_8
    return-void
.end method

.method private synthetic lambda$hideEmojiPopup$5(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private static synthetic lambda$onBecomeFullyVisible$0(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$showEmojiPopup$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private onCellFocusChanges(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->isPremium:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->collapseSearchEmojiView()V

    iput-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setEmojiButtonVisibility(Z)V

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/PollCreateActivity;->updateSuggestEmojiPanelDelegate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->collapseSearchEmojiView()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/PollCreateActivity;->hideEmojiPopup(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->openKeyboardInternal()V

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

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    iget-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->collapseSearchEmojiView()V

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->openKeyboardInternal()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/PollCreateActivity;->showEmojiPopup(I)V

    :goto_0
    return-void
.end method

.method private openKeyboardInternal()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitKeyboard()V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/PollCreateActivity;->showEmojiPopup(I)V

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardVisible:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->waitingForKeyboardOpen:Z

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private resetSuggestEmojiPanel()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->setDelegate(Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_0
    return-void
.end method

.method private setTextLeft(Landroid/view/View;I)V
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->questionRow:I

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity;->questionString:Ljava/lang/CharSequence;

    const/16 v1, 0xff

    if-eqz p2, :cond_1

    const/16 v2, 0xff

    goto :goto_0

    :cond_1
    const/16 p2, 0xff

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->solutionRow:I

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity;->solutionString:Ljava/lang/CharSequence;

    const/16 v1, 0xc8

    if-eqz p2, :cond_3

    const/16 v2, 0xc8

    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    goto :goto_2

    :cond_3
    const/16 p2, 0xc8

    :goto_1
    move v2, p2

    const/4 p2, 0x0

    :goto_2
    sub-int/2addr v1, p2

    goto :goto_4

    :cond_4
    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    if-lt p2, v1, :cond_8

    iget v2, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    add-int/2addr v2, v1

    if-ge p2, v2, :cond_8

    sub-int/2addr p2, v1

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    const/16 v2, 0x64

    rsub-int/lit8 v1, p2, 0x64

    :goto_4
    int-to-float p2, v1

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float v3, v3, v2

    sub-float/2addr v2, v3

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_7

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

    if-gez v1, :cond_6

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_5

    :cond_6
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    :goto_5
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->setText2(Ljava/lang/String;)V

    :cond_8
    :goto_6
    return-void
.end method

.method private showEmojiPopup(I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/PollCreateActivity;->isPremium:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->createEmojiView()V

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    iget-boolean v2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    iput-boolean v2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewWasVisible:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget v3, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeight:I

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v5, 0x43160000    # 150.0f

    if-gtz v3, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_1
    iput v3, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeight:I

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const-string v7, "kbd_height"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_3
    :goto_2
    iget v3, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeightLand:I

    if-gtz v3, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_3
    iput v3, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeightLand:I

    goto :goto_4

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const-string v5, "kbd_height_land3"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_3

    :cond_5
    :goto_4
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v4, v3, :cond_6

    iget v3, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeightLand:I

    goto :goto_5

    :cond_6
    iget v3, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeight:I

    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_7

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_7
    iput v3, p0, Lorg/telegram/ui/PollCreateActivity;->emojiPadding:I

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_8
    if-nez p1, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardVisible:Z

    if-nez p1, :cond_e

    iget p1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiPadding:I

    int-to-float p1, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p1, v2, v1

    const/4 p1, 0x0

    aput p1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/PollCreateActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PollCreateActivity$7;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    if-eqz v2, :cond_a

    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_c

    iget-boolean v2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    iput-boolean v2, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewWasVisible:Z

    iput-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    iput-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v2, :cond_b

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_c

    :cond_b
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_c
    if-nez p1, :cond_d

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiPadding:I

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_e
    :goto_6
    return-void
.end method

.method private showQuizHint()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    :goto_0
    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    iget v2, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateRows()V
    .locals 7

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->questionHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->questionRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->questionSectionRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->answerHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->solutionRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->solutionInfoRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->addAnswerRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->anonymousRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->multipleRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->allowAddingRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->allowMarkingRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->quizRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->settingsSectionRow:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->settingsHeaderRow:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->todo:Z

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lorg/telegram/ui/PollCreateActivity;->onlyAdding:Z

    if-nez v5, :cond_1

    :cond_0
    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->questionHeaderRow:I

    iput v4, p0, Lorg/telegram/ui/PollCreateActivity;->questionRow:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->questionSectionRow:I

    iput v2, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PollCreateActivity;->answerHeaderRow:I

    :cond_1
    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    if-eqz v0, :cond_2

    iget v5, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    add-int/2addr v5, v0

    iput v5, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    array-length v5, v5

    if-eq v0, v5, :cond_3

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->addAnswerRow:I

    :cond_3
    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->answerSectionRow:I

    if-eqz v1, :cond_4

    iget-boolean v6, p0, Lorg/telegram/ui/PollCreateActivity;->onlyAdding:Z

    if-eqz v6, :cond_4

    return-void

    :cond_4
    add-int/lit8 v6, v0, 0x2

    iput v6, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/PollCreateActivity;->settingsHeaderRow:I

    if-eqz v1, :cond_5

    add-int/lit8 v1, v0, 0x3

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/PollCreateActivity;->allowMarkingRow:I

    iget-boolean v3, p0, Lorg/telegram/ui/PollCreateActivity;->allowMarking:Z

    if-eqz v3, :cond_a

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->allowAddingRow:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_7

    :cond_6
    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->anonymousRow:I

    :cond_7
    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->quizOnly:I

    if-eq v0, v4, :cond_8

    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->multipleRow:I

    :cond_8
    if-nez v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->quizRow:I

    :cond_9
    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->settingsSectionRow:I

    iget-boolean v2, p0, Lorg/telegram/ui/PollCreateActivity;->quizPoll:Z

    if-eqz v2, :cond_a

    add-int/lit8 v2, v0, 0x2

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->solutionRow:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PollCreateActivity;->solutionInfoRow:I

    :cond_a
    :goto_0
    return-void
.end method

.method private updateSuggestEmojiPanelDelegate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->getDelegate()Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;

    move-result-object v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->setDelegate(Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->todo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->onlyAdding:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->TodoAddTasksTitle:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->TodoEditTitle:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->quizOnly:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->NewQuiz:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->NewPoll:I

    goto :goto_0

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/PollCreateActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PollCreateActivity$2;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->todo:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->onlyAdding:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/messenger/R$string;->TodoAddTasksButton:I

    goto :goto_2

    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->TodoEditTasksButton:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->Create:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PollCreateActivity$ListAdapter;-><init>(Lorg/telegram/ui/PollCreateActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    new-instance v0, Lorg/telegram/ui/PollCreateActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PollCreateActivity$3;-><init>(Lorg/telegram/ui/PollCreateActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/PollCreateActivity$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PollCreateActivity$4;-><init>(Lorg/telegram/ui/PollCreateActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15e

    invoke-virtual {v1, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lorg/telegram/ui/PollCreateActivity$TouchHelperCallback;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PollCreateActivity$TouchHelperCallback;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PollCreateActivity$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PollCreateActivity$5;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v1, Lorg/telegram/ui/Components/HintView;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    sget v4, Lorg/telegram/messenger/R$string;->PollTapToSelect:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->hintView:Lorg/telegram/ui/Components/HintView;

    const/high16 v9, 0x41980000    # 19.0f

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41980000    # 19.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->isPremium:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v1, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    new-instance v1, Lorg/telegram/ui/Components/SuggestEmojiView;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, v4, v2, v5}, Lorg/telegram/ui/Components/SuggestEmojiView;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forbidCopy()V

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forbidSetAsStatus()V

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->setHorizontalPadding(I)V

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    const/4 v1, -0x2

    const/16 v4, 0xa0

    invoke-static {v1, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    new-instance p1, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->checkDoneButton()V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public deleteItem(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    iget v2, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    sub-int v2, v1, v2

    iget-boolean v3, p0, Lorg/telegram/ui/PollCreateActivity;->onlyAdding:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/PollCreateActivity;->oldAnswersCount:I

    if-ge v2, v3, :cond_1

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    add-int/lit8 v4, v2, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v2

    invoke-static {v3, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->answersChecks:[Z

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v2

    invoke-static {v3, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    array-length v4, v3

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->answersChecks:[Z

    array-length v4, v3

    sub-int/2addr v4, v0

    const/4 v6, 0x0

    aput-boolean v6, v3, v4

    iget v3, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->answerIds:[I

    if-eqz v4, :cond_4

    new-array v4, v3, [I

    :goto_0
    if-ge v6, v3, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/PollCreateActivity;->answerIds:[I

    if-lt v6, v2, :cond_2

    add-int/lit8 v8, v6, 0x1

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    aget v7, v7, v8

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iput-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->answerIds:[I

    :cond_4
    iget v2, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    array-length v4, v3

    sub-int/2addr v4, v0

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    iget v4, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    array-length v3, v3

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :goto_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/PollCreateActivity;->hideEmojiPopup(Z)V

    goto :goto_3

    :cond_7
    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->checkDoneButton()V

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->updateRows()V

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/SuggestEmojiView;->setDelegate(Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;)V

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->answerSectionRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_a
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public getEmojiPadding()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiPadding:I

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 49

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const-class v11, Lorg/telegram/ui/Cells/HeaderCell;

    const-class v12, Lorg/telegram/ui/Cells/TextCell;

    const-class v13, Lorg/telegram/ui/Cells/PollEditTextCell;

    const-class v14, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v11, v5, v15

    const/4 v9, 0x1

    aput-object v12, v5, v9

    const/4 v2, 0x2

    aput-object v13, v5, v2

    const/4 v2, 0x3

    aput-object v14, v5, v2

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    const/4 v15, 0x1

    move/from16 v9, v16

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v21

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v24, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v11, v4, v6

    const-string v6, "textView2"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v30

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v4

    move/from16 v34, v25

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v36, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v38

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v39, 0x0

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v13, v4, v7

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v30

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v4

    move/from16 v34, v39

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v42, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v13, v4, v7

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v44

    sget v48, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v45, 0x0

    move-object/from16 v40, v2

    move-object/from16 v41, v3

    move-object/from16 v43, v4

    invoke-direct/range {v40 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v13, v4, v7

    const-string v7, "deleteImageView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v30

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v4

    move/from16 v34, v8

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v42, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v13, v4, v9

    const-string v9, "moveImageView"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v44

    move-object/from16 v40, v2

    move-object/from16 v41, v3

    move-object/from16 v43, v4

    move/from16 v48, v8

    invoke-direct/range {v40 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v28, v4, v9

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v13, v4, v9

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v30

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v4

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v13, v4, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v13, v4, v6

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v44

    const/16 v42, 0x0

    move-object/from16 v40, v2

    move-object/from16 v41, v3

    move-object/from16 v43, v4

    invoke-direct/range {v40 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v13, v4, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/16 v19, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move/from16 v25, v30

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v14, v4, v7

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v35

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v14, v4, v7

    const-string v7, "valueTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v21

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v14, v4, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v35

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v14, v4, v7

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move/from16 v25, v39

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v12, v4, v6

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v44

    sget v48, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    move-object/from16 v40, v2

    move-object/from16 v41, v3

    move-object/from16 v43, v4

    invoke-direct/range {v40 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v35

    const/16 v38, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v12, v4, v6

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public hideEmojiView()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiPadding:I

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiPadding:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    :cond_2
    return-void
.end method

.method protected hideKeyboardOnShow()Z
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->requestFieldFocusAtPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLightStatusBar()Z
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    :cond_1
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/PollCreateActivity;->hideEmojiPopup(Z)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public onBecomeFullyVisible()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->firstRequestField:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->requestFieldFocusAtPosition:I

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/PollCreateActivity;->requestFieldFocusAtPosition:I

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    instance-of v1, v2, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v1, :cond_2

    check-cast v2, Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PollCreateActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    const-wide/16 v3, 0x12c

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->requestFieldFocusAtPosition:I

    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->firstRequestField:Z

    :cond_3
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->updateRows()V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->destroyed:Z

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->isPremium:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->isPremium:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PollCreateActivity;->hideEmojiPopup(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->suggestEmojiPanel:Lorg/telegram/ui/Components/SuggestEmojiView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setEmojiButtonVisibility(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->listAdapter:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->isPremium:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-le p1, v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardVisible:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iput p1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeightLand:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeightLand:I

    const-string v2, "kbd_height_land3"

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_1
    iput p1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeight:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeight:I

    const-string v2, "kbd_height"

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    if-eqz v0, :cond_8

    if-eqz p2, :cond_3

    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeightLand:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardHeight:I

    :goto_2
    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    const/high16 v2, 0x42f00000    # 120.0f

    if-eqz v1, :cond_4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_5

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v0, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/PollCreateActivity;->wasEmojiSearchOpened:Z

    iget-boolean v5, p0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    if-eq v3, v5, :cond_8

    :cond_5
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/PollCreateActivity;->emojiPadding:I

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->wasEmojiSearchOpened:Z

    iget-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

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

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PollCreateActivity;->animateEmojiViewTranslationY(FF)V

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->isEmojiSearchOpened:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->wasEmojiSearchOpened:Z

    :cond_8
    iget v0, p0, Lorg/telegram/ui/PollCreateActivity;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_9

    return-void

    :cond_9
    iput p1, p0, Lorg/telegram/ui/PollCreateActivity;->lastSizeChangeValue1:I

    iput-boolean p2, p0, Lorg/telegram/ui/PollCreateActivity;->lastSizeChangeValue2:Z

    iget-boolean p2, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->currentCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    if-lez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardVisible:Z

    goto :goto_6

    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardVisible:Z

    :goto_6
    iget-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardVisible:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    if-eqz p1, :cond_c

    invoke-direct {p0, v1}, Lorg/telegram/ui/PollCreateActivity;->showEmojiPopup(I)V

    :cond_c
    iget p1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiPadding:I

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardVisible:Z

    if-nez p1, :cond_d

    if-eq p1, p2, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiViewVisible:Z

    if-nez p1, :cond_d

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->emojiPadding:I

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_d
    iget-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->keyboardVisible:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_e

    iput-boolean v1, p0, Lorg/telegram/ui/PollCreateActivity;->waitingForKeyboardOpen:Z

    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->delegate:Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;

    return-void
.end method

.method public setEditing(Lorg/telegram/tgnet/TLRPC$MessageMedia;Z)V
    .locals 1

    .line 0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/PollCreateActivity;->setEditing(Lorg/telegram/tgnet/TLRPC$MessageMedia;ZI)V

    return-void
.end method

.method public setEditing(Lorg/telegram/tgnet/TLRPC$MessageMedia;ZI)V
    .locals 11

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity;->editing:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-boolean p2, p0, Lorg/telegram/ui/PollCreateActivity;->onlyAdding:Z

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    new-instance p2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->questionString:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->questionString:Ljava/lang/CharSequence;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/PollCreateActivity;->questionString:Ljava/lang/CharSequence;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TodoList;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    iput v1, p0, Lorg/telegram/ui/PollCreateActivity;->oldAnswersCount:I

    iput v3, p0, Lorg/telegram/ui/PollCreateActivity;->maxAnswerId:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/ui/PollCreateActivity;->answerIds:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TodoItem;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TodoItem;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    aput-object v5, v4, v1

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    aget-object v5, v4, v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    aget-object v5, v4, v1

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->answers:[Ljava/lang/CharSequence;

    aget-object v5, v4, v1

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity;->answerIds:[I

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TodoList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TodoItem;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TodoItem;->id:I

    aput v4, v2, v1

    iget v2, p0, Lorg/telegram/ui/PollCreateActivity;->maxAnswerId:I

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity;->answerIds:[I

    aget v4, v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/PollCreateActivity;->maxAnswerId:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;->todo:Lorg/telegram/tgnet/TLRPC$TodoList;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TodoList;->others_can_complete:Z

    iput-boolean p2, p0, Lorg/telegram/ui/PollCreateActivity;->allowMarking:Z

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TodoList;->others_can_append:Z

    iput-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->allowAdding:Z

    iget-boolean p1, p0, Lorg/telegram/ui/PollCreateActivity;->onlyAdding:Z

    if-eqz p1, :cond_2

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    invoke-direct {p0}, Lorg/telegram/ui/PollCreateActivity;->updateRows()V

    iput-boolean v0, p0, Lorg/telegram/ui/PollCreateActivity;->firstRequestField:Z

    iget p1, p0, Lorg/telegram/ui/PollCreateActivity;->answerStartRow:I

    if-gez p3, :cond_1

    iget p2, p0, Lorg/telegram/ui/PollCreateActivity;->answersCount:I

    add-int/lit8 p3, p2, -0x1

    :cond_1
    add-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/PollCreateActivity;->requestFieldFocusAtPosition:I

    :cond_2
    return-void
.end method
