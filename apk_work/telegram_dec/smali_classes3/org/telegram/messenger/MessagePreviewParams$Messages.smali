.class public Lorg/telegram/messenger/MessagePreviewParams$Messages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagePreviewParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Messages"
.end annotation


# instance fields
.field private dialogId:J

.field public groupedMessagesMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/messenger/MessageObject$GroupedMessages;",
            ">;"
        }
    .end annotation
.end field

.field public hasSpoilers:Z

.field public hasText:Z

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private out:Ljava/lang/Boolean;

.field public pollChosenAnswers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;",
            ">;"
        }
    .end annotation
.end field

.field public previewMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public selectedIds:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lorg/telegram/messenger/MessagePreviewParams;

.field private type:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILjava/util/ArrayList;JLandroid/util/SparseBooleanArray;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    iput-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->this$0:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Landroid/util/LongSparseArray;

    invoke-direct {v8}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v8, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->pollChosenAnswers:Ljava/util/ArrayList;

    iput-object v2, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->out:Ljava/lang/Boolean;

    iput v3, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->type:I

    iput-wide v5, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->dialogId:J

    iput-object v4, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iput-object v7, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v9, v10, :cond_8

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_1

    if-nez v7, :cond_1

    iget-object v12, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    invoke-static {v1, v10, v2, v3}, Lorg/telegram/messenger/MessagePreviewParams;->access$100(Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/messenger/MessageObject;Ljava/lang/Boolean;I)Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    iget-boolean v13, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasSpoilers:Z

    if-nez v13, :cond_3

    iget-object v13, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    if-eqz v14, :cond_2

    iput-boolean v11, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasSpoilers:Z

    :cond_3
    iget-object v11, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-wide v5, v11, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-eqz v11, :cond_5

    iget-object v11, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v13

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v14, v15}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-nez v11, :cond_4

    new-instance v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-direct {v11}, Lorg/telegram/messenger/MessageObject$GroupedMessages;-><init>()V

    iget-object v13, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_4
    iget-object v11, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v11, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v11, v8, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    new-instance v13, Lorg/telegram/messenger/MessagePreviewParams$PreviewMediaPoll;

    invoke-direct {v13}, Lorg/telegram/messenger/MessagePreviewParams$PreviewMediaPoll;-><init>()V

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_pollResults;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_pollResults;-><init>()V

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v15, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    iput v15, v14, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    iput v15, v13, Lorg/telegram/messenger/MessagePreviewParams$PreviewMediaPoll;->totalVotersCached:I

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->canUnvote()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_7

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    iget-boolean v15, v14, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->chosen:Z

    if-eqz v15, :cond_6

    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;-><init>()V

    iget-boolean v8, v14, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->chosen:Z

    iput-boolean v8, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->chosen:Z

    iget-boolean v8, v14, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->correct:Z

    iput-boolean v8, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->correct:Z

    iget v8, v14, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->flags:I

    iput v8, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->flags:I

    iget-object v8, v14, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    iput-object v8, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    iget v8, v14, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    iput v8, v15, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    iget-object v8, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->pollChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v8, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iget-object v2, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findCaptionMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v8, 0x1

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    iput-boolean v8, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasText:Z

    goto :goto_8

    :cond_b
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v11, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget v2, v1, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v2, :cond_d

    const/16 v3, 0x13

    if-ne v2, v3, :cond_c

    goto :goto_6

    :cond_c
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    :goto_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_7

    :cond_d
    :goto_6
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_5

    :goto_7
    xor-int/2addr v1, v11

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasText:Z

    :cond_e
    :goto_8
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILorg/telegram/messenger/MessageObject;)V
    .locals 8

    .line 0
    invoke-static {p4}, Lorg/telegram/messenger/MessagePreviewParams;->access$000(Lorg/telegram/messenger/MessageObject;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagePreviewParams$Messages;-><init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILjava/util/ArrayList;JLandroid/util/SparseBooleanArray;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILorg/telegram/messenger/MessageObject;J)V
    .locals 8

    .line 0
    invoke-static {p4}, Lorg/telegram/messenger/MessagePreviewParams;->access$000(Lorg/telegram/messenger/MessageObject;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MessagePreviewParams$Messages;-><init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILjava/util/ArrayList;JLandroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public checkEdits(Ljava/util/ArrayList;)Lorg/telegram/messenger/MessagePreviewParams$Messages;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)",
            "Lorg/telegram/messenger/MessagePreviewParams$Messages;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_6

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    if-ne v8, v9, :cond_3

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-nez v12, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    new-instance p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v6, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->this$0:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v7, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->out:Ljava/lang/Boolean;

    iget v8, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->type:I

    iget-object v9, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    iget-wide v10, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->dialogId:J

    const/4 v12, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v12}, Lorg/telegram/messenger/MessagePreviewParams$Messages;-><init>(Lorg/telegram/messenger/MessagePreviewParams;Ljava/lang/Boolean;ILjava/util/ArrayList;JLandroid/util/SparseBooleanArray;)V

    return-object p1

    :cond_6
    :goto_4
    return-object v1
.end method

.method public getSelectedMessages(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
