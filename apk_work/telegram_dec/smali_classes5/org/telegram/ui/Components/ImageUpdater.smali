.class public Lorg/telegram/ui/Components/ImageUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;,
        Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;
    }
.end annotation


# instance fields
.field private bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private canSelectVideo:Z

.field private canceled:Z

.field private chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private clearAfterUpdate:Z

.field private convertingVideo:Lorg/telegram/messenger/MessageObject;

.field private currentAccount:I

.field private currentImageProgress:F

.field public currentPicturePath:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

.field private finalPath:Ljava/lang/String;

.field private forUser:Z

.field private forceDarkTheme:Z

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isVideo:Z

.field private openWithFrontfaceCamera:Z

.field public parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private picturePath:Ljava/io/File;

.field private searchAvailable:Z

.field public final setForType:I

.field private showingFromDialog:Z

.field private smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field private smallPhotoBitmap:Landroid/graphics/Bitmap;

.field private supportEmojiMarkup:Z

.field private type:I

.field private uploadAfterSelect:Z

.field private uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

.field private uploadingImage:Ljava/lang/String;

.field private uploadingVideo:Ljava/lang/String;

.field private useAttachMenu:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;

.field private vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

.field private videoPath:Ljava/lang/String;

.field private videoTimestamp:D


# direct methods
.method public static synthetic $r8$lambda$gG5PjXL7Dz2NCTbg2IJoUSNC4TM(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ImageUpdater;->lambda$openMenu$0(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yimo8f9g3VrhL8XaetKKc6Br8SA(Lorg/telegram/ui/Components/ImageUpdater;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater;->lambda$startCrop$1(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(ZIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->picturePath:Ljava/io/File;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->supportEmojiMarkup:Z

    iput p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->setForType:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ImageUpdater;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater;->didSelectPhotos(ZLjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ImageUpdater;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method private cleanup()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->clearAfterUpdate:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    :cond_0
    return-void
.end method

.method private createChatAttachView()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v3, 0x2

    if-nez v2, :cond_3

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->forceDarkTheme:Z

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ImageUpdater;->showingFromDialog:Z

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    iget-object v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->supportsBulletin()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6}, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2, v4, v5, v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAvatarPicker(IZLorg/telegram/messenger/Utilities$Callback0Return;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v4, Lorg/telegram/ui/Components/ImageUpdater$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ImageUpdater$2;-><init>(Lorg/telegram/ui/Components/ImageUpdater;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setImageUpdater(Lorg/telegram/ui/Components/ImageUpdater;)V

    :cond_3
    iget v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getSelectedTextView()Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->SetPhotoFor:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    const-string v0, "SetPhotoFor"

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getSelectedTextView()Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->SuggestPhotoFor:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    const-string v0, "SuggestPhotoFor"

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private didSelectPhotos(ZLjava/util/ArrayList;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-boolean v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/high16 v8, 0x44480000    # 800.0f

    const/4 v9, 0x0

    if-nez v3, :cond_7

    iget-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v3, v9, v8, v8, v7}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    move-object v4, v9

    move-object v9, v1

    :goto_1
    move/from16 v1, p1

    goto/16 :goto_5

    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_6

    iget-object v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v10, :cond_4

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    if-eqz v3, :cond_6

    iget v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    iget v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v4, v9

    :cond_2
    if-eqz v4, :cond_3

    goto/16 :goto_2

    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v1, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v1, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "jpg"

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_3

    :cond_4
    iget-object v1, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v10, "jpg"

    invoke-static {v3, v10}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v1, v10, v4

    if-eqz v1, :cond_5

    move-object v4, v3

    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9, v8, v8, v7}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v11, v1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v14, "jpg"

    const-wide/16 v15, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    :cond_6
    :goto_3
    move/from16 v1, p1

    move-object v4, v9

    goto :goto_5

    :cond_7
    :goto_4
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const-string v10, ""

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    new-instance v4, Lorg/telegram/messenger/MessageObject;

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v4, v5, v3, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iget-object v1, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v3, Ljava/io/File;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_avatar.mp4"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v1, v4, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v1, v4, Lorg/telegram/messenger/MessageObject;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iget-object v1, v2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    invoke-static {v1, v9, v8, v8, v7}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_1

    :goto_5
    invoke-direct {v0, v1, v9, v4}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$openMenu$0(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openVideoCamera()V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openSearch()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openGallery()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ImageUpdater;->openCamera()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startCrop$1(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    const-string v2, "photoPath"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "photoUri"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    :goto_0
    new-instance v2, Lorg/telegram/ui/PhotoCropActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PhotoCropActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0}, Lorg/telegram/ui/PhotoCropActivity;->setDelegate(Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    const/high16 v1, 0x44480000    # 800.0f

    invoke-static {p1, p2, v1, v1, v0}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    :goto_2
    return-void
.end method

.method private openAttachMenu(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->openWithFrontfaceCamera:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setOpenWithFrontFaceCamera(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v1, v2, p1}, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;-><init>(Lorg/telegram/tgnet/TLObject;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->forUser:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->forUser:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_4
    :goto_0
    return-void
.end method

.method private processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v9, p3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    iput-object v10, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v10, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v10, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    iput-object v10, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    if-nez v9, :cond_1

    move-object v2, v10

    goto :goto_0

    :cond_1
    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    :goto_0
    iput-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    const/16 v7, 0x140

    const/16 v8, 0x140

    const/high16 v3, 0x44480000    # 800.0f

    const/high16 v4, 0x44480000    # 800.0f

    const/16 v5, 0x50

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/16 v7, 0x96

    const/16 v8, 0x96

    const/high16 v3, 0x43160000    # 150.0f

    const/high16 v4, 0x43160000    # 150.0f

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v3, "_"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    :try_start_0
    iget v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v2, v5, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhotoBitmap:Landroid/graphics/Bitmap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "@50_50"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7, v5, v4}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :cond_2
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v2, :cond_b

    iget v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x4

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    if-eqz v2, :cond_a

    if-eqz v9, :cond_8

    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->supportEmojiMarkup:Z

    if-eqz v2, :cond_5

    iget v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->uploadMarkupVideo:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1, v4}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(ZZ)V

    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v5, :cond_4

    iget-object v11, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v12, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v13, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-interface/range {v5 .. v14}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    iget-object v15, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    iget-wide v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    iget-object v7, v0, Lorg/telegram/ui/Components/ImageUpdater;->vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v18, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    invoke-interface/range {v15 .. v24}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ImageUpdater;->cleanup()V

    :cond_4
    return-void

    :cond_5
    iput-object v9, v0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v9, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v11, 0x0

    cmp-long v3, v6, v11

    if-gez v3, :cond_6

    move-wide v6, v11

    :cond_6
    iget-wide v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    sub-long/2addr v11, v6

    long-to-double v6, v11

    const-wide v11, 0x412e848000000000L    # 1000000.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v11

    iput-wide v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    iput-boolean v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->shouldLimitFps:Z

    iget v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2, v9, v4, v4, v5}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;ZZZ)Z

    iput-object v10, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v2, :cond_7

    invoke-interface {v2, v1, v4}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(ZZ)V

    :cond_7
    iput-boolean v4, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    goto :goto_2

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v2, :cond_9

    invoke-interface {v2, v1, v5}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didStartUpload(ZZ)V

    :cond_9
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    :goto_2
    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget v1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v2, v5, v4, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v6, :cond_b

    iget-object v12, v0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v13, v0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v14, v0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-interface/range {v6 .. v15}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    :cond_b
    return-void
.end method

.method private startCrop(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadFailed()V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->clearAfterUpdate:Z

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onDestroy()V

    :cond_2
    return-void
.end method

.method public didFinishEdit(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 12

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_16

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    if-ne p1, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-ne p1, p2, :cond_2

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v0, :cond_19

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    aget-object p2, p3, v4

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    iput p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentImageProgress:F

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->onUploadProgressChanged(F)V

    goto/16 :goto_9

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-eq p1, p2, :cond_13

    sget v5, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-eq p1, v5, :cond_13

    sget v5, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    if-eq p1, v5, :cond_13

    sget v5, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    if-ne p1, v5, :cond_3

    goto/16 :goto_5

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    if-ne p1, p2, :cond_7

    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne p1, p3, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {p1, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_5
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->cleanup()V

    goto/16 :goto_9

    :cond_6
    :goto_2
    return-void

    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    if-ne p1, p2, :cond_10

    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p1, :cond_8

    goto/16 :goto_3

    :cond_8
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    aget-object p2, p3, v4

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 p2, 0x3

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    const/4 v7, 0x0

    move-object v6, p1

    move-wide v10, v3

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_19

    const/4 p2, 0x5

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-double p2, p2

    const-wide v3, 0x412e848000000000L    # 1000000.0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v3

    iget-wide v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    cmpl-double v0, v3, p2

    if-lez v0, :cond_9

    iput-wide p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    :cond_9
    iget-wide p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double p2, p2, v3

    double-to-long p2, p2

    invoke-static {p1, p2, p3, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnailAtTime(Ljava/lang/String;J[IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_e

    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {p3, v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p3

    const-string v0, "delete file "

    if-eqz p3, :cond_b

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_b
    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {p3, v3, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_d

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_d
    const/16 v8, 0x140

    const/16 v9, 0x140

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v5, 0x44480000    # 800.0f

    const/16 v6, 0x50

    const/4 v7, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v9}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/16 v8, 0x96

    const/16 v9, 0x96

    const/high16 v4, 0x43160000    # 150.0f

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz p2, :cond_e

    :try_start_0
    iget p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {p2, p3, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "@50_50"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3, p3, v2}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_e
    iget p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    goto/16 :goto_9

    :cond_f
    :goto_3
    return-void

    :cond_10
    sget p2, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    if-ne p1, p2, :cond_19

    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-ne p1, p2, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p1, :cond_11

    goto :goto_4

    :cond_11
    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide p1, p1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    long-to-int p2, p1

    int-to-long v4, p2

    const/high16 v6, 0x2000000

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    goto/16 :goto_9

    :cond_12
    :goto_4
    return-void

    :cond_13
    :goto_5
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/String;

    iput v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentImageProgress:F

    iget-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_19

    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p3, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v3, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {p3, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {p3, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-eq p1, p2, :cond_15

    if-ne p1, v3, :cond_14

    goto :goto_6

    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz p1, :cond_19

    invoke-interface {p1}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadFailed()V

    goto/16 :goto_9

    :cond_15
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->finalPath:Ljava/lang/String;

    const/high16 p2, 0x44480000    # 800.0f

    invoke-static {p1, v1, p2, p2, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_9

    :cond_16
    :goto_7
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-ne p1, p2, :cond_18

    aget-object p3, p3, v2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    goto :goto_8

    :cond_17
    iget-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-ne p1, p2, :cond_18

    aget-object p3, p3, v2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    :cond_18
    :goto_8
    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-nez p3, :cond_19

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-nez p3, :cond_19

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-nez p3, :cond_19

    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    if-ne p1, p2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedPhoto:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadedVideo:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-wide v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoTimestamp:D

    iget-object v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->videoPath:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/Components/ImageUpdater;->bigPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v8, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhoto:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ImageUpdater;->isVideo:Z

    iget-object v10, p0, Lorg/telegram/ui/Components/ImageUpdater;->vectorMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    invoke-interface/range {v1 .. v10}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V

    goto/16 :goto_1

    :cond_19
    :goto_9
    return-void
.end method

.method public dismissCurrentDialog(Landroid/app/Dialog;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    return v0

    :cond_0
    return v1
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCurrentImageProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentImageProgress:F

    return v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->smallPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    return v0
.end method

.method public isUploadingImage()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingImage:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadingVideo:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->convertingVideo:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_3

    :cond_0
    const/16 v0, 0xd

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$anim;->alpha_in:I

    sget v0, Lorg/telegram/messenger/R$anim;->alpha_out:I

    invoke-virtual {p1, p3, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p0, p3, p2, p1, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Z)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iput-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    goto :goto_4

    :cond_2
    const/16 v0, 0xe

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ImageUpdater;->startCrop(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/16 p3, 0xf

    if-ne p1, p3, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_6
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {v0, p1, p3, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_4
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p2, :cond_1

    const/16 p3, 0x11

    if-ne p1, p3, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkStorage()V

    goto :goto_1

    :cond_0
    const/4 p3, 0x4

    if-ne p1, p3, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onResume()V

    :cond_0
    return-void
.end method

.method public openCamera()V
    .locals 6

    const-string v0, "android.permission.CAMERA"

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    const/16 v3, 0x18

    const-string v4, "output"

    if-lt v1, v3, :cond_2

    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".provider"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public openGallery()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/16 v3, 0x97

    if-lt v1, v2, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v2

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    if-nez v2, :cond_1

    invoke-static {v0, v4}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_2
    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    if-eqz v0, :cond_3

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_3
    new-instance v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR_VIDEO:I

    goto :goto_0

    :cond_4
    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;-><init>(IZZLorg/telegram/ui/ChatActivity;)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setAllowSearchImages(Z)V

    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ImageUpdater$3;-><init>(Lorg/telegram/ui/Components/ImageUpdater;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->canceled:Z

    iput p4, p0, Lorg/telegram/ui/Components/ImageUpdater;->type:I

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ImageUpdater;->openAttachMenu(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_1
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    if-ne p4, v1, :cond_2

    sget p4, Lorg/telegram/messenger/R$string;->SetPhotoFor:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "SetPhotoFor"

    invoke-static {v4, p4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    invoke-virtual {v2, p4, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_1

    :cond_2
    if-ne p4, v3, :cond_3

    sget p4, Lorg/telegram/messenger/R$string;->SuggestPhotoFor:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "SuggestPhotoFor"

    invoke-static {v4, p4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_3
    sget p4, Lorg/telegram/messenger/R$string;->ChoosePhoto:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :goto_1
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget v6, Lorg/telegram/messenger/R$string;->ChooseTakePhoto:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_camera:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->canSelectVideo:Z

    if-eqz v6, :cond_4

    sget v6, Lorg/telegram/messenger/R$string;->ChooseRecordVideo:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_video:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget v6, Lorg/telegram/messenger/R$string;->ChooseFromGallery:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_photos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    if-eqz v6, :cond_5

    sget v6, Lorg/telegram/messenger/R$string;->ChooseFromSearch:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_search:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p1, :cond_6

    sget v3, Lorg/telegram/messenger/R$string;->DeletePhoto:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v3, v7

    add-int/2addr v7, v1

    goto :goto_2

    :cond_7
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v5, p2}, Lorg/telegram/ui/Components/ImageUpdater$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz p1, :cond_8

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p1, p3, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setItemColor(III)V

    :cond_8
    :goto_3
    return-void
.end method

.method public openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .line 0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/telegram/ui/Components/ImageUpdater;->openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Z)V

    return-void
.end method

.method public openPhotoForEdit(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Z)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v15

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v14}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    invoke-virtual {v15, v1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->setOrientation(Landroid/util/Pair;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v1

    move/from16 v3, p4

    iput-boolean v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    move-object/from16 v3, p2

    iput-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    new-instance v6, Lorg/telegram/ui/Components/ImageUpdater$4;

    invoke-direct {v6, v0, v2}, Lorg/telegram/ui/Components/ImageUpdater$4;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/ArrayList;)V

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/PhotoViewer;->closePhotoAfterSelectWithAnimation:Z

    return-void
.end method

.method public openSearch()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lorg/telegram/ui/PhotoPickerActivity;

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ImageUpdater;->forceDarkTheme:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v11

    move-object v4, v0

    move-object v5, v10

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/PhotoPickerActivity;-><init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;Z)V

    new-instance v1, Lorg/telegram/ui/Components/ImageUpdater$1;

    invoke-direct {v1, p0, v0, v10}, Lorg/telegram/ui/Components/ImageUpdater$1;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v1}, Lorg/telegram/ui/PhotoPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->setMaxSelectedPhotos(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;->getInitialSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/PhotoPickerActivity;->setInitialSearchString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->showingFromDialog:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method public openVideoCamera()V
    .locals 7

    const-string v0, "android.permission.CAMERA"

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    const/16 v3, 0x18

    const-string v4, "output"

    const/4 v5, 0x1

    if-lt v1, v3, :cond_2

    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".provider"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    const-string v1, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extras.LENS_FACING_FRONT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.durationLimit"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public processEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 10

    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    :goto_0
    iget-boolean v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x44480000    # 800.0f

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v3, v5, v5, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const-string v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    new-instance v1, Lorg/telegram/messenger/MessageObject;

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v1, v6, v0, v4, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v6, Ljava/io/File;

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_avatar.mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    invoke-static {p1, v3, v5, v5, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v3, v1

    :goto_2
    invoke-direct {p0, v4, p1, v3}, Lorg/telegram/ui/Components/ImageUpdater;->processBitmap(ZLandroid/graphics/Bitmap;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->delegate:Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;

    return-void
.end method

.method public setForceDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->forceDarkTheme:Z

    return-void
.end method

.method public setOpenWithFrontfaceCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->openWithFrontfaceCamera:Z

    return-void
.end method

.method public setSearchAvailable(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    return-void
.end method

.method public setSearchAvailable(ZZ)V
    .locals 0

    .line 0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ImageUpdater;->useAttachMenu:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->searchAvailable:Z

    return-void
.end method

.method public setShowingFromDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->showingFromDialog:Z

    return-void
.end method

.method public setUploadAfterSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->uploadAfterSelect:Z

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ImageUpdater;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public showAvatarConstructor(Lorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/ImageUpdater;->createChatAttachView()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    return-void
.end method

.method public updateColors()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ImageUpdater;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkColors()V

    :cond_0
    return-void
.end method
