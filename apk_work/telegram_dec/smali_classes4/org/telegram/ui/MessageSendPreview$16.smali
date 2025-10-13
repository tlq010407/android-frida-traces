.class Lorg/telegram/ui/MessageSendPreview$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSendPreview;->allowEffectSelector(Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageSendPreview;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$cVCKSFzvSggwf7yrw0zWbUvzbvc(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/MessageSendPreview$16;->lambda$onReactionClicked$0(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iput-object p2, p0, Lorg/telegram/ui/MessageSendPreview$16;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onReactionClicked$0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v2, "effect"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method


# virtual methods
.method public synthetic drawBackground()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawBackground(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawRoundRect(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    return-void
.end method

.method public synthetic needEnterText()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$needEnterText(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onEmojiWindowDismissed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$onEmojiWindowDismissed(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v2}, Lorg/telegram/ui/MessageSendPreview;->access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget v2, v2, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->premium:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->access$1200(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_c

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->access$1200(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v14, v9, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    iget-wide v10, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->effectId:J

    cmp-long v12, v10, v14

    if-nez v12, :cond_3

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    and-int/lit8 v10, v10, -0x5

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    iput-wide v7, v9, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    iget v12, v9, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v9, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    const/16 v16, 0x0

    :goto_1
    if-nez v2, :cond_7

    iget-object v9, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v9}, Lorg/telegram/ui/MessageSendPreview;->access$1200(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v10, v5}, Lorg/telegram/ui/MessageSendPreview;->access$3700(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v11

    iget-object v10, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v10}, Lorg/telegram/ui/MessageSendPreview;->access$3100(Lorg/telegram/ui/MessageSendPreview;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v3, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    const/4 v13, 0x0

    const/4 v3, 0x0

    move-object v10, v5

    move-wide v6, v14

    move v14, v3

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    if-eqz v16, :cond_5

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    move-object v8, v1

    :goto_3
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSelectedReactionAnimated(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object v3

    if-eqz v16, :cond_6

    const/4 v1, 0x0

    :cond_6
    invoke-virtual {v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelectedReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    goto :goto_4

    :cond_7
    move-wide v6, v14

    :cond_8
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->access$4000(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clear()V

    if-nez v16, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->access$4000(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$1200(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v4, v4}, Lorg/telegram/ui/EmojiAnimationsOverlay;->showAnimationForCell(Lorg/telegram/ui/Cells/ChatMessageCell;IZZ)Z

    :cond_9
    if-eqz v2, :cond_a

    iget-object v1, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    const-wide/16 v3, 0x0

    cmp-long v8, v6, v3

    if-nez v8, :cond_a

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->access$2300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->access$2300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v3, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget-object v3, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/MessageSendPreview;->onEffectChange(J)V

    goto/16 :goto_a

    :cond_c
    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v5}, Lorg/telegram/ui/MessageSendPreview;->access$2600(Lorg/telegram/ui/MessageSendPreview;)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_17

    iget-wide v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->effectId:J

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->access$4400(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v7

    cmp-long v9, v5, v7

    iget-object v5, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    if-nez v9, :cond_d

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/MessageSendPreview;->access$4402(Lorg/telegram/ui/MessageSendPreview;J)J

    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    iget-wide v6, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->effectId:J

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/MessageSendPreview;->access$4402(Lorg/telegram/ui/MessageSendPreview;J)J

    const/4 v5, 0x0

    :goto_5
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->access$2300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->access$2300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->access$4400(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    :cond_e
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->access$4400(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/MessageSendPreview;->onEffectChange(J)V

    if-nez v2, :cond_15

    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->access$4400(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_f

    const/4 v6, 0x0

    goto :goto_6

    :cond_f
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget v6, v6, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->access$4400(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->getEffect(J)Lorg/telegram/tgnet/TLRPC$TL_availableEffect;

    move-result-object v6

    :goto_6
    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->access$2700(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->access$4400(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_12

    if-nez v6, :cond_10

    goto :goto_7

    :cond_10
    iget-object v7, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v7}, Lorg/telegram/ui/MessageSendPreview;->access$2700(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v7

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v6

    invoke-virtual {v7, v6, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_11
    const/4 v7, 0x0

    goto :goto_8

    :cond_12
    :goto_7
    iget-object v6, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v6}, Lorg/telegram/ui/MessageSendPreview;->access$2700(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    if-eqz v5, :cond_13

    move-object v6, v7

    goto :goto_9

    :cond_13
    move-object v6, v1

    :goto_9
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSelectedReactionAnimated(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getSelectAnimatedEmojiDialog()Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-result-object v3

    if-eqz v5, :cond_14

    move-object v1, v7

    :cond_14
    invoke-virtual {v3, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelectedReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->access$4300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->access$4000(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clear()V

    if-nez v5, :cond_17

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$4400(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v5

    iput-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$4400(Lorg/telegram/ui/MessageSendPreview;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_16

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    :cond_16
    new-instance v9, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget v3, v3, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    invoke-direct {v9, v3, v1, v4, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->access$4000(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v5

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/ui/EmojiAnimationsOverlay;->createDrawingObject(Ljava/lang/String;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;IZZFFZ)Z

    :cond_17
    :goto_a
    if-eqz v2, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->access$2900(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget-object v2, v2, Lorg/telegram/ui/MessageSendPreview;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v3, Lorg/telegram/messenger/R$string;->AnimatedEffectPremium:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/MessageSendPreview$16;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v5, Lorg/telegram/ui/MessageSendPreview$16$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lorg/telegram/ui/MessageSendPreview$16$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/MessageSendPreview$16;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v1}, Lorg/telegram/ui/MessageSendPreview;->access$4500(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_19
    :goto_b
    return-void
.end method
