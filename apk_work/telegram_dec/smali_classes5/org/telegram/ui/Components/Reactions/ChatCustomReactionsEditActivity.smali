.class public Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

.field private actionButtonContainer:Landroid/widget/FrameLayout;

.field private actionButtonContainerGradient:Landroid/widget/ImageView;

.field private final allAvailableReactions:Ljava/util/List;

.field private backSpaceButtonView:Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;

.field private boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private bottomDialogLayout:Landroid/widget/FrameLayout;

.field private final chatId:J

.field private final checkAfterFastDeleteRunnable:Ljava/lang/Runnable;

.field private contentLayout:Landroid/widget/LinearLayout;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentReactionsCount:I

.field private editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

.field private emojiKeyboardVisible:Z

.field private enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private final info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private initialPaid:Z

.field private final initialSelectedEmojis:Ljava/util/HashMap;

.field private isPaused:Z

.field private final maxReactionsCount:I

.field private paid:Z

.field private paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private reactionsCount:I

.field private scrollView:Landroid/widget/ScrollView;

.field private selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field private selectedCustomReactions:I

.field private final selectedEmojisIds:Ljava/util/List;

.field private final selectedEmojisMap:Ljava/util/HashMap;

.field private selectedType:I

.field private slideView:Lorg/telegram/ui/Cells/SlideIntChooseView;

