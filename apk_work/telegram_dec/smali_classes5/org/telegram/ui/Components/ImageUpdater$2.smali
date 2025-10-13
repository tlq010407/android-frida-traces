.class Lorg/telegram/ui/Components/ImageUpdater$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ImageUpdater;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ImageUpdater;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processSelectedAttach(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->openCamera()V

    :cond_0
    return-void
.end method


# virtual methods
.method public didPressedButton(IZZIJZZJ)V
    .locals 2

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object p2, p2, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p2}, Lorg/telegram/ui/Components/ImageUpdater;->access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 p2, 0x8

    if-eq p1, p2, :cond_2

    const/4 p3, 0x7

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p2}, Lorg/telegram/ui/Components/ImageUpdater;->access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissWithButtonClick(I)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ImageUpdater$2;->processSelectedAttach(I)V

    return-void

    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p3}, Lorg/telegram/ui/Components/ImageUpdater;->access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p4}, Lorg/telegram/ui/Components/ImageUpdater;->access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object p4

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    const/4 p6, 0x0

    const/4 p7, 0x0

    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p8

    const/4 p9, 0x1

    if-ge p6, p8, :cond_a

    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p8

    invoke-virtual {p3, p8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p8

    new-instance p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {p10}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    invoke-virtual {p5, p10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, p8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object p7, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz p7, :cond_3

    :goto_2
    iput-object p7, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object p7, p8, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    goto :goto_2

    :goto_3
    iget-object p7, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object p7, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    iget-object p7, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    iput-object p7, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->coverPath:Ljava/lang/String;

    iget-object p7, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p7, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean p7, p8, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean p7, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    iget-object p7, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz p7, :cond_4

    invoke-interface {p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iput-object v1, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    iget-object p7, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object p7, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    iget-object p7, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object p7, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    iget p7, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput p7, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    iget-object p7, p8, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object p7, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    instance-of p7, p7, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    goto :goto_5

    :cond_5
    instance-of v0, p8, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v0, :cond_9

    check-cast p8, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v0, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_6

    iput-object v0, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iput-object p8, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    :goto_4
    iget-object v0, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v0, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    iget-object v0, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    iput-object v0, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->coverPath:Ljava/lang/String;

    iget-object v0, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v0, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, p8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    iput-object v1, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    iget-object v0, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v0, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    iget-object v0, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v0, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    iget v0, p8, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v0, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    iget-object v0, p8, Lorg/telegram/messenger/MediaController$SearchImage;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_8

    iget v1, p8, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-ne v1, p9, :cond_8

    iput-object v0, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object p9, p8, Lorg/telegram/messenger/MediaController$SearchImage;->params:Ljava/util/HashMap;

    iput-object p9, p10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->params:Ljava/util/HashMap;

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p9

    const-wide/16 v0, 0x3e8

    div-long/2addr p9, v0

    long-to-int p10, p9

    iput p10, p8, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    :cond_9
    :goto_5
    add-int/lit8 p6, p6, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p3, p7, p5}, Lorg/telegram/ui/Components/ImageUpdater;->access$100(Lorg/telegram/ui/Components/ImageUpdater;ZLjava/util/ArrayList;)V

    if-eq p1, p2, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-static {p1}, Lorg/telegram/ui/Components/ImageUpdater;->access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object p1

    invoke-virtual {p1, p9}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    :cond_b
    :goto_6
    return-void
.end method

.method public didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    return-void
.end method

.method public doOnIdle(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public needEnterComment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpened()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v0, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public synthetic onWallpaperSelected(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$onWallpaperSelected(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/lang/Object;)V

    return-void
.end method

.method public openAvatarsSearch()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater$2;->this$0:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->openSearch()V

    return-void
.end method

.method public synthetic selectItemOnClicking()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$selectItemOnClicking(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$sendAudio(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V

    return-void
.end method
