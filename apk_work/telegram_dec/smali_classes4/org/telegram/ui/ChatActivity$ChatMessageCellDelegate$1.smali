.class Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;
.super Lorg/telegram/ui/Components/ShareAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

.field final synthetic val$includeStory:Z

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public static synthetic $r8$lambda$ZPCanQTEmZl-twyOKbz9Z2ibi0w(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->lambda$onShareStory$0(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xvXzPWA2hU1aHv_lBp8AAMXr50s(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->lambda$onShareStory$1(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLorg/telegram/messenger/MessageObject;)V
    .locals 16

    move-object/from16 v14, p0

    move/from16 v15, p15

    move-object/from16 v0, p1

    iput-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iput-boolean v15, v14, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->val$includeStory:Z

    move-object/from16 v0, p16

    iput-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-boolean v15, v14, Lorg/telegram/ui/Components/ShareAlert;->includeStoryFromMessage:Z

    return-void
.end method

.method private synthetic lambda$onShareStory$0(Ljava/lang/Long;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->RepostedToProfile:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->RepostedToChannelProfile:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onShareStory$1(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_1

    new-instance p2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p6}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;Ljava/lang/Long;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    :cond_0
    :goto_0
    invoke-virtual {p1, p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->replaceSourceView(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    goto :goto_1

    :cond_1
    instance-of p3, p2, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p3

    if-eqz p3, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromShareCell(Lorg/telegram/ui/Cells/ShareDialogCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p5

    goto :goto_0

    :goto_1
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public dismissInternal()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$63600(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    invoke-super {p0}, Lorg/telegram/ui/Components/ShareAlert;->dismissInternal()V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9300(Lorg/telegram/ui/ChatActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {p1, p4}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v1, v2, p2}, Lorg/telegram/ui/Components/BulletinFactory;->showForwardedBulletinWithTag(JI)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-virtual {p1, p4}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v4, 0x35

    move-object v6, p3

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object p3, p3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$9400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/16 v3, 0x35

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onShareStory(Landroid/view/View;)V
    .locals 8

    instance-of v0, p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromShareCell(Lorg/telegram/ui/Cells/ShareDialogCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$1100(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    :cond_1
    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setOnPrepareCloseListener(Lorg/telegram/messenger/Utilities$Callback4;)V

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostMessage(Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openRepost(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void
.end method
