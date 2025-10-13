.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/VideoEditedInfo;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$11:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$12:Ljava/util/ArrayList;

.field public final synthetic f$13:Z

.field public final synthetic f$14:I

.field public final synthetic f$15:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$16:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public final synthetic f$17:I

.field public final synthetic f$18:Ljava/lang/String;

.field public final synthetic f$19:J

.field public final synthetic f$2:J

.field public final synthetic f$20:J

.field public final synthetic f$21:J

.field public final synthetic f$22:Lorg/telegram/messenger/MessageSuggestionParams;

.field public final synthetic f$23:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$Photo;

.field public final synthetic f$7:Ljava/lang/CharSequence;

.field public final synthetic f$8:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JILorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;ZILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ILjava/lang/String;JJJLorg/telegram/messenger/MessageSuggestionParams;Z)V
    .locals 3

    .line 0
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/messenger/VideoEditedInfo;

    move-object v1, p2

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$1:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$2:J

    move v1, p5

    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$3:I

    move-object v1, p6

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$4:Lorg/telegram/messenger/AccountInstance;

    move-object v1, p7

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$5:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$6:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object v1, p9

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$7:Ljava/lang/CharSequence;

    move-object v1, p10

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$8:Lorg/telegram/messenger/MessageObject;

    move v1, p11

    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$9:Z

    move-object v1, p12

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$10:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v1, p13

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$11:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$12:Ljava/util/ArrayList;

    move/from16 v1, p15

    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$13:Z

    move/from16 v1, p16

    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$14:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$15:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v1, p18

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$16:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move/from16 v1, p19

    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$17:I

    move-object/from16 v1, p20

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$18:Ljava/lang/String;

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$19:J

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$20:J

    move-wide/from16 v1, p25

    iput-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$21:J

    move-object/from16 v1, p27

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$22:Lorg/telegram/messenger/MessageSuggestionParams;

    move/from16 v1, p28

    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$23:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$1:Ljava/lang/String;

    iget-wide v3, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$2:J

    iget v5, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$3:I

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$4:Lorg/telegram/messenger/AccountInstance;

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$5:Ljava/lang/String;

    iget-object v8, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$6:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$7:Ljava/lang/CharSequence;

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$8:Lorg/telegram/messenger/MessageObject;

    iget-boolean v11, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$9:Z

    iget-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$10:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$11:Lorg/telegram/messenger/MessageObject;

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$12:Ljava/util/ArrayList;

    iget-boolean v15, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$13:Z

    move-object/from16 v29, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$14:I

    move/from16 v16, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$15:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$16:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 v18, v1

    iget v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$17:I

    move/from16 v19, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$18:Ljava/lang/String;

    move-object/from16 v20, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$19:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$20:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$21:J

    move-wide/from16 v25, v1

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$22:Lorg/telegram/messenger/MessageSuggestionParams;

    move-object/from16 v27, v1

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda29;->f$23:Z

    move/from16 v28, v1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static/range {v1 .. v28}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$Zm-DQ3fEy_EZklxmy9gM3EK_rwI(Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JILorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;ZILorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ILjava/lang/String;JJJLorg/telegram/messenger/MessageSuggestionParams;Z)V

    return-void
.end method
