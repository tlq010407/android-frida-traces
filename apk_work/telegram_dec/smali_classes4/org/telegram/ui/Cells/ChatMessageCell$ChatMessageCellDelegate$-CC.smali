.class public abstract synthetic Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$canDrawOutboundsContent(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static $default$canPerformActions(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$canPerformReply(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z
    .locals 0

    .line 0
    invoke-interface {p0}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->canPerformActions()Z

    move-result p0

    return p0
.end method

.method public static $default$didLongPress(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didLongPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didLongPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFF)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$didLongPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didLongPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$didLongPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FF)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$didPressAboutRevenueSharingAds(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressAnimatedEmoji(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$didPressBoostCounter(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFFZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressChannelRecommendation(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressChannelRecommendationsClose(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressCodeCopy(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressCommentButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressEffect(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressExtendedMediaPreview(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressFactCheck(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressFactCheckWhat(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressGiveawayChatButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressGroupImage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;FF)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressHiddenForward(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressHint(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressImage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FFZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressMoreChannelRecommendations(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressOther(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;IFFZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressRevealSensitiveContent(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressSponsoredClose(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressSponsoredInfo(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressTime(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$didPressUrl(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FFZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressUserStatus(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressViaBot(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressViaBotNotInline(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;J)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressVoteButtons(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/util/ArrayList;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didPressWebPage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$didQuickShareEnd(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didQuickShareMove(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didQuickShareStart(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$didStartVideoStream(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$doNotShowLoadingReply(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide p0

    const-wide/32 v0, 0x4bc5fe8d

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static $default$forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$getAdminRank(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;J)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static $default$getPinchToZoomHelper(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Lorg/telegram/ui/PinchToZoomHelper;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static $default$getProgressLoadingBotButtonUrl(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static $default$getProgressLoadingLink(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/style/CharacterStyle;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static $default$getTextSelectionHelper(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static $default$hasSelectedMessages(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$invalidateBlur(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$isLandscape(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$isProgressLoading(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$isReplyOrSelf(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$keyboardIsOpened(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$needOpenWebView(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$needPlayMessage(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$needReloadPolls(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$needShowPremiumBulletin(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$onAccessibilityAction(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;ILandroid/os/Bundle;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$onDiceFinished(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$setShouldNotRepeatSticker(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static $default$shouldDrawThreadProgress(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$shouldRepeatSticker(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static $default$videoTimerReached(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    return-void
.end method
