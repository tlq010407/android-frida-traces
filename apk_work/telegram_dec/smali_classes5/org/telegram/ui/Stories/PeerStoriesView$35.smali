.class Lorg/telegram/ui/Stories/PeerStoriesView$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$3sKn3_5oIRv1RagSdW4hOjfa2l0(Lorg/telegram/ui/Stories/PeerStoriesView$35;Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$35;->lambda$onReactionClickedInternal$0(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YCpOoP9X5IABZuQxldagZ7AtdRk(Lorg/telegram/ui/Stories/PeerStoriesView$35;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$35;->lambda$onReactionClickedInternal$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$nwOTA3WAxz8vW4S6miGKYaOsubI(Lorg/telegram/ui/Stories/PeerStoriesView$35;ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$35;->lambda$onReactionClickedInternal$2(ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;Ljava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReactionClickedInternal$0(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$35;->onReactionClickedInternal(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V

    return-void
.end method

.method private synthetic lambda$onReactionClickedInternal$1()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9000(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return-void
.end method

.method private synthetic lambda$onReactionClickedInternal$2(ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;Ljava/lang/Long;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    const/4 v14, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    iget-object v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v2, v14}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v3, v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v15

    move-object/from16 v6, p3

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V

    goto :goto_0

    :cond_0
    new-instance v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v3, v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v15

    move-object/from16 v6, p3

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V

    :goto_0
    sput-object v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v1, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/messenger/R$id;->parent_tag:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-boolean v3, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    iget-object v1, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;J)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    iget-wide v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissWithAlpha()V

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->closeKeyboardOrEmoji()Z

    return-void

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;J)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->entities:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    iget-wide v5, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    iput v14, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iget-object v2, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object v2, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    :goto_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ReactionSent:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->ViewInChat:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$35;)V

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    goto/16 :goto_1
.end method


# virtual methods
.method public synthetic drawBackground()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawBackground(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
    .locals 1

    iget-object p6, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object p6

    neg-float p4, p4

    neg-float p5, p5

    iget-object p7, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p7}, Landroid/view/View;->getMeasuredWidth()I

    move-result p7

    int-to-float p7, p7

    add-float/2addr p7, p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p5

    invoke-virtual {p6, p4, p5, p7, v0}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(FFFF)V

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public needEnterText()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->needEnterText()Z

    move-result v0

    return v0
.end method

.method public onEmojiWindowDismissed()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestAdjust(Z)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 6

    xor-int/lit8 v5, p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$35;->onReactionClickedInternal(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V

    return-void
.end method

.method onReactionClickedInternal(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V
    .locals 7

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$35;Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    invoke-static {p5, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5500(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    new-instance p5, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda1;

    invoke-direct {p5, p0, p3, p2, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$35;ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-static {p4, v0, v1, p1, p5}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method
