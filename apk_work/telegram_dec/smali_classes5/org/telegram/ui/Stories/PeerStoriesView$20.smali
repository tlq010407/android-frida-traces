.class Lorg/telegram/ui/Stories/PeerStoriesView$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/MentionsContainerView$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createMentionsContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$b-6cE-pvg3YB6JXdWKTbYImUzk4(Lorg/telegram/ui/Stories/PeerStoriesView$20;Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZILjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$20;->lambda$sendBotInlineResult$1(Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZILjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n2FGU0LJXYcGxDmBIMrBMlmeiZA(Lorg/telegram/ui/Stories/PeerStoriesView$20;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$20;->lambda$onStickerSelected$0(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStickerSelected$0(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v14, p3

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v4

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMonoForumPeerId()J

    move-result-wide v19

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v21

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v1 .. v21}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZIZLjava/lang/Object;Ljava/lang/String;IJJLorg/telegram/messenger/MessageSuggestionParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addStickerToRecent(Lorg/telegram/tgnet/TLRPC$Document;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    return-void
.end method

.method private synthetic lambda$sendBotInlineResult$1(Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZILjava/lang/Long;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getContextBotId()J

    move-result-wide v14

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "query_id"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bot"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getContextBotName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bot_name"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v5

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v9, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v20, v13

    move-object/from16 v13, v18

    move-wide/from16 v21, v14

    move/from16 v14, v19

    move-wide/from16 v15, v16

    invoke-static/range {v1 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZILjava/lang/String;IJ)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    move-wide/from16 v2, v21

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->increaseInlineRating(J)V

    return-void
.end method


# virtual methods
.method public addEmojiToRecent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addEmojiToRecent(Ljava/lang/String;)V

    return-void
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    return-object v0
.end method

.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$20;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method

.method public replaceText(IILjava/lang/CharSequence;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->replaceWithText(IILjava/lang/CharSequence;Z)V

    return-void
.end method

.method public sendBotInlineResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZI)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$20;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$20$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$20;Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZI)V

    const/4 p1, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method