.field private switchLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$4awgJyKOZVMCCEqEHid2FG15edQ(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$checkChangesBeforeExit$15(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AHE-6gpV7lQiQfO8NX-S8DX9ZMc(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AySnEt7RrsN2eHiBFYPWJS-N-Gg(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$7(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gz7CU_isM5xjsQt_mMr08rUsReA(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$HKE6YlN-eTgrrj1dUgeAV2iv0jI(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$onResume$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$HXeb9TjvPlQ1Ky5SCKNd0ptIXaE()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$onTransitionAnimationEnd$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$KO6frcCpViVXZgEI3MsnFaEJljM(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$KjFp2GW5NvMIqGPEdvAKtD50o-c(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$closeKeyboard$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LuEiPB51fqiMfG3pGL1dWnTm5U4(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$initSelectAnimatedEmojiDialog$10(Lorg/telegram/ui/Components/AnimatedEmojiSpan;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NigpBWauH3zWZVvm_JKFiHW6tsQ(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$initSelectAnimatedEmojiDialog$11(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$POZ-TsX4le8JLvspVQot4FTX6GM(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$onFragmentCreate$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PhCFVI-WDtAS8gSu2-gN0K4wNPU(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TvBSv30jXxZy61yaFeLyKWHiTE8(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$checkChangesBeforeExit$14(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_NkX4SS7GuzgIBG4aZKg4nSkuhg(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$showKeyboard$16(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cgNt8ocorZ0txnqnVO3roNFenuI(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$kQYQp4t6tzhJZmJUdTeWwi96JIM(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lN86rpl9pwzo6AVsozW_MCxZGiM(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->showKeyboard()V

    return-void
.end method

.method public static synthetic $r8$lambda$m80USuPtTcEqs2cOzQgqYVmyx4E(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$8(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oKS2dSeSU13cGR6EW5dejJNs4g8(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$toggleStarsEnabled$18(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uK57ke-FdcQ8VviTSrSESbOergE(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(JLorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialSelectedEmojis:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->boostsChannelLevelMax:I

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkAfterFastDeleteRunnable:Ljava/lang/Runnable;

    iput-wide p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    iput-object p3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkChangesBeforeExit()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->animateChangesInNextRows(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->isClearFocusNotWorking()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->deleteSelectedEmojis()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->updateScrollViewMarginBottom(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    return-object p0
.end method

.method private animateChangesInNextRows(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->setAnimateChanges()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkChangesBeforeExit()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialSelectedEmojis:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v2, :cond_0

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedCustomReactions:I

    if-ge v2, v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialPaid:Z

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->UnsavedChanges:I

    const-string v3, "UnsavedChanges"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->ReactionApplyChangesDialog:I

    const-string v3, "ReactionApplyChangesDialog"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v3, "ApplyTheme"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->Discard:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_2
    return v1
.end method

.method private checkMaxCustomReactions(Z)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    if-nez v1, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->grabReactions(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedCustomReactions:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    if-ge v2, v1, :cond_3

    if-eqz p1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "ReactionReachLvlForReactionShort"

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedCustomReactions:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;->setLvlRequiredState(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;->removeLvlRequiredState()V

    :goto_0
    return-void
.end method

.method private closeKeyboard()Z
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->isClearFocusNotWorking()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :goto_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->updateScrollViewMarginBottom(I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-virtual {v1, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$10;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    return v0

    :cond_1
    return v2
.end method

.method private deleteSelectedEmojis()Z
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getEditTextSelectionEnd()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getEditTextSelectionStart()I

    move-result v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-class v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-wide v6, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-wide v6, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-wide v6, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->unselect(Ljava/lang/Long;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x43

    invoke-direct {v1, v4, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v4
.end method

.method private grabReactions(Z)Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;-><init>()V

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    return-object v0
.end method

.method private initSelectAnimatedEmojiDialog()V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    const/4 v9, 0x0

    const/16 v11, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object v2, v0

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v12}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$5;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setAnimationsEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v3, -0x2

    const/16 v4, 0x50

    const/4 v5, -0x1

    invoke-static {v5, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->backSpaceButtonView:Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;

    new-instance v2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;->setOnBackspace(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->backSpaceButtonView:Lorg/telegram/ui/Components/Reactions/BackSpaceButtonView;

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x55

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setMultiSelected(Ljava/lang/Long;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isClearFocusNotWorking()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$checkChangesBeforeExit$14(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private synthetic lambda$checkChangesBeforeExit$15(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$closeKeyboard$17(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    neg-float p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->toggleStarsEnabled()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    return-void
.end method

.method private synthetic lambda$createView$3()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://t.me/stickers"

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$4(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->toggleStarsEnabled()V

    return-void
.end method

.method private synthetic lambda$createView$6()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ChannelEnablePaidReactionsInfoLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$7(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "BOOSTS_REQUIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    neg-long v0, v0

    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedCustomReactions:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->showLimitReachedDialogForReactions(JILorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "REACTIONS_TOO_MANY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ReactionMaxCountError"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "CHAT_NOT_MODIFIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-nez p1, :cond_2

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz p1, :cond_1

    iget v0, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedCustomReactions:I

    if-ge v0, v1, :cond_1

    iget-wide v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    neg-long v2, v2

    invoke-static {v2, v3, v1, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->showLimitReachedDialogForReactions(JILorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->grabReactions(Z)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    iput v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentReactionsCount:I

    new-instance v7, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda17;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    new-instance v8, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda18;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController;->setCustomChatReactions(JILjava/util/List;ILjava/lang/Boolean;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initSelectAnimatedEmojiDialog$10(Lorg/telegram/ui/Components/AnimatedEmojiSpan;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    sub-int v0, p1, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$initSelectAnimatedEmojiDialog$11(Ljava/lang/Boolean;)V
    .locals 9

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->deleteSelectedEmojis()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getEditTextSelectionEnd()I

    move-result v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-wide v2, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-wide v2, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-wide v2, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->unselect(Ljava/lang/Long;)Z

    iget-wide v1, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    const-wide/16 v7, -0x1

    cmp-long v3, v1, v7

    if-nez v3, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->setMaxLength(I)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x43

    invoke-direct {v0, v4, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkAfterFastDeleteRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkAfterFastDeleteRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x15e

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, v6, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;I)V

    invoke-virtual {v6, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->setRemoved(Ljava/lang/Runnable;)V

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->animateChangesInNextRows(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$1(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialSelectedEmojis:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResume$13()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private static synthetic lambda$onTransitionAnimationEnd$12()V
    .locals 5

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showKeyboard$16(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    neg-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$toggleStarsEnabled$18(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getEditTextSelectionEnd()I

    move-result p1

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    sub-int v0, v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    if-gt v1, p1, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private setCheckedEnableReactionCell(IZZ)V
    .locals 8

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    if-eqz v2, :cond_3

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_2

    :cond_3
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_2
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    if-eqz p3, :cond_5

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimated(ZI)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimatedReverse(I)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    :goto_3
    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    const-wide/16 v2, 0x15e

    const/4 v4, 0x0

    if-eq p1, v1, :cond_8

    if-eqz p1, :cond_8

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    if-eqz p3, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->closeKeyboard()Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$7;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$8;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_5

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_8
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v4, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$6;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$6;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSelectedDocuments()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V

    add-int/2addr p3, v1

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    if-lt p3, v2, :cond_9

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->addReactionsSpan()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->notifyDataSetChanged()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    :cond_b
    :goto_5
    return-void
.end method

.method private showKeyboard()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->updateScrollViewMarginBottom(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$9;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private updateScrollViewMarginBottom(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkChangesBeforeExit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->Reactions:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$1;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$2;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v4, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/16 v5, 0x38

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setHeight(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_0
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Cells/TextCheckCell;->setColors(IIIII)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v5, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    const/16 v9, 0x10

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    sget v10, Lorg/telegram/messenger/R$string;->ReactionAddEmojiFromAnyPack:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    sget v10, Lorg/telegram/messenger/R$string;->AvailableReactions:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/HeaderCell;->setTextSize(F)V

    const/16 v11, 0xe

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(I)V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    const/high16 v13, -0x40000000    # -2.0f

    invoke-static {v6, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$3;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    iget v12, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    invoke-direct {v4, v0, v1, v11, v12}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$3;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    new-instance v11, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda4;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->setOnFocused(Ljava/lang/Runnable;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/animation/LayoutTransition;

    invoke-direct {v4}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v11, 0xc8

    invoke-virtual {v4, v11, v12}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    sget v12, Lorg/telegram/messenger/R$string;->ReactionCreateOwnPack:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v14, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda5;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    const/4 v11, 0x0

    invoke-static {v12, v13, v11, v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v1, v12}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackgroundColor(I)V

    sget v12, Lorg/telegram/messenger/R$string;->MaximumReactionsHeader:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Cells/SlideIntChooseView;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v1, v12}, Lorg/telegram/ui/Cells/SlideIntChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->slideView:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v12, v4, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v12, :cond_1

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v13, 0x100000

    and-int/2addr v12, v13

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_1
    iget v12, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v12, v12, 0x2000

    if-eqz v12, :cond_2

    :goto_1
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->reactions_limit:I

    :goto_2
    iput v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    iput v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentReactionsCount:I

    goto :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->reactionsUniqMax:I

    goto :goto_2

    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->slideView:Lorg/telegram/ui/Cells/SlideIntChooseView;

    iget v12, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget v13, v13, Lorg/telegram/messenger/MessagesController;->reactionsUniqMax:I

    const-string v14, "MaximumReactionsValue"

    invoke-static {v11, v14, v3, v13}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->make(ILjava/lang/String;II)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    move-result-object v13

    new-instance v14, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda6;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v4, v12, v13, v14}, Lorg/telegram/ui/Cells/SlideIntChooseView;->set(ILorg/telegram/ui/Cells/SlideIntChooseView$Options;Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->slideView:Lorg/telegram/ui/Cells/SlideIntChooseView;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    sget v9, Lorg/telegram/messenger/R$string;->MaximumReactionsInfo:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v9, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    const/16 v12, 0x46

    if-eqz v9, :cond_3

    new-instance v4, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v9, Lorg/telegram/messenger/R$string;->ChannelEnablePaidReactions:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v11, v11}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v9, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda7;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    sget v5, Lorg/telegram/messenger/R$string;->ChannelEnablePaidReactionsInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda8;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-static {v5, v8}, Lorg/telegram/messenger/AndroidUtilities;->withLearnMore(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->switchLayout:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v4, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    :goto_4
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainerGradient:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->gradient_bottom:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainerGradient:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainerGradient:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainerGradient:Landroid/widget/ImageView;

    const/16 v9, 0x77

    invoke-static {v6, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;->setDefaultState()V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    new-instance v5, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda9;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, 0x42940000    # 74.0f

    const/16 v19, 0x50

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButtonContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->actionButton:Lorg/telegram/ui/Components/Reactions/UpdateReactionsButton;

    const/high16 v22, 0x41500000    # 13.0f

    const/high16 v23, 0x41500000    # 13.0f

    const/high16 v18, 0x42400000    # 48.0f

    const/high16 v20, 0x41500000    # 13.0f

    const/high16 v21, 0x41500000    # 13.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$4;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$4;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->bottomDialogLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x50

    invoke-static {v6, v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsAll;

    const/4 v6, 0x2

    if-eqz v5, :cond_6

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v17

    move-object v15, v1

    move-object/from16 v16, v7

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V

    add-int/2addr v5, v3

    iget v7, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    if-lt v5, v7, :cond_4

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    invoke-direct {v0, v11, v1, v11}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    goto/16 :goto_9

    :cond_6
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    if-eqz v5, :cond_c

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v8, :cond_9

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v8

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-nez v12, :cond_8

    goto :goto_5

    :cond_8
    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v17

    move-object v15, v1

    move-object/from16 v16, v7

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v8, :cond_a

    move-object v12, v7

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v17

    move-object v15, v1

    move-object/from16 v16, v7

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_6

    :cond_a
    :goto_7
    iget v7, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    if-lt v5, v7, :cond_7

    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    invoke-direct {v0, v3, v1, v11}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    goto :goto_9

    :cond_c
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-eqz v4, :cond_d

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v5, :cond_d

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-eqz v1, :cond_d

    :goto_8
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    invoke-direct {v0, v6, v1, v11}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    goto :goto_9

    :cond_d
    if-eqz v4, :cond_10

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v17

    move-object v15, v1

    move-object/from16 v16, v7

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->addReactionToEditText(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;Ljava/util/HashMap;Ljava/util/List;Landroid/text/Editable;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Paint$FontMetricsInt;)V

    add-int/2addr v5, v3

    iget v7, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    if-lt v5, v7, :cond_e

    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_10
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->enableReactionsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v4, Lorg/telegram/messenger/R$string;->EnableReactions:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    if-ne v5, v6, :cond_12

    iget-boolean v5, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    if-eqz v5, :cond_11

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    :cond_12
    :goto_a
    invoke-virtual {v1, v4, v3, v11}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->addReactionsSpan()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v3, :cond_13

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->toggleStarsEnabled()V

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialSelectedEmojis:Ljava/util/HashMap;

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initialPaid:Z

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    neg-long v0, v0

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->closeKeyboard()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkChangesBeforeExit()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v1

    iget-wide v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    neg-long v3, v3

    new-instance v5, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->reactionsDidLoad:I

    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->allAvailableReactions:Ljava/util/List;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 11

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkAfterFastDeleteRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->currentReactionsCount:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->chatId:J

    iget v5, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->grabReactions(Z)Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->reactionsCount:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MessagesController;->setCustomChatReactions(JILjava/util/List;ILjava/lang/Boolean;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->isPaused:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->isPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->isPaused:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->emojiKeyboardVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->removeReactionsSpan(Z)V

    new-instance v0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->initSelectAnimatedEmojiDialog()V

    new-instance p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda2;-><init>()V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public toggleStarsEnabled()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_0

    new-instance v2, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->setRemoved(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->animateChangesInNextRows(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setMultiSelected(Ljava/lang/Long;Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->setMaxLength(I)V

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paid:Z

    invoke-direct {p0, v0, v1, v5}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->paidCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    iget v6, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->maxReactionsCount:I

    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;->setMaxLength(I)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v6, "b"

    invoke-direct {v0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$11;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v2, v3, v7}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity$11;-><init>(Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v2

    iput v2, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->setAdded()V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisIds:Ljava/util/List;

    invoke-interface {v2, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedEmojisMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setMultiSelected(Ljava/lang/Long;Z)V

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->checkMaxCustomReactions(Z)V

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->animateChangesInNextRows(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->selectedType:I

    invoke-direct {p0, v0, v5, v5}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->setCheckedEnableReactionCell(IZZ)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;->editText:Lorg/telegram/ui/Components/Reactions/CustomReactionEditText;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    return-void
.end method
