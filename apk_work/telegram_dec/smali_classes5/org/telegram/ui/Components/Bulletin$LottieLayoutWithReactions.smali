.class public Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;
.super Lorg/telegram/ui/Components/Bulletin$LottieLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LottieLayoutWithReactions"
.end annotation


# instance fields
.field private bulletin:Lorg/telegram/ui/Components/Bulletin;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final messagesCount:I

.field private newMessagesByIds:Lorg/telegram/messenger/support/SparseLongArray;

.field private reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput p2, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->messagesCount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->init()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/Components/ReactionsContainerLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/messenger/support/SparseLongArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->newMessagesByIds:Lorg/telegram/messenger/support/SparseLongArray;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->messagesCount:I

    return p0
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->savedMessagesForwarded:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/messenger/support/SparseLongArray;

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->newMessagesByIds:Lorg/telegram/messenger/support/SparseLongArray;

    :cond_0
    return-void
.end method

.method protected getMeasuredBackgroundHeight()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hideReactionsDialog()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->dismissWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v2, -0x40000000    # -2.0f

    const v3, 0x800033

    const/high16 v4, 0x42600000    # 56.0f

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v1, 0x42400000    # 48.0f

    const v2, 0x800033

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;

    iget-object v5, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v7

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v4, 0x3

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$1;-><init>(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v1, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions$2;-><init>(Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTop(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setBubbleOffset(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    sget v2, Lorg/telegram/messenger/R$string;->SavedTagReactionsHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x42b90000    # 92.5f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->savedMessagesForwarded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->savedMessagesForwarded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public setBulletin(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method
