.class public Lorg/telegram/messenger/camera/Camera2Session;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/camera/Camera2Session$CompareSizesByArea;
    }
.end annotation


# instance fields
.field private cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field public final cameraId:Ljava/lang/String;

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final cameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private captureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final captureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final cropRegion:Landroid/graphics/Rect;

.field private currentZoom:F

.field private doneCallback:Ljava/lang/Runnable;

.field private flashing:Z

.field private handler:Landroid/os/Handler;

.field private imageReader:Landroid/media/ImageReader;

.field private isClosed:Z

.field private isError:Z

.field private final isFront:Z

.field private isSuccess:Z

.field private lastTime:J

.field private maxZoom:F

.field private nightMode:Z

.field private opened:Z

.field private final previewSize:Landroid/util/Size;

.field private recordingVideo:Z

.field private scanningBarcode:Z

.field private sensorSize:Landroid/graphics/Rect;

.field private surface:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$4t9k5xDLEHfP3fvXmXv9cYybY4Q(Lorg/telegram/messenger/camera/Camera2Session;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$9XvuwtWfJlNKuR-GR6prp1He-yQ(Lorg/telegram/messenger/camera/Camera2Session;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->lambda$open$1(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lvvf_SkBbsqvCEhU_IdShqWBhSY(Lorg/telegram/messenger/camera/Camera2Session;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->lambda$checkOpen$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$RQeESMtgykQCBrnxVH9Q0FUcf_M(Lorg/telegram/messenger/camera/Camera2Session;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->lambda$destroy$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rlsvOa_i09a9BhBZVJLhgISAAYM(Lorg/telegram/messenger/camera/Camera2Session;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->lambda$destroy$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLjava/lang/String;Landroid/util/Size;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->maxZoom:F

    iput v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->currentZoom:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->opened:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->cropRegion:Landroid/graphics/Rect;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "tg_camera2"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lorg/telegram/messenger/camera/Camera2Session;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/camera/Camera2Session$1;

    invoke-direct {v1, p0, p3}, Lorg/telegram/messenger/camera/Camera2Session$1;-><init>(Lorg/telegram/messenger/camera/Camera2Session;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v2, Lorg/telegram/messenger/camera/Camera2Session$2;

    invoke-direct {v2, p0, p3}, Lorg/telegram/messenger/camera/Camera2Session$2;-><init>(Lorg/telegram/messenger/camera/Camera2Session;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-boolean p2, p0, Lorg/telegram/messenger/camera/Camera2Session;->isFront:Z

    iput-object p3, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraId:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/camera/Camera2Session;->previewSize:Landroid/util/Size;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/camera/Camera2Session;->lastTime:J

    invoke-static {p4}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result p2

    invoke-static {p4}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline8;->m(Landroid/util/Size;)I

    move-result p4

    const/16 v2, 0x100

    const/4 v3, 0x1

    invoke-static {p2, p4, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/camera/Camera2Session;->imageReader:Landroid/media/ImageReader;

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline9;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-static {p1, p3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline10;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline11;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object p4

    invoke-static {p2, p4}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    iput-object p2, p0, Lorg/telegram/messenger/camera/Camera2Session;->sensorSize:Landroid/graphics/Rect;

    iget-object p2, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline13;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object p4

    invoke-static {p2, p4}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p4

    cmpg-float p4, p4, v0

    if-gez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iput v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->maxZoom:F

    iget-object p2, p0, Lorg/telegram/messenger/camera/Camera2Session;->handler:Landroid/os/Handler;

    invoke-static {p1, p3, v1, p2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline14;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticLambda30;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/camera/Camera2Session;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/messenger/camera/Camera2Session;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/messenger/camera/Camera2Session;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->lastTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/camera/Camera2Session;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->checkOpen()V

    return-void
.end method

.method static synthetic access$302(Lorg/telegram/messenger/camera/Camera2Session;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->isError:Z

    return p1
.end method

.method static synthetic access$402(Lorg/telegram/messenger/camera/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/camera/Camera2Session;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->updateCaptureRequest()V

    return-void
.end method

.method static synthetic access$602(Lorg/telegram/messenger/camera/Camera2Session;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->isSuccess:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/camera/Camera2Session;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/Camera2Session;->doneCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/camera/Camera2Session;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->doneCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkOpen()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->opened:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->opened:Z

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->surface:Landroid/view/Surface;

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline24;->m(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance v0, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/messenger/camera/Camera2Session;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static chooseOptimalSize([Landroid/util/Size;IIZ)Landroid/util/Size;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget-object v3, p0, v2

    if-eqz p3, :cond_0

    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline8;->m(Landroid/util/Size;)I

    move-result v4

    if-gt v4, p2, :cond_2

    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v4

    if-le v4, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline8;->m(Landroid/util/Size;)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v5

    mul-int v5, v5, p2

    div-int/2addr v5, p1

    if-ne v4, v5, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v4

    if-lt v4, p1, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline8;->m(Landroid/util/Size;)I

    move-result v4

    if-lt v4, p2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline8;->m(Landroid/util/Size;)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v5

    mul-int v4, v4, v5

    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x4

    if-gt v4, v5, :cond_2

    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v4

    if-lt v4, p1, :cond_2

    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline8;->m(Landroid/util/Size;)I

    move-result v4

    if-lt v4, p2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    new-instance p0, Lorg/telegram/messenger/camera/Camera2Session$CompareSizesByArea;

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session$CompareSizesByArea;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    new-instance p0, Lorg/telegram/messenger/camera/Camera2Session$CompareSizesByArea;

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session$CompareSizesByArea;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lorg/telegram/messenger/camera/Camera2Session$CompareSizesByArea;

    invoke-direct {p1}, Lorg/telegram/messenger/camera/Camera2Session$CompareSizesByArea;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2
.end method

.method public static create(ZII)Lorg/telegram/messenger/camera/Camera2Session;
    .locals 19

    move/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "camera"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline9;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraManager;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline16;->m(Landroid/hardware/camera2/CameraManager;)[Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    :try_start_1
    array-length v13, v6

    if-ge v9, v13, :cond_9

    aget-object v13, v6, v9

    invoke-static {v4, v13}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline10;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v14

    if-nez v14, :cond_1

    :goto_1
    move-object/from16 v16, v4

    const/4 v4, 0x0

    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline17;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    xor-int/lit8 v5, v1, 0x1

    if-eq v15, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline18;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v5

    invoke-static {v14, v5}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline19;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline20;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/util/Size;

    move-result-object v14

    if-nez v14, :cond_3

    const/4 v15, 0x0

    goto :goto_2

    :cond_3
    invoke-static {v14}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline8;->m(Landroid/util/Size;)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v15, v14

    :goto_2
    int-to-float v14, v0

    int-to-float v7, v2

    div-float/2addr v14, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    cmpl-float v17, v14, v7

    if-ltz v17, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    cmpl-float v18, v15, v7

    move-object/from16 v16, v4

    if-ltz v18, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-eq v8, v4, :cond_6

    div-float v15, v7, v15

    :cond_6
    const/4 v4, 0x0

    cmpg-float v7, v12, v4

    if-lez v7, :cond_7

    sub-float v7, v14, v12

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_7
    :goto_5
    if-eqz v5, :cond_0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_0

    const-class v7, Landroid/graphics/SurfaceTexture;

    invoke-static {v5, v7}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline15;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v0, v2, v7}, Lorg/telegram/messenger/camera/Camera2Session;->chooseOptimalSize([Landroid/util/Size;IIZ)Landroid/util/Size;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_8

    move-object v11, v5

    move-object v10, v13

    move v12, v15

    :cond_8
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v16

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    if-eqz v10, :cond_a

    if-nez v11, :cond_b

    :cond_a
    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    new-instance v0, Lorg/telegram/messenger/camera/Camera2Session;

    invoke-direct {v0, v3, v1, v10, v11}, Lorg/telegram/messenger/camera/Camera2Session;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/util/Size;)V

    return-object v0

    :goto_8
    return-object v1
.end method

.method private getJpegOrientation()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x10e

    goto :goto_0

    :cond_3
    const/16 v1, 0xb4

    goto :goto_0

    :cond_4
    const/16 v1, 0x5a

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline23;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v3, p0, Lorg/telegram/messenger/camera/Camera2Session;->isFront:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    rsub-int v1, v2, 0x168

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit16 v1, v2, 0x168

    :goto_1
    rem-int/lit16 v1, v1, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method private synthetic lambda$checkOpen$2()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->isError:Z

    return-void
.end method

.method private synthetic lambda$destroy$3(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$destroy$4(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline21;->m(Landroid/hardware/camera2/CameraCaptureSession;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline22;->m(Landroid/hardware/camera2/CameraDevice;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->imageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->imageReader:Landroid/media/ImageReader;

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    new-instance v0, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/messenger/camera/Camera2Session;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->isError:Z

    return-void
.end method

.method private synthetic lambda$open$1(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->checkOpen()V

    return-void
.end method

.method private updateCaptureRequest()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->recordingVideo:Z

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->scanningBarcode:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline1;->m(Landroid/hardware/camera2/CameraDevice;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-boolean v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->scanningBarcode:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline4;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    iget-boolean v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->nightMode:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline4;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    iget-boolean v5, p0, Lorg/telegram/messenger/camera/Camera2Session;->isFront:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x6

    goto :goto_2

    :cond_4
    const/4 v5, 0x5

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline27;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    iget-boolean v5, p0, Lorg/telegram/messenger/camera/Camera2Session;->flashing:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lorg/telegram/messenger/camera/Camera2Session;->recordingVideo:Z

    if-eqz v5, :cond_7

    const/4 v2, 0x2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->recordingVideo:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline28;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    new-instance v2, Landroid/util/Range;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline29;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->sensorSize:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->currentZoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->sensorSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v4

    iget-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->sensorSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v4

    iget-object v2, p0, Lorg/telegram/messenger/camera/Camera2Session;->sensorSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    iget v4, p0, Lorg/telegram/messenger/camera/Camera2Session;->currentZoom:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lorg/telegram/messenger/camera/Camera2Session;->sensorSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    iget v3, p0, Lorg/telegram/messenger/camera/Camera2Session;->currentZoom:F

    div-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/camera/Camera2Session;->cropRegion:Landroid/graphics/Rect;

    sub-int v5, v0, v2

    sub-int v6, v1, v3

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline25;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/Camera2Session;->cropRegion:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->surface:Landroid/view/Surface;

    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline5;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline6;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/Camera2Session;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline26;->m(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    const-string v1, "Camera2Sessions setRepeatingRequest error in updateCaptureRequest"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    return-void
.end method


# virtual methods
.method public destroy(Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/camera/Camera2Session;->destroy(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public destroy(ZLjava/lang/Runnable;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->isClosed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->handler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/camera/Camera2Session;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline21;->m(Landroid/hardware/camera2/CameraCaptureSession;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline22;->m(Landroid/hardware/camera2/CameraDevice;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->imageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->imageReader:Landroid/media/ImageReader;

    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->thread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p2, :cond_4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getCurrentOrientation()I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->getJpegOrientation()I

    move-result v0

    return v0
.end method

.method public getDisplayOrientation()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x10e

    goto :goto_0

    :cond_3
    const/16 v1, 0xb4

    goto :goto_0

    :cond_4
    const/16 v1, 0x5a

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline23;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v3, p0, Lorg/telegram/messenger/camera/Camera2Session;->isFront:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    rsub-int v1, v2, 0x168

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit16 v1, v2, 0x168

    :goto_1
    rem-int/lit16 v1, v1, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public getFlash()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->flashing:Z

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->maxZoom:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->previewSize:Landroid/util/Size;

    invoke-static {v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline8;->m(Landroid/util/Size;)I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->previewSize:Landroid/util/Size;

    invoke-static {v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v0

    return v0
.end method

.method public getWorldAngle()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/Camera2Session;->getDisplayOrientation()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->getJpegOrientation()I

    move-result v1

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x168

    :cond_0
    return v1
.end method

.method public getZoom()F
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->currentZoom:F

    return v0
.end method

.method public isInitiated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->isError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->isClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/camera/Camera2Session;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFlash(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->flashing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->flashing:Z

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->updateCaptureRequest()V

    :cond_0
    return-void
.end method

.method public setNightMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->nightMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->nightMode:Z

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->updateCaptureRequest()V

    :cond_0
    return-void
.end method

.method public setRecordingVideo(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->recordingVideo:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->recordingVideo:Z

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->updateCaptureRequest()V

    :cond_0
    return-void
.end method

.method public setScanningBarcode(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->scanningBarcode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->scanningBarcode:Z

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->updateCaptureRequest()V

    :cond_0
    return-void
.end method

.method public setZoom(F)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/Camera2Session;->isInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->sensorSize:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->maxZoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->currentZoom:F

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->updateCaptureRequest()V

    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline6;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/Camera2Session;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline26;->m(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public takePicture(Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x2

    :try_start_0
    invoke-static {v0, v2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline1;->m(Landroid/hardware/camera2/CameraDevice;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session;->getJpegOrientation()I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline2;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/telegram/messenger/camera/Camera2Session;->imageReader:Landroid/media/ImageReader;

    new-instance v4, Lorg/telegram/messenger/camera/Camera2Session$3;

    invoke-direct {v4, p0, p1, p2, v2}, Lorg/telegram/messenger/camera/Camera2Session$3;-><init>(Lorg/telegram/messenger/camera/Camera2Session;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;I)V

    const/4 p1, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-boolean p2, p0, Lorg/telegram/messenger/camera/Camera2Session;->scanningBarcode:Z

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline4;->m()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p2

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline3;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/camera/Camera2Session;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline5;->m(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    iget-object p2, p0, Lorg/telegram/messenger/camera/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline6;->m(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/camera/Camera2Session$4;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/camera/Camera2Session$4;-><init>(Lorg/telegram/messenger/camera/Camera2Session;)V

    invoke-static {p2, v0, v2, p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline7;->m(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :goto_1
    const-string p2, "Camera2Sessions takePicture error"

    invoke-static {p2, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return v1
.end method

.method public whenDone(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/Camera2Session;->isInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session;->doneCallback:Ljava/lang/Runnable;

    return-void
.end method
