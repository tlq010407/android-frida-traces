.class Lorg/telegram/ui/Stories/PeerStoriesView$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createChatAttachView()V
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

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedButton(IZZIJZZJ)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_10

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v4, :cond_1

    goto/16 :goto_a

    :cond_1
    const/4 v15, 0x4

    const/16 v4, 0x8

    if-eq v1, v4, :cond_4

    const/4 v5, 0x7

    if-eq v1, v5, :cond_4

    if-ne v1, v15, :cond_2

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissWithButtonClick(I)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v4, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v13

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v10, 0x0

    const/4 v6, 0x0

    :goto_1
    int-to-double v4, v6

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    cmpg-double v9, v4, v7

    if-gez v9, :cond_e

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v4

    mul-int/lit8 v5, v6, 0xa

    sub-int/2addr v4, v5

    const/16 v7, 0xa

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_a

    add-int v9, v5, v8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v9, v11, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MediaController$PhotoEntry;

    new-instance v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v11}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    iget-boolean v14, v9, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v14, :cond_7

    iget-object v2, v9, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v2, v9, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_3
    iput-object v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    :cond_8
    iget-object v2, v9, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    iget-object v2, v9, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    iput-object v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->coverPath:Ljava/lang/String;

    iput-boolean v14, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    iget-object v2, v9, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    iput-object v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    iget-object v2, v9, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    iget-object v2, v9, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    iget v2, v9, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    iget-object v2, v9, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v2, v9, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    iput-boolean v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->canDeleteAfter:Z

    iget-object v2, v9, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->checkUpdateStickersOrder(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->updateStickersOrder:Z

    iget-boolean v2, v9, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iput-boolean v2, v11, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->hasMediaSpoilers:Z

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    if-nez v6, :cond_b

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-boolean v2, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->updateStickersOrder:Z

    move/from16 v18, v2

    goto :goto_6

    :cond_b
    const/16 v18, 0x0

    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v30

    if-eq v1, v15, :cond_d

    if-eqz p8, :cond_c

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v2, 0x1

    :goto_8
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMonoForumPeerId()J

    move-result-wide v27

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v29

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    move-object v5, v7

    move/from16 v32, v6

    move-wide/from16 v6, v30

    const/16 v30, 0x0

    move-object v10, v3

    move-object/from16 v31, v12

    move v12, v2

    move-object v2, v13

    move/from16 v13, p2

    const/16 v33, 0x4

    move/from16 v15, p3

    move/from16 v16, p4

    invoke-static/range {v4 .. v29}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZZLorg/telegram/messenger/MessageObject;ZIIZLandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IJZJJLorg/telegram/messenger/MessageSuggestionParams;)V

    add-int/lit8 v6, v32, 0x1

    move-object v13, v2

    move-object/from16 v12, v31

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v15, 0x4

    goto/16 :goto_1

    :cond_e
    const/16 v30, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const-wide/16 v2, 0x0

    cmp-long v4, p9, v2

    if-gtz v4, :cond_f

    const/4 v2, 0x1

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    :goto_9
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    :cond_10
    :goto_a
    return-void
.end method

.method public synthetic didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$didSelectBot(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public doOnIdle(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public needEnterComment()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->needEnterText()Z

    move-result v0

    return v0
.end method

.method public onCameraOpened()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    return-void
.end method

.method public synthetic onWallpaperSelected(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$onWallpaperSelected(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic openAvatarsSearch()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$openAvatarsSearch(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    return-void
.end method

.method public synthetic selectItemOnClicking()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$selectItemOnClicking(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v10, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v10, :cond_3

    instance-of v2, v10, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    if-eqz p2, :cond_1

    move-object/from16 v5, p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v5, v1

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move-wide/from16 v16, p5

    move/from16 v18, p7

    move-wide/from16 v19, p8

    invoke-static/range {v3 .. v20}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingAudioDocuments(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Ljava/lang/CharSequence;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZILorg/telegram/messenger/MessageObject;Ljava/lang/String;IJZJ)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const-wide/16 v2, 0x0

    cmp-long v4, p8, v2

    if-gtz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    :cond_3
    :goto_2
    return-void
.end method
