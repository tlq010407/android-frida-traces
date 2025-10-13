.class public Lorg/telegram/messenger/camera/CameraSessionWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public camera1Session:Lorg/telegram/messenger/camera/CameraSession;

.field public camera2Session:Lorg/telegram/messenger/camera/Camera2Session;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Lorg/telegram/messenger/camera/Camera2Session;)Lorg/telegram/messenger/camera/CameraSessionWrapper;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/messenger/camera/CameraSessionWrapper;

    invoke-direct {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;-><init>()V

    iput-object p0, v0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    return-object v0
.end method

.method public static of(Lorg/telegram/messenger/camera/CameraSession;)Lorg/telegram/messenger/camera/CameraSessionWrapper;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/messenger/camera/CameraSessionWrapper;

    invoke-direct {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;-><init>()V

    iput-object p0, v0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    return-object v0
.end method


# virtual methods
.method public destroy(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/camera/Camera2Session;->destroy(ZLjava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/telegram/messenger/camera/CameraSession;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    instance-of v0, p1, Lorg/telegram/messenger/camera/CameraSessionWrapper;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/telegram/messenger/camera/CameraSessionWrapper;

    if-eq p1, p0, :cond_5

    iget-object v0, p1, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-ne v0, v3, :cond_4

    iget-object p1, p1, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    return v1

    :cond_6
    return v2
.end method

.method public focusToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/camera/CameraSession;->focusToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCameraId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/camera/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFlashMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    const-string v0, "off"

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Camera2Session;->getCurrentOrientation()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentOrientation()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Camera2Session;->getDisplayOrientation()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getNextFlashMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    const-string v0, "off"

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getNextFlashMode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWorldAngle()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Camera2Session;->getWorldAngle()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasFlashModes()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraSession;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isInitiated()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Camera2Session;->isInitiated()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->isInitied()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSameTakePictureOrientation()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->isSameTakePictureOrientation()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentFlashMode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setCurrentFlashMode(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFlipFront(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setFlipFront(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOptimizeForBarcode(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->setScanningBarcode(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setOptimizeForBarcode(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setZoom(F)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Camera2Session;->getMinZoom()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Camera2Session;->getMaxZoom()F

    move-result v2

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->setZoom(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setZoom(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopVideoRecording()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/Camera2Session;->setRecordingVideo(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->stopVideoRecording()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateRotation()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera2Session:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSessionWrapper;->camera1Session:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->updateRotation()V

    :cond_1
    :goto_0
    return-void
.end method
