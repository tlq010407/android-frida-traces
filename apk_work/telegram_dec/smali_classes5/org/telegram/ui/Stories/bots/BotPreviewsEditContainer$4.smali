.class Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->createStory(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

.field final synthetic val$chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$lang_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    iput-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->val$chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-object p3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->val$lang_code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedButton(IZZIJZZJ)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->val$chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->val$chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->val$chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-nez p2, :cond_1

    return-void

    :cond_1
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p6

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$900(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)J

    move-result-wide p1

    iput-wide p1, p6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->val$lang_code:Ljava/lang/String;

    iput-object p1, p6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    invoke-virtual {p6}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$1000(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-static {p2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$1100(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object p2

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->access$900(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)J

    move-result-wide p3

    iget-object p5, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->val$lang_code:Ljava/lang/String;

    const/4 p7, 0x0

    invoke-virtual/range {p2 .. p7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openBotEntry(JLjava/lang/String;Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4;->val$chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    const-wide/16 p3, 0x190

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public synthetic didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$didSelectBot(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public synthetic doOnIdle(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$doOnIdle(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic needEnterComment()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$needEnterComment(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onCameraOpened()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$onCameraOpened(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

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

.method public selectItemOnClicking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$sendAudio(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V

    return-void
.end method
