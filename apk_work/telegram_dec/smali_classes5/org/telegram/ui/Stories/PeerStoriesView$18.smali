.class Lorg/telegram/ui/Stories/PeerStoriesView$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$HHOS4bU77ZQ6VRBrOH8Es_XXv_4(Lorg/telegram/ui/Stories/PeerStoriesView$18;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$18;->lambda$onMessageSend$0(J)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onMessageSend$0(J)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    return-void
.end method


# virtual methods
.method public synthetic bottomPanelTranslationYChanged(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$bottomPanelTranslationYChanged(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;F)V

    return-void
.end method

.method public synthetic checkCanRemoveRestrictionsByBoosts()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$checkCanRemoveRestrictionsByBoosts(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public didPressAttachButton()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return-void
.end method

.method public synthetic didPressSuggestionButton()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$didPressSuggestionButton(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic getContentViewHeight()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getContentViewHeight(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)I

    move-result v0

    return v0
.end method

.method public synthetic getReplyQuote()Lorg/telegram/ui/ChatActivity$ReplyQuote;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getReplyQuote(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    return-object v0
.end method

.method public getReplyToStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-object v0
.end method

.method public synthetic getSendAsPeers()Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getSendAsPeers(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hasForwardingMessages()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$hasForwardingMessages(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic hasScheduledMessages()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$hasScheduledMessages(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public isVideoRecordingPaused()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic measureKeyboardHeight()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$measureKeyboardHeight(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)I

    move-result v0

    return v0
.end method

.method public needChangeVideoPreviewState(IF)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->changeVideoPreviewState(IF)V

    :cond_0
    return-void
.end method

.method public needSendTyping()V
    .locals 0

    return-void
.end method

.method public needShowMediaBanHint()V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return-void

    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v2, Lorg/telegram/ui/Components/HintView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/16 v5, 0x9

    invoke-direct {v2, v3, v5, v4}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7402(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/HintView;)Lorg/telegram/ui/Components/HintView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;

    move-result-object v2

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v9, 0x0

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    if-ltz v5, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lorg/telegram/messenger/R$string;->VideoMessagesRestrictedByPrivacy:I

    goto :goto_1

    :cond_4
    sget v3, Lorg/telegram/messenger/R$string;->VoiceMessagesRestrictedByPrivacy:I

    :goto_1
    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAudioVideoButtonContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    return-void
.end method

.method public needStartRecordAudio(I)V
    .locals 0

    return-void
.end method

.method public needStartRecordVideo(IZIIJJ)V
    .locals 10

    move-object v0, p0

    move v2, p1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7200(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/InstantCameraView;->showCamera(Z)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_5

    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v5

    if-ne v2, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/InstantCameraView;->cancel(Z)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/InstantCameraView;->send(IZIIJJ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onAttachButtonHidden()V
    .locals 0

    return-void
.end method

.method public onAttachButtonShow()V
    .locals 0

    return-void
.end method

.method public onAudioVideoInterfaceUpdated()V
    .locals 0

    return-void
.end method

.method public synthetic onContextMenuClose()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onContextMenuClose(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic onContextMenuOpen()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onContextMenuOpen(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic onEditTextScroll()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onEditTextScroll(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic onKeyboardRequested()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onKeyboardRequested(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public onMessageEditEnd(Z)V
    .locals 0

    return-void
.end method

.method public onMessageSend(Ljava/lang/CharSequence;ZIJ)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$18$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4, p5}, Lorg/telegram/ui/Stories/PeerStoriesView$18$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$18;J)V

    const-wide/16 p2, 0xc8

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const-wide/16 p2, 0x0

    cmp-long v0, p4, p2

    if-gtz v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    :goto_1
    return-void
.end method

.method public onPreAudioVideoRecord()V
    .locals 0

    return-void
.end method

.method public onSendLongClick()V
    .locals 0

    return-void
.end method

.method public onStickersExpandedChange()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onStickersTab(Z)V
    .locals 0

    return-void
.end method

.method public onSwitchRecordMode(Z)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;ZZ)V
    .locals 6

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6900(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->setDialogId(J)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setUserOrChat(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getCursorPosition()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTextSelectionChanged(II)V
    .locals 0

    return-void
.end method

.method public onTextSpansChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public synthetic onTrendingStickersShowed(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onTrendingStickersShowed(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;Z)V

    return-void
.end method

.method public onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onWindowSizeChanged(I)V
    .locals 0

    return-void
.end method

.method public onceVoiceAvailable()Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public synthetic openScheduledMessages()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$openScheduledMessages(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic prepareMessageSending()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$prepareMessageSending(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic scrollToSendingMessage()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$scrollToSendingMessage(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public toggleVideoRecordingPause()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$18;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->togglePause()V

    :cond_0
    return-void
.end method
