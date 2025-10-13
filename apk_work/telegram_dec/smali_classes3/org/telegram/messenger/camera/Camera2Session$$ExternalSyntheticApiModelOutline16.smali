.class public abstract synthetic Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline16;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/hardware/camera2/CameraManager;)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
