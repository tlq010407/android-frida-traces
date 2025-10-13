.class public Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SavedMessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedDialog"
.end annotation


# instance fields
.field public dialogId:J

.field private lastDate:I

.field private localDate:I

.field public message:Lorg/telegram/messenger/MessageObject;

.field public messagesCount:I

.field public messagesCountLoaded:Z

.field public pinned:Z

.field private pinnedOrder:I

.field public readInboxMaxId:J

.field public readOutboxMaxId:J

.field public top_message_id:I

.field public unreadCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinnedOrder:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinnedOrder:I

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->localDate:I

    return p1
.end method

.method public static fromMessage(ILorg/telegram/tgnet/TLRPC$Message;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    .locals 17

    move-object/from16 v2, p1

    new-instance v15, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    invoke-direct {v15}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;-><init>()V

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId(JLorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    iput-wide v0, v15, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    const/4 v0, 0x0

    iput-boolean v0, v15, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, v15, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    new-instance v14, Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v16, v14

    move/from16 v14, p2

    invoke-direct/range {v0 .. v14}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZJZZZ)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    return-object v15
.end method

.method public static fromTL(ILorg/telegram/tgnet/TLRPC$savedDialog;Ljava/util/ArrayList;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/tgnet/TLRPC$savedDialog;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;Z)",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    invoke-direct {v1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;-><init>()V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$savedDialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$savedDialog;->pinned:Z

    iput-boolean v2, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$savedDialog;->top_message:I

    iput v2, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$savedDialog;->unread_count:I

    int-to-long v2, v2

    iput-wide v2, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->unreadCount:J

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$savedDialog;->read_inbox_max_id:I

    int-to-long v2, v2

    iput-wide v2, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->readInboxMaxId:J

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$savedDialog;->read_outbox_max_id:I

    int-to-long v2, v0

    iput-wide v2, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->readOutboxMaxId:J

    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v4, v5, :cond_0

    :goto_1
    move-object v6, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    if-eqz v6, :cond_2

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object v4, v0

    move/from16 v5, p0

    move/from16 v18, p3

    invoke-direct/range {v4 .. v18}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZJZZZ)V

    iput-object v0, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    :cond_2
    return-object v1
.end method

.method private getDateInternal()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    return v0

    :cond_1
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    return v0

    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->localDate:I

    return v0
.end method


# virtual methods
.method public getDate()I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDateInternal()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->lastDate:I

    return v0
.end method

.method public isHidden()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
