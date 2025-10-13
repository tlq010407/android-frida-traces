.class Lorg/telegram/ui/Stories/PeerStoriesView$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/InstantCameraView$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->checkInstantCameraView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassGuid()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$8900(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    return v0
.end method

.method public getDialogId()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFragmentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    return-object v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic isInScheduleMode()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/InstantCameraView$Delegate$-CC;->$default$isInScheduleMode(Lorg/telegram/ui/Components/InstantCameraView$Delegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isSecretChat()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/InstantCameraView$Delegate$-CC;->$default$isSecretChat(Lorg/telegram/ui/Components/InstantCameraView$Delegate;)Z

    move-result v0

    return v0
.end method

.method public sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZJ)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_7

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v4, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v9

    iget-object v15, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    move/from16 v16, v2

    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    move/from16 v21, v2

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v22, v1

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    if-eqz p2, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    move-object/from16 v6, p2

    :goto_0
    move-object v13, v3

    move/from16 v18, p3

    move/from16 v19, p4

    move/from16 v20, p5

    move-wide/from16 v27, p6

    invoke-static/range {v4 .. v28}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;ILorg/telegram/messenger/MessageObject;ZIZZLjava/lang/CharSequence;Ljava/lang/String;IJJ)V

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    :goto_1
    move-object v5, v4

    move-object v4, v2

    goto :goto_2

    :cond_4
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    goto :goto_1

    :goto_2
    iget-object v6, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v8

    iget-object v14, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget-object v15, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iget v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    move/from16 v17, v2

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v24, v1

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object v12, v3

    move-object/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, p4

    move/from16 v23, p5

    move-wide/from16 v29, p6

    invoke-static/range {v4 .. v30}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIIZLjava/lang/CharSequence;Ljava/lang/String;IJJ)V

    :cond_5
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const-wide/16 v2, 0x0

    cmp-long v4, p6, v2

    if-gtz v4, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    :cond_7
    :goto_5
    return-void
.end method
