.class public Lorg/telegram/ui/AvatarPreviewer$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/AvatarPreviewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private final imageFilter:Ljava/lang/String;

.field private final imageLocation:Lorg/telegram/messenger/ImageLocation;

.field private final infoLoadTask:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

.field private final menuItems:[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

.field private final parentObject:Ljava/lang/Object;

.field private final thumb:Landroid/graphics/drawable/BitmapDrawable;

.field private final thumbImageFilter:Ljava/lang/String;

.field private final thumbImageLocation:Lorg/telegram/messenger/ImageLocation;

.field private final videoFileName:Ljava/lang/String;

.field private final videoFilter:Ljava/lang/String;

.field private final videoLocation:Lorg/telegram/messenger/ImageLocation;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/Object;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object p2, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->thumbImageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object p3, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->videoLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object p4, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->imageFilter:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->thumbImageFilter:Ljava/lang/String;

    iput-object p6, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->videoFilter:Ljava/lang/String;

    iput-object p7, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->videoFileName:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->thumb:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p9, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->parentObject:Ljava/lang/Object;

    iput-object p10, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->menuItems:[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    iput-object p11, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->infoLoadTask:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/messenger/ImageLocation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/messenger/ImageLocation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->thumbImageLocation:Lorg/telegram/messenger/ImageLocation;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/AvatarPreviewer$Data;)[Lorg/telegram/ui/AvatarPreviewer$MenuItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->menuItems:[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/messenger/ImageLocation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->videoLocation:Lorg/telegram/messenger/ImageLocation;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/AvatarPreviewer$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->videoFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/AvatarPreviewer$Data;)Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->infoLoadTask:Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/AvatarPreviewer$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->videoFilter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/AvatarPreviewer$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->imageFilter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/AvatarPreviewer$Data;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->thumbImageFilter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/AvatarPreviewer$Data;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->thumb:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/AvatarPreviewer$Data;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$Data;->parentObject:Ljava/lang/Object;

    return-object p0
.end method

.method public static varargs of(Lorg/telegram/tgnet/TLRPC$Chat;I[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;
    .locals 13

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    iget-object v1, v3, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v1, :cond_0

    const-string v1, "b"

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    if-eqz p0, :cond_1

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    move-object v9, v0

    new-instance v0, Lorg/telegram/ui/AvatarPreviewer$Data;

    new-instance v12, Lorg/telegram/ui/AvatarPreviewer$ChatInfoLoadTask;

    invoke-direct {v12, p0, p1}, Lorg/telegram/ui/AvatarPreviewer$ChatInfoLoadTask;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v10, p0

    move-object v11, p2

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/AvatarPreviewer$Data;-><init>(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/Object;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;)V

    return-object v0
.end method

.method public static varargs of(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;
    .locals 13

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    iget-object v1, v3, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v1, :cond_0

    const-string v1, "b"

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    if-eqz p0, :cond_1

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object v9, v0

    :goto_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v4, 0x3e8

    invoke-static {v1, v4}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v1, p1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    move-object v4, p1

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object v4, v0

    move-object v8, v4

    :goto_2
    if-eqz v4, :cond_3

    iget p1, v4, Lorg/telegram/messenger/ImageLocation;->imageType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const-string p1, "g"

    move-object v7, p1

    goto :goto_3

    :cond_3
    move-object v7, v0

    :goto_3
    new-instance p1, Lorg/telegram/ui/AvatarPreviewer$Data;

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object v1, p1

    move-object v10, p0

    move-object v11, p2

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/AvatarPreviewer$Data;-><init>(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/Object;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;)V

    return-object p1
.end method

.method public static varargs of(Lorg/telegram/tgnet/TLRPC$User;I[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;
    .locals 13

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    iget-object v1, v3, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v1, :cond_0

    const-string v1, "b"

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    if-eqz p0, :cond_1

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    move-object v9, v0

    new-instance v0, Lorg/telegram/ui/AvatarPreviewer$Data;

    new-instance v12, Lorg/telegram/ui/AvatarPreviewer$UserInfoLoadTask;

    invoke-direct {v12, p0, p1}, Lorg/telegram/ui/AvatarPreviewer$UserInfoLoadTask;-><init>(Lorg/telegram/tgnet/TLRPC$User;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v10, p0

    move-object v11, p2

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/AvatarPreviewer$Data;-><init>(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/Object;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;)V

    return-object v0
.end method

.method public static varargs of(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$UserFull;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;
    .locals 13

    .line 0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    :cond_0
    move-object v2, v0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    iget-object v1, v3, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v1, :cond_1

    const-string v1, "b"

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, v0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    move-object v9, p0

    goto :goto_1

    :cond_2
    move-object v9, v0

    :goto_1
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-static {p0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object p0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {p0, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    move-object v4, v1

    goto :goto_2

    :cond_3
    move-object v4, v0

    move-object v8, v4

    :goto_2
    if-eqz v4, :cond_4

    iget p0, v4, Lorg/telegram/messenger/ImageLocation;->imageType:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    const-string p0, "g"

    move-object v7, p0

    goto :goto_3

    :cond_4
    move-object v7, v0

    :goto_3
    new-instance p0, Lorg/telegram/ui/AvatarPreviewer$Data;

    iget-object v10, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v11, p2

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/AvatarPreviewer$Data;-><init>(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/Object;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;Lorg/telegram/ui/AvatarPreviewer$InfoLoadTask;)V

    return-object p0
.end method
