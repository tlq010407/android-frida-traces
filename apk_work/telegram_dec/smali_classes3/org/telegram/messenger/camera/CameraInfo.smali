.class public Lorg/telegram/messenger/camera/CameraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected camera:Landroid/hardware/Camera;

.field public cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field protected cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field public cameraId:I

.field captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public final frontCamera:I

.field protected pictureSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected previewSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    iput p1, p0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    iput p2, p0, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    return-void
.end method

.method private getCamera()Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    return-object v0
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    return v0
.end method

.method public getPictureSizes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreviewSizes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isFrontface()Z
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
