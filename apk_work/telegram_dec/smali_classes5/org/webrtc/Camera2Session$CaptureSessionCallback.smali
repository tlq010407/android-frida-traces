.class Lorg/webrtc/Camera2Session$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/Camera2Session;


# direct methods
.method public static synthetic $r8$lambda$ZzH-OhveMDi0ypJsV9EdfM3Bwm0(Lorg/webrtc/Camera2Session$CaptureSessionCallback;Lorg/webrtc/VideoFrame;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->lambda$onConfigured$0(Lorg/webrtc/VideoFrame;)V

    return-void
.end method

.method private constructor <init>(Lorg/webrtc/Camera2Session;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/Camera2Session;Lorg/webrtc/Camera2Session$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/webrtc/Camera2Session$CaptureSessionCallback;-><init>(Lorg/webrtc/Camera2Session;)V

    return-void
.end method

.method private chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$1500(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "Camera2Session"

    if-ge v2, v1, :cond_1

    aget v4, v0, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-static {}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticApiModelOutline1;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using continuous video auto-focus."

    :goto_1
    invoke-static {v3, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Auto-focus is not available."

    goto :goto_1
.end method

.method private chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 9

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$1500(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticApiModelOutline2;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const-string v1, "Camera2Session"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v0, :cond_1

    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget v8, v0, v7

    if-ne v8, v4, :cond_0

    invoke-static {}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticApiModelOutline3;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticApiModelOutline4;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using optical stabilization."

    :goto_1
    invoke-static {v1, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$1500(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticApiModelOutline5;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v6, v0

    :goto_2
    if-ge v2, v6, :cond_3

    aget v7, v0, v2

    if-ne v7, v4, :cond_2

    invoke-static {}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticApiModelOutline4;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticApiModelOutline3;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using video stabilization."

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-string p1, "Stabilization not available."

    goto :goto_1
.end method

.method private synthetic lambda$onConfigured$0(Lorg/webrtc/VideoFrame;)V
    .locals 5

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$000(Lorg/webrtc/Camera2Session;)V

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$200(Lorg/webrtc/Camera2Session;)Lorg/webrtc/Camera2Session$SessionState;

    move-result-object v0

    sget-object v1, Lorg/webrtc/Camera2Session$SessionState;->RUNNING:Lorg/webrtc/Camera2Session$SessionState;

    if-eq v0, v1, :cond_0

    const-string p1, "Camera2Session"

    const-string v0, "Texture frame captured but camera is no longer running."

    invoke-static {p1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$1600(Lorg/webrtc/Camera2Session;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/webrtc/Camera2Session;->access$1602(Lorg/webrtc/Camera2Session;Z)Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$1700(Lorg/webrtc/Camera2Session;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {}, Lorg/webrtc/Camera2Session;->access$1800()Lorg/webrtc/Histogram;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/webrtc/Histogram;->addSample(I)V

    :cond_1
    new-instance v0, Lorg/webrtc/VideoFrame;

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lorg/webrtc/TextureBufferImpl;

    iget-object v2, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v2}, Lorg/webrtc/Camera2Session;->access$1900(Lorg/webrtc/Camera2Session;)Z

    move-result v2

    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$2000(Lorg/webrtc/Camera2Session;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lorg/webrtc/CameraSession$-CC;->createTextureBufferWithModifiedTransformMatrix(Lorg/webrtc/TextureBufferImpl;ZI)Lorg/webrtc/VideoFrame$TextureBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v2}, Lorg/webrtc/Camera2Session;->access$2100(Lorg/webrtc/Camera2Session;)I

    move-result v2

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    iget-object p1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {p1}, Lorg/webrtc/Camera2Session;->access$500(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object p1

    iget-object v1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-interface {p1, v1, v0}, Lorg/webrtc/CameraSession$Events;->onFrameCaptured(Lorg/webrtc/CameraSession;Lorg/webrtc/VideoFrame;)V

    invoke-virtual {v0}, Lorg/webrtc/VideoFrame;->release()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$000(Lorg/webrtc/Camera2Session;)V

    invoke-static {p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline21;->m(Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object p1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    const-string v0, "Failed to configure capture session."

    invoke-static {p1, v0}, Lorg/webrtc/Camera2Session;->access$600(Lorg/webrtc/Camera2Session;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$000(Lorg/webrtc/Camera2Session;)V

    const-string v0, "Camera capture session configured."

    const-string v1, "Camera2Session"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v0, p1}, Lorg/webrtc/Camera2Session;->access$102(Lorg/webrtc/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$700(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline1;->m(Landroid/hardware/camera2/CameraDevice;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline28;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    new-instance v3, Landroid/util/Range;

    iget-object v4, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v4}, Lorg/webrtc/Camera2Session;->access$800(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v4

    iget-object v4, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v4, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget-object v5, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v5}, Lorg/webrtc/Camera2Session;->access$1300(Lorg/webrtc/Camera2Session;)I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v5}, Lorg/webrtc/Camera2Session;->access$800(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v5

    iget-object v5, v5, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v5, v5, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    iget-object v6, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v6}, Lorg/webrtc/Camera2Session;->access$1300(Lorg/webrtc/Camera2Session;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticApiModelOutline6;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticApiModelOutline7;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {p0, v0}, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v2}, Lorg/webrtc/Camera2Session;->access$1000(Lorg/webrtc/Camera2Session;)Landroid/view/Surface;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline5;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    invoke-static {v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline6;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v2, Lorg/webrtc/Camera2Session$CameraCaptureCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/webrtc/Camera2Session$CameraCaptureCallback;-><init>(Lorg/webrtc/Camera2Session$1;)V

    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$1200(Lorg/webrtc/Camera2Session;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline26;->m(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    iget-object p1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {p1}, Lorg/webrtc/Camera2Session;->access$900(Lorg/webrtc/Camera2Session;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object p1

    new-instance v0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticLambda8;-><init>(Lorg/webrtc/Camera2Session$CaptureSessionCallback;)V

    invoke-virtual {p1, v0}, Lorg/webrtc/SurfaceTextureHelper;->startListening(Lorg/webrtc/VideoSink;)V

    const-string p1, "Camera device successfully started."

    invoke-static {v1, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {p1}, Lorg/webrtc/Camera2Session;->access$400(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraSession$CreateSessionCallback;

    move-result-object p1

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-interface {p1, v0}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onDone(Lorg/webrtc/CameraSession;)V

    return-void
.end method
