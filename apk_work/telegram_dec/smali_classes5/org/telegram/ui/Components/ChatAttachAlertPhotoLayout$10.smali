.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private outputFile:Ljava/io/File;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

.field final synthetic val$container:Landroid/widget/FrameLayout;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private zoomingWas:Z


# direct methods
.method public static synthetic $r8$lambda$-hAbRNaCJprMGTZMvnd0lbOdKhE(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->lambda$shutterLongPressed$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$1-pCfsOk7YGqa3128VBkuFDPlZg(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->lambda$shutterLongPressed$1(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rv002iZYNdlG1Hb7iWkS0hL2TuE(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;Ljava/io/File;ZLjava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->lambda$shutterReleased$3(Ljava/io/File;ZLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TI7g2WVIJecT4gRGYY6Xq_ZWasE(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->lambda$shutterLongPressed$2()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$container:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$shutterLongPressed$0()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2908(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatLongDuration(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$shutterLongPressed$1(Ljava/lang/String;J)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-nez v3, :cond_2

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3502(Z)Z

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v15, v4

    move v14, v5

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    const/4 v5, 0x0

    :goto_0
    move v14, v5

    const/4 v15, 0x0

    :goto_1
    new-instance v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    sget v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    add-int/lit8 v5, v8, -0x1

    sput v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    const-wide/16 v16, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v17}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    move-wide/from16 v5, p2

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    iput-object v1, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v5, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v5, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v1, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iput-boolean v3, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    iput-boolean v2, v1, Lorg/telegram/messenger/MediaController$CropState;->freeform:Z

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lorg/telegram/messenger/MediaController$CropState;->lockedAspectRatio:F

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v1, v4, v2, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    :cond_2
    :goto_2
    return-void
.end method

.method private synthetic lambda$shutterLongPressed$2()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$shutterReleased$3(Ljava/io/File;ZLjava/lang/Integer;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    if-eqz p1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3502(Z)Z

    const/4 v1, 0x1

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v14, v3

    move v13, v4

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    const/4 v4, 0x0

    :goto_0
    move v13, v4

    const/4 v14, 0x0

    :goto_1
    new-instance v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    sget v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    add-int/lit8 v4, v7, -0x1

    sput v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v11, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v11, v4

    :goto_2
    const/4 v12, 0x0

    const-wide/16 v15, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v16}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    iput-boolean v1, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move/from16 v4, p2

    invoke-virtual {v1, v3, v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public onTranslationChanged(FF)Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    if-eqz v0, :cond_2

    move v0, p2

    goto :goto_2

    :cond_2
    move v0, p1

    :goto_2
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    if-nez v4, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    const/4 v1, 0x0

    cmpg-float v4, v0, v1

    if-gez v4, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1, v3, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    neg-float p2, v0

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    return v2

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    :cond_6
    cmpl-float v0, p1, v1

    if-nez v0, :cond_7

    cmpl-float v0, p2, v1

    if-nez v0, :cond_7

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->zoomingWas:Z

    if-nez v0, :cond_9

    cmpl-float p1, p1, v1

    if-nez p1, :cond_8

    cmpl-float p1, p2, v1

    if-eqz p1, :cond_9

    :cond_8
    const/4 v2, 0x1

    :cond_9
    return v2
.end method

.method public shutterCancel()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Ljava/lang/Object;Z)V

    return-void
.end method

.method public shutterLongPressed()Z
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_a

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-nez v2, :cond_a

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-boolean v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->GlobalAttachVideoRestricted:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v3

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v5, 0x1

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v2}, Landroidx/core/widget/TextViewCompat$OreoCallback$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2702(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    :cond_6
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x41f00000    # 30.0f

    const-wide/16 v6, 0x96

    const/4 v8, 0x0

    if-ge v1, v4, :cond_7

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)[Landroid/widget/ImageView;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath(Z)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->formatLongDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2902(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3002(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->outputFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_9

    const/4 v9, 0x1

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    :goto_2
    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V

    new-instance v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda3;

    invoke-direct {v11, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/camera/CameraController;->recordVideo(Ljava/lang/Object;Ljava/io/File;ZLorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraController$ICameraView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->runHaptic()V

    return v5

    :cond_a
    :goto_3
    return v3
.end method

.method public shutterReleased()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->GlobalAttachPhotoRestricted:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath(ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->isSameTakePictureOrientation()Z

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v6, v6, Lorg/telegram/ui/ChatActivity;

    if-nez v6, :cond_5

    iget v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->setFlipFront(Z)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;Ljava/io/File;Z)V

    invoke-virtual {v5, v0, v3, v6, v7}, Lorg/telegram/messenger/camera/CameraController;->takePicture(Ljava/io/File;ZLjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback;)Z

    move-result v0

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$2502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraView;->startTakePictureAnimation(Z)V

    :cond_6
    :goto_3
    return-void
.end method
