.class Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CaptionContainerView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastLength:I

.field private lastOverLimit:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;


# direct methods
.method public static synthetic $r8$lambda$BfJxQV4EPhbKZB9VFW0zT_mF8Uw(Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->lambda$afterTextChanged$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$afterTextChanged$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->waitingForScrollYChange:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$502(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCaptionLimit()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$500(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    if-le v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$500(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$500(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I

    move-result v0

    if-lt v0, p1, :cond_1

    const v0, -0x138889

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$500(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I

    move-result v0

    if-le v0, p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$500(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getCaptionPremiumLimit()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$500(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->lastLength:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionLimitToast()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$600(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$602(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$500(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->lastLength:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$500(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)I

    move-result v0

    if-le v0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->lastOverLimit:Z

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onCaptionLimitUpdate(Z)V

    :cond_5
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->lastOverLimit:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$700(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$800(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$800(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$702(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Z)Z

    new-instance p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$200(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->beforeScrollY:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->waitingForScrollYChange:Z

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p3, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-nez p3, :cond_1

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$300(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)V

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget p3, p3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$400(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget p4, p4, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$400(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;)J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setUserOrChat(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$2;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    :cond_2
    return-void
.end method
