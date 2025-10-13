.class public Lorg/telegram/ui/Stories/StoriesController$UploadingStory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadingStory"
.end annotation


# instance fields
.field canceled:Z

.field convertingProgress:F

.field private currentRequest:I

.field dialogId:J

.field private duration:J

.field public final edit:Z

.field public final entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field private entryDestroyed:Z

.field public failed:Z

.field public firstFramePath:Ljava/lang/String;

.field private firstSecondSize:J

.field public hadFailed:Z

.field public info:Lorg/telegram/messenger/VideoEditedInfo;

.field public isCloseFriends:Z

.field isVideo:Z

.field public messageObject:Lorg/telegram/messenger/MessageObject;

.field path:Ljava/lang/String;

.field private previewMedia:Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

.field public progress:F

.field public putMessages:Z

.field public final random_id:J

.field ready:Z

.field public sharedMessageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoriesController;

.field uploadProgress:F


# direct methods
.method public static synthetic $r8$lambda$7Z8jxAox56gy7p7EFz-Org-6Vjw(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$5(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HB732J0SX8mrKnyLufKalPhlUvM(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IafFf-R_l2LMoVw69bV3rF_QOfI(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KBav6hcRMHtwuz-QIp8putyg_UE(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$start$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$OX4g-rbIbv81epEI_JCtFOuBaa8(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$start$2(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QWT3iCam8anmYJxatO4t0H1HaJo(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$6(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SdnLdvAZgQIK3CyyjHyUTxrHP2k(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$4(Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oQ6zzh5n3WypuEm-R-fWcCzaFis(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$sendUploadedRequest$7(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uTpomscd7BfTynfVqpzGN-08dEU(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->lambda$start$0(Lorg/telegram/messenger/VideoEditedInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 5

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->random_id:J

    iget-boolean v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    iget-object v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->hadFailed:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    iget-wide v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iput-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    goto :goto_2

    :cond_1
    iget-boolean v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v0, :cond_2

    iget-wide p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    :goto_0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    goto :goto_2

    :cond_2
    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_4

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide p1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    goto :goto_0

    :goto_2
    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda28;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/StoriesController;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$4(Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController;->processUpdate(Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V

    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$5(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/DraftsController;->saveForEdit(Lorg/telegram/ui/Stories/recorder/StoryEntry;JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->invalidateStoryLimit()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$6(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingCoverDocument:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputFileStoryDocument;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputFileStoryDocument;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingCoverDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->toInputDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputFileStoryDocument;->doc:Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sendUploadedRequest(Lorg/telegram/tgnet/TLRPC$InputFile;)V

    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$7(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryError(Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->hadFailed:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->edit(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void
.end method

.method private synthetic lambda$sendUploadedRequest$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move-object v3, v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const v5, 0x7fffffff

    if-ge v0, v4, :cond_6

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->justUploaded:Z

    iget v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-nez v3, :cond_1

    move-object v3, v2

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_1
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v2, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateStoryID;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateStoryID;

    if-nez v3, :cond_5

    new-instance v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;-><init>()V

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v7}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v7

    iput v7, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v9, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    if-ne v9, v5, :cond_3

    const v9, 0x15180

    :cond_3
    add-int/2addr v7, v9

    iput v7, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    iput-object v1, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object v7, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->toOutput(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    if-ne v7, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    iget-wide v7, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide v7, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iput-object v5, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    iput-object v5, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateStoryID;->id:I

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->justUploaded:Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    if-eqz p2, :cond_7

    new-instance p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_deleteStories;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_deleteStories;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_deleteStories;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_f

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_deleteStories;->id:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_5

    :cond_7
    if-eqz v2, :cond_8

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-eqz p2, :cond_9

    :cond_8
    if-eqz v3, :cond_9

    new-instance p2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v2

    iput-object v2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v3, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_9
    iget-object p2, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p2, :cond_b

    iget-object v2, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object v2, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-virtual {p2, v2, v4}, Lorg/telegram/messenger/FileLoader;->setLocalPathTo(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p2, :cond_b

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {p2, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-virtual {v2, p2, v4}, Lorg/telegram/messenger/FileLoader;->setLocalPathTo(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    :cond_b
    :goto_4
    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v0, v1, v3}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    goto :goto_5

    :cond_c
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->previewMedia:Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

    goto :goto_5

    :cond_d
    if-eqz p2, :cond_e

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingCoverDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_e

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->updateDocumentRef:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_e

    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->updateDocumentRef:Lorg/telegram/messenger/Utilities$Callback;

    return-void

    :cond_e
    if-eqz p2, :cond_f

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-nez p1, :cond_f

    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_f
    :goto_5
    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$start$0(Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->info:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p1, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, p1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->duration:J

    invoke-virtual {p1}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v1, v0, v0, v0}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;ZZZ)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v1, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const/high16 v2, 0x2000000

    invoke-virtual {p1, v1, v0, v0, v2}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$start$1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->ready:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->upload()V

    return-void
.end method

.method private synthetic lambda$start$2(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildPhoto(Ljava/io/File;)V

    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private putMessages()V
    .locals 35

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->putMessages:Z

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    new-array v7, v2, [Ljava/lang/CharSequence;

    aput-object v6, v7, v1

    invoke-virtual {v5, v7, v2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v5

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v6}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v9, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    xor-int/lit8 v20, v9, 0x1

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    move/from16 v21, v8

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-wide/from16 v11, v33

    move-object/from16 v17, v5

    move-object/from16 v24, v4

    invoke-static/range {v6 .. v30}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;ILorg/telegram/messenger/MessageObject;ZIZZLjava/lang/CharSequence;Ljava/lang/String;IJJ)V

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v6}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v9, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    xor-int/lit8 v22, v9, 0x1

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    move/from16 v23, v8

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-wide/from16 v10, v33

    move-object/from16 v16, v5

    move-object/from16 v26, v4

    invoke-static/range {v6 .. v32}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIIZLjava/lang/CharSequence;Ljava/lang/String;IJJ)V

    :goto_2
    add-int/2addr v1, v2

    goto/16 :goto_1

    :cond_4
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->putMessages:Z

    :cond_5
    :goto_3
    return-void
.end method

.method private sendUploadedRequest(Lorg/telegram/tgnet/TLRPC$InputFile;)V
    .locals 13

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_2

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v7, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v7, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    goto :goto_0

    :cond_3
    move-object v0, v2

    const/4 v1, 0x0

    :goto_1
    const-wide/16 v5, 0x0

    if-nez v0, :cond_11

    if-eqz p1, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingCoverDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingCoverDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingCoverDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v8, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingCoverDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {v7, p1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    :cond_6
    :goto_3
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->supports_streaming:Z

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v8, v7, 0x4

    iput v8, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    iget-wide v8, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    long-to-int v9, v8

    iput v9, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->preload_prefix_size:I

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v9, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    cmp-long v11, v9, v5

    if-ltz v11, :cond_7

    or-int/lit8 v7, v7, 0x14

    iput v7, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    long-to-float v7, v9

    iget v9, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v10, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v10, v10

    mul-float v9, v9, v10

    sub-float/2addr v7, v9

    float-to-double v9, v7

    const-wide v11, 0x408f400000000000L    # 1000.0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    iput-wide v9, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->video_start_ts:D

    :cond_7
    iget-object p1, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    :cond_8
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/2addr p1, v3

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    new-instance p1, Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    invoke-direct {p1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    if-eqz v7, :cond_9

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeHasStickers;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeHasStickers;-><init>()V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-nez v7, :cond_c

    iget-boolean v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-nez v7, :cond_b

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez p1, :cond_c

    :cond_b
    const/4 p1, 0x1

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->nosound_video:Z

    const-string p1, "video/mp4"

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    goto :goto_6

    :cond_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_e

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    add-int/2addr v7, v3

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_e
    const-string v7, "txt"

    :goto_5
    invoke-virtual {p1, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    :cond_f
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/2addr p1, v3

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    if-eqz p1, :cond_10

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_10
    new-instance p1, Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    invoke-direct {p1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    :cond_11
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimitPremium:I

    goto :goto_7

    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimitDefault:I

    :goto_7
    iget-boolean v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    const/16 v8, 0x40

    if-eqz v7, :cond_1e

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v9, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long v1, v9, v5

    if-eqz v1, :cond_13

    new-instance p1, Lorg/telegram/tgnet/tl/TL_bots$editPreviewMedia;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_bots$editPreviewMedia;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/tl/TL_bots$editPreviewMedia;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-object v3, p1, Lorg/telegram/tgnet/tl/TL_bots$editPreviewMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-object v0, p1, Lorg/telegram/tgnet/tl/TL_bots$editPreviewMedia;->new_media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/tl/TL_bots$editPreviewMedia;->lang_code:Ljava/lang/String;

    goto/16 :goto_d

    :cond_13
    new-instance v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    iput v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->id:I

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_14

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-eqz v5, :cond_14

    iget v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    or-int/2addr v5, v3

    iput v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    if-eqz v5, :cond_18

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v0, :cond_18

    iget v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    new-array v5, v3, [Ljava/lang/CharSequence;

    aput-object v0, v5, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p1, :cond_15

    aget-object v0, v5, v4

    invoke-interface {v0, v4, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v5, v4

    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->entities:Ljava/util/ArrayList;

    goto :goto_8

    :cond_16
    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_8
    aget-object v0, v5, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p1, :cond_17

    aget-object v0, v5, v4

    invoke-interface {v0, v4, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v5, v4

    :cond_17
    aget-object p1, v5, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->caption:Ljava/lang/String;

    :cond_18
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    if-eqz v0, :cond_19

    iget v0, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->privacy_rules:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMediaAreas:Ljava/util/ArrayList;

    if-eqz p1, :cond_1a

    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz p1, :cond_1c

    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_1c

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-object p1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz p1, :cond_1b

    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1c
    iget-object p1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1d

    iget p1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    :cond_1d
    move-object p1, v1

    goto/16 :goto_d

    :cond_1e
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v9, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long v7, v9, v5

    if-eqz v7, :cond_1f

    new-instance p1, Lorg/telegram/tgnet/tl/TL_bots$addPreviewMedia;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_bots$addPreviewMedia;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/tl/TL_bots$addPreviewMedia;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-object v0, p1, Lorg/telegram/tgnet/tl/TL_bots$addPreviewMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/tl/TL_bots$addPreviewMedia;->lang_code:Ljava/lang/String;

    goto/16 :goto_d

    :cond_1f
    new-instance v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;-><init>()V

    iget-wide v6, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->random_id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->random_id:J

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v6}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v9, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v6, v9, v10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v0, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->privacy_rules:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->pinned:Z

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    xor-int/2addr v6, v3

    iput-boolean v6, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->noforwards:Z

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v0, :cond_23

    iget v6, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    or-int/lit8 v6, v6, 0x3

    iput v6, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    new-array v6, v3, [Ljava/lang/CharSequence;

    aput-object v0, v6, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p1, :cond_20

    aget-object v0, v6, v4

    invoke-interface {v0, v4, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v6, v4

    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->entities:Ljava/util/ArrayList;

    goto :goto_a

    :cond_21
    iget-object v0, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_a
    aget-object v0, v6, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p1, :cond_22

    aget-object v0, v6, v4

    invoke-interface {v0, v4, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v6, v4

    :cond_22
    aget-object p1, v6, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->caption:Ljava/lang/String;

    :cond_23
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-eqz p1, :cond_24

    iget p1, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    or-int/2addr p1, v8

    iput p1, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->fwd_from_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostStoryId:I

    iput p1, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->fwd_from_story:I

    xor-int/lit8 p1, v1, 0x1

    iput-boolean p1, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->fwd_modified:Z

    :cond_24
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_25

    iput-boolean v3, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->pinned:Z

    goto :goto_b

    :cond_25
    iget v1, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    iput v0, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->period:I

    :goto_b
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz p1, :cond_28

    :goto_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_27

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-object p1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz p1, :cond_26

    iget-object v0, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_27
    iget-object p1, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_28

    iget p1, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_sendStory;->flags:I

    :cond_28
    move-object p1, v5

    :goto_d
    new-instance v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "#failtest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->hadFailed:Z

    if-nez v1, :cond_29

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const/16 v1, 0x190

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const-string v1, "FORCED_TO_FAIL"

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_e

    :cond_29
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->currentRequest:I

    :goto_e
    return-void
.end method

.method private startForeground()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/ui/Stories/recorder/StoryUploadingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    const-string v2, "currentAccount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private upload()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->putMessages()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v3, 0x1

    xor-int/lit8 v4, v0, 0x1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->info:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_1

    iget-wide v5, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    :cond_1
    long-to-int v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v5, v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x2000000

    const/high16 v7, 0x2000000

    goto :goto_0

    :cond_3
    const/high16 v0, 0x1000000

    const/high16 v7, 0x1000000

    :goto_0
    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    :goto_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$100(Lorg/telegram/ui/Stories/StoriesController;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->currentRequest:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->currentRequest:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->cleanup()V

    return-void
.end method

.method public cleanup()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$100(Lorg/telegram/ui/Stories/StoriesController;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$200(Lorg/telegram/ui/Stories/StoriesController;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    iget v3, v2, Lorg/telegram/ui/Stories/StoriesController;->uploadedStories:I

    add-int/2addr v3, v1

    iput v3, v2, Lorg/telegram/ui/Stories/StoriesController;->uploadedStories:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    iput v0, v2, Lorg/telegram/ui/Stories/StoriesController;->uploadedStories:I

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$300(Lorg/telegram/ui/Stories/StoriesController;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->previewMedia:Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    const/4 v5, 0x4

    invoke-static {v2, v3, v4, v5, v0}, Lorg/telegram/ui/Stories/StoriesController;->access$400(Lorg/telegram/ui/Stories/StoriesController;JIZ)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_5

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v4, :cond_5

    instance-of v4, v2, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eqz v4, :cond_4

    check-cast v2, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->previewMedia:Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->edit(Lorg/telegram/tgnet/TLRPC$InputMedia;Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v3

    iget-wide v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iget-object v7, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->previewMedia:Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->edit(IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$InputMedia;Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V

    goto :goto_1

    :cond_5
    instance-of v3, v2, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eqz v3, :cond_6

    check-cast v2, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->previewMedia:Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->push(Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->previewMedia:Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->push(IJLjava/lang/String;Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;)V

    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->previewMedia:Lorg/telegram/tgnet/tl/TL_bots$botPreviewMedia;

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_8

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    if-nez v3, :cond_8

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    :cond_8
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->uploadStoryEnd:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_0

    aget-object v1, p3, v4

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v2, :cond_8

    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->upload()V

    goto/16 :goto_1

    :cond_0
    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    const v6, 0x3f333333    # 0.7f

    const v7, 0x3e99999a    # 0.3f

    if-ne v1, v3, :cond_3

    aget-object v1, p3, v4

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v3, :cond_8

    aget-object v1, p3, v5

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v1, 0x3

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v1, 0x4

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    mul-float v1, v1, v7

    iget v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->uploadProgress:F

    mul-float v3, v3, v6

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->uploadStoryProgress:I

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iget v7, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v4

    aput-object v7, v2, v5

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-wide v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    const-wide/16 v3, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_1

    iget v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    iget-wide v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->duration:J

    long-to-float v2, v6

    mul-float v1, v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iput-wide v10, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/4 v10, 0x0

    move-wide v1, v13

    invoke-virtual/range {v8 .. v15}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJLjava/lang/Float;)V

    cmp-long v6, v1, v3

    if-lez v6, :cond_8

    iget-wide v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    cmp-long v8, v6, v3

    if-gez v8, :cond_2

    iput-wide v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstSecondSize:J

    :cond_2
    iput-boolean v5, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->ready:Z

    goto/16 :goto_1

    :cond_3
    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    if-ne v1, v3, :cond_5

    aget-object v1, p3, v4

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v2, :cond_8

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->edit:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    const/16 v2, 0x190

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const-string v2, "FILE_PREPARE_FAILED"

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->hadFailed:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/DraftsController;->edit(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->cleanup()V

    goto/16 :goto_1

    :cond_5
    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-ne v1, v3, :cond_6

    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    aget-object v1, p3, v5

    check-cast v1, Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sendUploadedRequest(Lorg/telegram/tgnet/TLRPC$InputFile;)V

    goto/16 :goto_1

    :cond_6
    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    if-ne v1, v3, :cond_7

    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$string;->StoryUploadError:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v4

    aput-object v7, v2, v5

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    if-ne v1, v3, :cond_8

    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/Long;

    aget-object v3, p3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v1, v8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v3, v8

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->uploadProgress:F

    iget v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    mul-float v3, v3, v7

    mul-float v1, v1, v6

    add-float/2addr v3, v1

    iput v3, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->uploadStoryProgress:I

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iget v7, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v4

    aput-object v7, v2, v5

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public isCloseFriends()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isCloseFriends:Z

    return v0
.end method

.method public start()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    if-eqz v1, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileStoryDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileStoryDocument;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingCoverDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->toInputDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileStoryDocument;->doc:Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sendUploadedRequest(Lorg/telegram/tgnet/TLRPC$InputFile;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sendUploadedRequest(Lorg/telegram/tgnet/TLRPC$InputFile;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->isCloseFriends()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isCloseFriends:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-eqz v0, :cond_4

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getVideoEditedInfo(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->this$0:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesController;->access$000(Lorg/telegram/ui/Stories/StoriesController;)I

    move-result v0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->startForeground()V

    return-void
.end method

.method public tryAgain()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entryDestroyed:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->uploadProgress:F

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->convertingProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->start()V

    return-void
.end method
