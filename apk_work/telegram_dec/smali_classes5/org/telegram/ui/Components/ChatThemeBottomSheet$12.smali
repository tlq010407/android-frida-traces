.class Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatThemeBottomSheet;->openGalleryForBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field start:J

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$O3VwYKFe74yYEGXWgO_F1ROTItk(Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->lambda$onWallpaperSelected$1(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mERceta9njFVtQX0rzqpEBgP3Uc(Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->lambda$didPressedButton$0(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didPressedButton$0(Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onWallpaperSelected$1(Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method public didPressedButton(IZZIJZZJ)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object p2, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    new-instance p1, Ljava/io/File;

    const/4 p3, 0x4

    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p5}, Ljava/util/Random;->nextInt()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ".jpg"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object p3

    iget p4, p3, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    const/4 p5, 0x1

    const/4 p6, 0x0

    invoke-static {p2, p6, p4, p3, p5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p5, 0x57

    invoke-virtual {p2, p4, p5, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance p3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12$1;

    new-instance p4, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    const-string p5, ""

    invoke-direct {p4, p5, p1, p1}, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p3, p0, p4, p2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12$1;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2400(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const p1, 0x3e4ccccd    # 0.2f

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p2, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setInitialModes(ZZF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->setDialogId(J)V

    new-instance p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;)V

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setDelegate(Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2600(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/ui/ThemePreviewActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
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

.method public onWallpaperSelected(Ljava/lang/Object;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12$2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12$2;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;Ljava/lang/Object;Landroid/graphics/Bitmap;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2400(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    move-result-object p1

    iput-object p1, v6, Lorg/telegram/ui/ThemePreviewActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;->setDialogId(J)V

    new-instance p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;)V

    invoke-virtual {v6, p1}, Lorg/telegram/ui/ThemePreviewActivity;->setDelegate(Lorg/telegram/ui/ThemePreviewActivity$WallpaperActivityDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {p1, v6}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2600(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/ui/ThemePreviewActivity;)V

    return-void
.end method

.method public synthetic openAvatarsSearch()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$openAvatarsSearch(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    return-void
.end method

.method public selectItemOnClicking()Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->start:J

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$sendAudio(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V

    return-void
.end method
