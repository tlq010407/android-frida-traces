.class Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarUpdaterDelegate"
.end annotation


# instance fields
.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private final peerId:J

.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field private uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

.field public uploadingProgress:F


# direct methods
.method public static synthetic $r8$lambda$2vNtGBcerjIp93BB8UwM-KvXPls(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->lambda$didUploadPhoto$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c4W1HAGcfQuxlRpLfn90-h8wr7E(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->lambda$didUploadPhoto$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$cJL_dmj9xD1PlZkDu_AMal63CKE(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->lambda$didUploadPhoto$3(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wYc-iZjCgn_K7vRA4cNW4YveIRg(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->lambda$didUploadPhoto$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/GroupCallActivity;J)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->peerId:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/GroupCallActivity;JLorg/telegram/ui/GroupCallActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;-><init>(Lorg/telegram/ui/GroupCallActivity;J)V

    return-void
.end method

.method static synthetic access$20900(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object p0
.end method

.method static synthetic access$21000(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;)Lorg/telegram/messenger/ImageLocation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    return-object p0
.end method

.method private synthetic lambda$didUploadPhoto$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$19000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ProfileGalleryView;->removeUploadingImage(Lorg/telegram/messenger/ImageLocation;)V

    iput-object v3, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    :cond_0
    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v4, 0x96

    invoke-static {v2, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    const/16 v5, 0x320

    invoke-static {v2, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    goto :goto_1

    :cond_3
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$VideoSize;

    :goto_1
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;-><init>()V

    iput-object v6, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v7, p2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    if-eqz v4, :cond_4

    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p2, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_4
    if-eqz v2, :cond_5

    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p2, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_5
    if-eqz v4, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->access$24800(Lorg/telegram/ui/GroupCallActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    invoke-virtual {p2, v4, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p2

    iget-object v6, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$24900(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v6, v7, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "@50_50"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    invoke-virtual {v6, p2, v4, v7, v1}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Z)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->access$25000(Lorg/telegram/ui/GroupCallActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    invoke-virtual {p2, v2, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$25100(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v2, v4, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_7
    if-eqz v5, :cond_8

    if-eqz p3, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->access$25200(Lorg/telegram/ui/GroupCallActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    const-string v2, "mp4"

    invoke-virtual {p2, v5, v2, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getDialogPhotos(J)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->reset()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, p2, v3, v1, v0}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->peerId:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object p2

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p3}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p3

    if-nez p3, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->access$19000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->setCreateThumbFromParent(Z)V

    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->access$19000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p3

    invoke-virtual {p3, v3, p2, p1, v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->initIfEmpty(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Z)Z

    iput-object v3, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->updateAvatarUploadingProgress(F)V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget p3, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_ALL:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p3, v2, v1

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$2()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$19000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->removeUploadingImage(Lorg/telegram/messenger/ImageLocation;)V

    iput-object v1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->peerId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$19000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->setCreateThumbFromParent(Z)V

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$19000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v0, v4}, Lorg/telegram/ui/Components/ProfileGalleryView;->initIfEmpty(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Z)Z

    iput-object v1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->updateAvatarUploadingProgress(F)V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$3(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$19000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ProfileGalleryView;->addUploadingImage(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-wide v3, v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->peerId:J

    const-wide/16 v8, 0x0

    cmp-long v10, v3, v8

    if-lez v10, :cond_5

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    if-eqz v5, :cond_2

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_2
    if-eqz v6, :cond_3

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    move-wide/from16 v8, p4

    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_start_ts:D

    or-int/lit8 v2, v2, 0x6

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_3
    if-eqz v7, :cond_4

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_emoji_markup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda1;

    move-object/from16 v10, p6

    invoke-direct {v3, v0, v10}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    :cond_5
    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v11, v0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->peerId:J

    neg-long v11, v11

    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v14, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    new-instance v15, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v15, v0}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;)V

    const/4 v4, 0x0

    move-object v1, v3

    move-wide v2, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(JLorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic canFinishFragment()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method

.method public didStartUpload(ZZ)V
    .locals 0

    return-void
.end method

.method public synthetic didUploadFailed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$didUploadFailed(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    return-void
.end method

.method public didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 11

    new-instance v10, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p9

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic getCloseIntoObject()Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getCloseIntoObject(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getInitialSearchString()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getInitialSearchString(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUploadProgressChanged(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$19000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ProfileGalleryView;->setUploadProgress(Lorg/telegram/messenger/ImageLocation;F)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->updateAvatarUploadingProgress(F)V

    return-void
.end method

.method public synthetic supportsBulletin()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$supportsBulletin(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method

.method public updateAvatarUploadingProgress(F)V
    .locals 3

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->uploadingProgress:F

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$AvatarUpdaterDelegate;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Cells/GroupCallUserCell;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/Cells/GroupCallUserCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->isSelfUser()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Cells/GroupCallUserCell;->setUploadProgress(FZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
