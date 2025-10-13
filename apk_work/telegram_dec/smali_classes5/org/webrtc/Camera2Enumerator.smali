.class public Lorg/webrtc/Camera2Enumerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/CameraEnumerator;


# static fields
.field private static final NANO_SECONDS_PER_SECOND:D = 1.0E9

.field private static final TAG:Ljava/lang/String; = "Camera2Enumerator"

.field private static final cachedSupportedFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final cameraManager:Landroid/hardware/camera2/CameraManager;

.field final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/webrtc/Camera2Enumerator;->cachedSupportedFormats:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/Camera2Enumerator;->context:Landroid/content/Context;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline9;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/Camera2Enumerator;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method static convertFramerates([Landroid/util/Range;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticApiModelOutline3;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int v5, v5, p1

    invoke-static {v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo$$ExternalSyntheticApiModelOutline2;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int v3, v3, p1

    invoke-direct {v4, v5, v3}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static convertSizes([Landroid/util/Size;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Lorg/webrtc/Size;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    new-instance v4, Lorg/webrtc/Size;

    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/Size;)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline8;->m(Landroid/util/Size;)I

    move-result v3

    invoke-direct {v4, v5, v3}, Lorg/webrtc/Size;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/Camera2Enumerator;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0, p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline10;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera access exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2Enumerator"

    invoke-static {v0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static getFpsUnitFactor([Landroid/util/Range;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v0, p0

    const/16 v1, 0x3e8

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo$$ExternalSyntheticApiModelOutline2;->m(Landroid/util/Range;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method static getSupportedFormats(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline9;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraManager;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/webrtc/Camera2Enumerator;->getSupportedFormats(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getSupportedFormats(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lorg/webrtc/Camera2Enumerator;->cachedSupportedFormats:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    const-string v1, "Camera2Enumerator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get supported formats for camera index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, p1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline10;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline18;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline19;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v3

    invoke-static {}, Lorg/webrtc/Camera2Enumerator$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v4

    invoke-static {p0, v4}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/Range;

    invoke-static {v4}, Lorg/webrtc/Camera2Enumerator;->getFpsUnitFactor([Landroid/util/Range;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/webrtc/Camera2Enumerator;->convertFramerates([Landroid/util/Range;I)Ljava/util/List;

    move-result-object v4

    invoke-static {p0}, Lorg/webrtc/Camera2Enumerator;->getSupportedSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v7, v7, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/webrtc/Size;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v8, 0x0

    :try_start_3
    const-class v10, Landroid/graphics/SurfaceTexture;

    new-instance v11, Landroid/util/Size;

    iget v12, v7, Lorg/webrtc/Size;->width:I

    iget v13, v7, Lorg/webrtc/Size;->height:I

    invoke-direct {v11, v12, v13}, Landroid/util/Size;-><init>(II)V

    invoke-static {v3, v10, v11}, Lorg/webrtc/Camera2Enumerator$$ExternalSyntheticApiModelOutline1;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    nop

    move-wide v10, v8

    :goto_2
    cmp-long v12, v10, v8

    if-nez v12, :cond_2

    move v9, v6

    goto :goto_3

    :cond_2
    long-to-double v8, v10

    const-wide v10, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v8

    :try_start_4
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v9, v8

    mul-int/lit16 v9, v9, 0x3e8

    :goto_3
    new-instance v8, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget v10, v7, Lorg/webrtc/Size;->width:I

    iget v11, v7, Lorg/webrtc/Size;->height:I

    invoke-direct {v8, v10, v11, v5, v9}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IIII)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "Camera2Enumerator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Format: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Lorg/webrtc/Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lorg/webrtc/Size;->height:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "@"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/webrtc/Camera2Enumerator;->cachedSupportedFormats:Ljava/util/Map;

    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-string p0, "Camera2Enumerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get supported formats for camera index "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " done. Time spent: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object v4

    :catch_1
    move-exception p0

    const-string p1, "Camera2Enumerator"

    const-string v1, "getCameraCharacteristics()"

    invoke-static {p1, v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p0

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method static getSupportedSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Lorg/webrtc/Size;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline18;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline19;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    invoke-static {}, Lorg/webrtc/Camera2Enumerator$$ExternalSyntheticApiModelOutline2;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v2}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline15;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/Camera2Enumerator;->convertSizes([Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ge v2, v3, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline11;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v2, Lorg/webrtc/Size;->height:I

    mul-int v3, v3, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, v2, Lorg/webrtc/Size;->width:I

    mul-int v4, v4, v5

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline9;->m(Ljava/lang/Object;)Landroid/hardware/camera2/CameraManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline16;->m(Landroid/hardware/camera2/CameraManager;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {p0, v4}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline10;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    invoke-static {}, Lorg/webrtc/Camera2Enumerator$$ExternalSyntheticApiModelOutline2;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera access exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Camera2Enumerator"

    invoke-static {v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public createCapturer(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;)Lorg/webrtc/CameraVideoCapturer;
    .locals 2

    new-instance v0, Lorg/webrtc/Camera2Capturer;

    iget-object v1, p0, Lorg/webrtc/Camera2Enumerator;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lorg/webrtc/Camera2Capturer;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;)V

    return-object v0
.end method

.method public getDeviceNames()[Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/Camera2Enumerator;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline16;->m(Landroid/hardware/camera2/CameraManager;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera access exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Enumerator"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedFormats(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/webrtc/Camera2Enumerator;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/webrtc/Camera2Enumerator;->getSupportedFormats(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isBackFacing(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/webrtc/Camera2Enumerator;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline17;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFrontFacing(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/webrtc/Camera2Enumerator;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline17;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/camera/Camera2Session$$ExternalSyntheticApiModelOutline12;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
