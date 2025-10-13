.class public Lorg/telegram/ui/Components/WallpaperUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;
    }
.end annotation


# instance fields
.field private currentPicturePath:Ljava/lang/String;

.field private currentWallpaperPath:Ljava/io/File;

.field private delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private picturePath:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$MAOIoA4JBqd4Y8Y0TRMJNGj7hXs(Lorg/telegram/ui/Components/WallpaperUpdater;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/WallpaperUpdater;->lambda$showAlert$0(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->picturePath:Ljava/io/File;

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/WallpaperUpdater;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WallpaperUpdater;->didSelectPhotos(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/WallpaperUpdater;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private didSelectPhotos(Ljava/util/ArrayList;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v0, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x57

    invoke-virtual {p1, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-interface {v0, v1, p1, v2}, Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;->didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$showAlert$0(ZLandroid/content/DialogInterface;I)V
    .locals 5

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-nez p3, :cond_2

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x18

    const-string v3, "output"

    if-lt v1, v2, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".provider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;

    const/16 p3, 0xa

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_1
    :try_start_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_2
    if-ne p3, p2, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/WallpaperUpdater;->openGallery()V

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_5

    if-ne p3, v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;->needOpenColorPicker()V

    goto :goto_3

    :cond_4
    const/4 p1, 0x3

    if-ne p3, p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-interface {p1, p3, p3, p2}, Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;->didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    return-void
.end method

.method public getCurrentPicturePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    const/16 p2, 0xa

    const/4 v0, 0x0

    const/16 v1, 0x57

    const/4 v2, 0x1

    const-string v3, ".jpg"

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    iget p3, p1, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-static {p2, v5, p3, p1, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/io/FileOutputStream;

    iget-object p3, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p3, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-interface {p3, v1, p1, v0}, Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;->didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p2, v5

    :goto_1
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p2, :cond_0

    goto :goto_0

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_3
    iput-object v5, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object v5, p2

    :goto_4
    move-object p2, v5

    :goto_5
    if-eqz p2, :cond_1

    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_6
    throw p1

    :cond_2
    const/16 p2, 0xb

    if-ne p1, p2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_7

    :cond_3
    :try_start_5
    new-instance p1, Ljava/io/File;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    iget p3, p1, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-static {v5, p2, p3, p1, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/io/FileOutputStream;

    iget-object p3, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    iget-object p3, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentWallpaperPath:Ljava/io/File;

    invoke-interface {p2, p3, p1, v0}, Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;->didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    nop

    :cond_4
    :goto_7
    return-void
.end method

.method public openGallery()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x4

    if-lt v1, v2, :cond_0

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_0
    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;

    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_WALLPAPER:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;-><init>(IZZLorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setAllowSearchImages(Z)V

    new-instance v1, Lorg/telegram/ui/Components/WallpaperUpdater$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WallpaperUpdater$1;-><init>(Lorg/telegram/ui/Components/WallpaperUpdater;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public setCurrentPicturePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;

    return-void
.end method

.method public showAlert(Z)V
    .locals 6

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->ChoosePhoto:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/CharSequence;

    sget v5, Lorg/telegram/messenger/R$string;->ChooseTakePhoto:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    sget v3, Lorg/telegram/messenger/R$string;->SelectFromGallery:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    sget v2, Lorg/telegram/messenger/R$string;->SelectColor:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    sget v1, Lorg/telegram/messenger/R$string;->Default:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-array v4, v1, [Ljava/lang/CharSequence;

    sget v5, Lorg/telegram/messenger/R$string;->ChooseTakePhoto:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    sget v5, Lorg/telegram/messenger/R$string;->SelectFromGallery:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-array v1, v1, [I

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_camera:I

    aput v5, v1, v3

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_photos:I

    aput v3, v1, v2

    :goto_0
    new-instance v2, Lorg/telegram/ui/Components/WallpaperUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/WallpaperUpdater$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/WallpaperUpdater;Z)V

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method
