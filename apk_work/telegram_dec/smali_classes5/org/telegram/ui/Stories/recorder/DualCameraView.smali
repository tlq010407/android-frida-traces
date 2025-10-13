.class public abstract Lorg/telegram/ui/Stories/recorder/DualCameraView;
.super Lorg/telegram/messenger/camera/CameraView;
.source "SourceFile"


# static fields
.field private static final dualWhitelistByDevice:[I

.field private static final dualWhitelistByModel:[I


# instance fields
.field private allowRotation:Z

.field private angle:F

.field private atBottom:Z

.field private atTop:Z

.field private cx:F

.field private cy:F

.field private doNotSpanRotation:Z

.field private down:Z

.field private dualAvailable:Z

.field private enabledSavedDual:Z

.field private final finalMatrix:Landroid/graphics/Matrix;

.field private firstMeasure:Z

.field private h:F

.field private invMatrix:Landroid/graphics/Matrix;

.field private lastFocusToPoint:Ljava/lang/Runnable;

.field private final lastTouch:Landroid/graphics/PointF;

.field private lastTouchDistance:F

.field private lastTouchRotation:D

.field private longpressRunnable:Ljava/lang/Runnable;

.field private multitouch:Z

.field private rotationDiff:F

.field private snappedRotation:Z

.field private tapTime:J

.field private tapX:F

.field private tapY:F

.field private tempMatrix:Landroid/graphics/Matrix;

.field private tempPoint:[F

.field private final toGL:Landroid/graphics/Matrix;

.field private final toScreen:Landroid/graphics/Matrix;

.field private final touch:Landroid/graphics/PointF;

.field private final touchMatrix:Landroid/graphics/Matrix;

.field private vertex:[F

.field private final vertices:[F

.field private verticesDst:[F

.field private verticesSrc:[F

.field private w:F


# direct methods
.method public static synthetic $r8$lambda$BDUEjGDaDbdUbrccOYYisJzQ2iY(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lambda$log$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BVKDUQXELF7GxPh8hRHzliyVW-c(Lorg/telegram/ui/Stories/recorder/DualCameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lambda$checkTap$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hd1DG7YEMRkvbRrTkiM3ztPqx10(Lorg/telegram/ui/Stories/recorder/DualCameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lambda$checkTap$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualWhitelistByDevice:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualWhitelistByModel:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x70e04414
        -0xcd7a4b4
        -0x3361b3c1    # -8.2993656E7f
        -0x4b01477d
        -0x4eae59b4
        -0xcdc1330
        0x7157c72e
        -0xcd7871d
        0x71c144a0
        -0x4ec45b84
        -0x44e051be
        0x71c1c593
        0x3a3982da
        -0x58c35c36
        0x71e4b6b8
        -0x2a83a9b9
        -0x77d931cc
        0x53dfb612
        -0x30f5a643
        -0x5319aa6b
        -0x5319a6e7
        0x53dfb612
        0x53df8e7e
        0x53dfbdd9
        0x49658433
        -0x7bc5782d
        0x279341a
        0x326f3b52
        -0x476971bb
        -0xefa312e
        -0x7b91e473
        0x4be082ed    # 2.9427162E7f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraView;-><init>(Landroid/content/Context;ZZ)V

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastTouch:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touch:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchMatrix:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->finalMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x4

    new-array p2, p2, [F

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tempPoint:[F

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toScreen:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toGL:Landroid/graphics/Matrix;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->firstMeasure:Z

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->invMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x2

    new-array p3, p2, [F

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->vertices:[F

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tempMatrix:Landroid/graphics/Matrix;

    new-array p2, p2, [F

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->vertex:[F

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable:Z

    return-void
.end method

.method private checkTap(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapY:F

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastFocusToPoint:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->longpressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->longpressRunnable:Ljava/lang/Runnable;

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapX:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapY:F

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->isAtDual(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lorg/telegram/ui/Stories/recorder/DualCameraView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/DualCameraView;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->longpressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v3, -0x1

    if-ne v0, v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapTime:J

    sub-long/2addr v0, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v0, v5

    if-gtz v7, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapX:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, v5, p1}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapX:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapY:F

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->isAtDual(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->switchCamera()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastFocusToPoint:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/telegram/ui/Stories/recorder/DualCameraView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/DualCameraView;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastFocusToPoint:Ljava/lang/Runnable;

    :cond_3
    :goto_0
    iput-wide v3, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapTime:J

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->longpressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iput-wide v3, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapTime:J

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastFocusToPoint:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->longpressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->longpressRunnable:Ljava/lang/Runnable;

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public static dualAvailableDefault(Landroid/content/Context;Z)Z
    .locals 5

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera.concurrent"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_5

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualWhitelistByDevice:[I

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-nez p0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    :goto_4
    sget-object v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualWhitelistByModel:[I

    array-length v3, v0

    if-ge v1, v3, :cond_5

    aget v0, v0, v1

    if-ne v0, p1, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v2, p0

    goto :goto_5

    :cond_6
    move v2, v0

    :goto_5
    return v2
.end method

.method public static dualAvailableStatic(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableDefault(Landroid/content/Context;Z)Z

    move-result p0

    const-string v1, "dual_available"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private extractPointsData(Landroid/graphics/Matrix;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->vertices:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->vertices:[F

    aget v4, v0, v1

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cx:F

    aget v4, v0, v3

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cy:F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v0, v1

    aput v2, v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->vertices:[F

    aget v5, v0, v3

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cy:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    aget v0, v0, v1

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cx:F

    sub-float/2addr v0, v7

    float-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v0, v5

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->angle:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cx:F

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cy:F

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->vertices:[F

    aget v7, v6, v1

    aget v6, v6, v3

    invoke-static {v0, v5, v7, v6}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v0, v0, v5

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->w:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->vertices:[F

    aput v2, v0, v1

    aput v4, v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cx:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cy:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->vertices:[F

    aget v1, v2, v1

    aget v2, v2, v3

    invoke-static {p1, v0, v1, v2}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    mul-float p1, p1, v5

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->h:F

    return-void
.end method

.method private getSavedDualMatrix()Landroid/graphics/Matrix;
    .locals 5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dualmatrix"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/16 v3, 0x9

    if-eq v1, v3, :cond_1

    return-object v2

    :cond_1
    new-array v1, v3, [F

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v2

    :cond_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method private synthetic lambda$checkTap$1()V
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->dualToggleShape()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic lambda$checkTap$2()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapX:F

    float-to-int v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapY:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(II)V

    return-void
.end method

.method private static synthetic lambda$log$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private log(Z)V
    .locals 9

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableDefault(Landroid/content/Context;Z)Z

    move-result v0

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->collectDeviceStats:Z

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    const-string v4, "android_dual_camera"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;-><init>()V

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;-><init>()V

    const-string v6, "device"

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_jsonString;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int/2addr v1, p1

    int-to-long v4, v1

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->peer:J

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stories/recorder/DualCameraView$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/recorder/DualCameraView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-static {p1, v0}, Lorg/telegram/messenger/ApplicationLoader;->logDualCamera(ZZ)V

    return-void
.end method

.method private resetSavedDual()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dualcam"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dualmatrix"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static roundDualAvailableDefault(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera.concurrent"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static roundDualAvailableStatic(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->roundDualAvailableDefault(Landroid/content/Context;)Z

    move-result p0

    const-string v1, "rounddual_available"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private saveDual()V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v1

    const-string v2, "dualcam"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v1

    const-string v2, "dualmatrix"

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getDualPosition()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const-string v3, ";"

    invoke-static {v3, v1}, Lcom/google/common/primitives/Floats;->join(Ljava/lang/String;[F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setupDualMatrix()V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getDualPosition()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->getSavedDualMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toScreen:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3edc28f6    # 0.43f

    mul-float v1, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3ccccccd    # 0.025f

    mul-float v2, v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    sub-float/2addr v3, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toGL:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->updateDualPosition()V

    return-void
.end method

.method private setupToScreenMatrix()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toScreen:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toScreen:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toScreen:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toScreen:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toGL:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method private touchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->checkTap(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/camera/CameraView;->getDualPosition()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    if-eqz v4, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v10, v11

    div-float/2addr v10, v7

    iput v10, v9, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    div-float/2addr v10, v7

    iput v10, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v9

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    goto :goto_1

    :cond_1
    iput v10, v9, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iput v10, v9, Landroid/graphics/PointF;->y:F

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    :goto_1
    iget-boolean v12, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->multitouch:Z

    if-eq v12, v4, :cond_2

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastTouch:Landroid/graphics/PointF;

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touch:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    iput v14, v12, Landroid/graphics/PointF;->x:F

    iget v13, v13, Landroid/graphics/PointF;->y:F

    iput v13, v12, Landroid/graphics/PointF;->y:F

    iput v9, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastTouchDistance:F

    iput-wide v10, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastTouchRotation:D

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->multitouch:Z

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touch:Landroid/graphics/PointF;

    iget v12, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastTouch:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    iget v13, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    if-nez v15, :cond_3

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v15, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toScreen:Landroid/graphics/Matrix;

    invoke-virtual {v15, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iput v8, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->rotationDiff:F

    iput-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->snappedRotation:Z

    iput-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->doNotSpanRotation:Z

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touch:Landroid/graphics/PointF;

    iget v6, v15, Landroid/graphics/PointF;->x:F

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v6, v15}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->isPointInsideDual(Landroid/graphics/Matrix;FF)Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->down:Z

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_17

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->down:Z

    if-eqz v5, :cond_17

    invoke-static {v12, v4, v14, v13}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->longpressRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->longpressRunnable:Ljava/lang/Runnable;

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v15, 0x1

    if-le v5, v15, :cond_c

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastTouchDistance:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->extractPointsData(Landroid/graphics/Matrix;)V

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastTouchDistance:F

    div-float v5, v9, v5

    iget v15, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->w:F

    mul-float v15, v15, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const v16, 0x3f333333    # 0.7f

    mul-float v7, v7, v16

    cmpl-float v7, v15, v7

    if-lez v7, :cond_5

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v16

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->w:F

    div-float/2addr v5, v7

    goto :goto_3

    :cond_5
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->w:F

    mul-float v7, v7, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3e4ccccd    # 0.2f

    mul-float v15, v15, v16

    cmpg-float v7, v7, v15

    if-gez v7, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5, v5, v12, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_7
    move v7, v9

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastTouchRotation:D

    sub-double v8, v10, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->rotationDiff:F

    add-float/2addr v9, v8

    iput v9, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->rotationDiff:F

    iget-boolean v15, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->allowRotation:Z

    if-nez v15, :cond_b

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v15, 0x41a00000    # 20.0f

    cmpl-float v9, v9, v15

    if-lez v9, :cond_8

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->allowRotation:Z

    if-nez v9, :cond_a

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->extractPointsData(Landroid/graphics/Matrix;)V

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->angle:F

    div-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v6

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->angle:F

    sub-float/2addr v9, v5

    cmpl-float v5, v9, v15

    if-lez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->allowRotation:Z

    :cond_a
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->snappedRotation:Z

    if-nez v5, :cond_b

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->snappedRotation:Z

    :cond_b
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->allowRotation:Z

    if-eqz v5, :cond_d

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v8, v12, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_6

    :cond_c
    move v7, v9

    :cond_d
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v12, v14

    sub-float/2addr v4, v13

    invoke-virtual {v5, v12, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->finalMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->finalMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->extractPointsData(Landroid/graphics/Matrix;)V

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->angle:F

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v6

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->angle:F

    sub-float/2addr v4, v5

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->allowRotation:Z

    if-eqz v5, :cond_f

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->doNotSpanRotation:Z

    if-nez v5, :cond_f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_e

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->finalMatrix:Landroid/graphics/Matrix;

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cx:F

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cy:F

    invoke-virtual {v5, v4, v6, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->snappedRotation:Z

    if-nez v4, :cond_f

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    const/4 v4, 0x1

    :goto_7
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->snappedRotation:Z

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    goto :goto_7

    :cond_f
    :goto_8
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cx:F

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gez v6, :cond_10

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->finalMatrix:Landroid/graphics/Matrix;

    neg-float v4, v4

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_11

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->finalMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cx:F

    sub-float/2addr v6, v8

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_11
    :goto_9
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cy:F

    cmpg-float v6, v4, v5

    if-gez v6, :cond_12

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->finalMatrix:Landroid/graphics/Matrix;

    neg-float v4, v4

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_a

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    const/high16 v8, 0x43160000    # 150.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_13

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->finalMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cy:F

    sub-float/2addr v6, v8

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_13
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->finalMatrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toGL:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->finalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/camera/CameraView;->updateDualPosition()V

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cy:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->h:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float v4, v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x42840000    # 66.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gez v3, :cond_14

    const/4 v15, 0x1

    goto :goto_b

    :cond_14
    const/4 v15, 0x0

    :goto_b
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->cy:F

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->h:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v6, v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v6, v4

    int-to-float v4, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    :goto_c
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->atTop:Z

    if-eq v4, v15, :cond_16

    iput-boolean v15, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->atTop:Z

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->onEntityDraggedTop(Z)V

    :cond_16
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->atBottom:Z

    if-eq v4, v3, :cond_18

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->atBottom:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->onEntityDraggedBottom(Z)V

    goto :goto_d

    :cond_17
    move v7, v9

    :cond_18
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->allowRotation:Z

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->rotationDiff:F

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->snappedRotation:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->down:Z

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->atTop:Z

    if-eqz v1, :cond_19

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->atTop:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->onEntityDraggedTop(Z)V

    :cond_19
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->atBottom:Z

    if-eqz v1, :cond_1c

    goto :goto_e

    :cond_1a
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1c

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->down:Z

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->atTop:Z

    if-eqz v1, :cond_1b

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->atTop:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->onEntityDraggedTop(Z)V

    :cond_1b
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->atBottom:Z

    if-eqz v1, :cond_1c

    :goto_e
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->atBottom:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->onEntityDraggedBottom(Z)V

    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastTouch:Landroid/graphics/PointF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touch:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iput v6, v1, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iput v5, v1, Landroid/graphics/PointF;->y:F

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastTouchDistance:F

    iput-wide v10, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastTouchRotation:D

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->down:Z

    if-nez v1, :cond_1e

    if-eqz v2, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    goto :goto_10

    :cond_1e
    :goto_f
    const/4 v2, 0x1

    :cond_1f
    :goto_10
    return v2
.end method


# virtual methods
.method public allowToTapFocus()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastFocusToPoint:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastFocusToPoint:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public clearTapFocus()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->lastFocusToPoint:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->tapTime:J

    return-void
.end method

.method public destroy(ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->saveDual()V

    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public dualAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable:Z

    return v0
.end method

.method public isAtDual(FF)Z
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->vertex:[F

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toGL:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getDualPosition()Landroid/graphics/Matrix;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->invMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->vertex:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getDualShape()I

    move-result p2

    const/4 v0, 0x3

    rem-int/2addr p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 p2, 0x3f100000    # 0.5625f

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->vertex:[F

    aget v3, v0, v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_3

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_3

    aget v0, v0, p1

    neg-float v2, p2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isDualTouch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->down:Z

    return v0
.end method

.method public isPointInsideDual(Landroid/graphics/Matrix;FF)Z
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesSrc:[F

    const/16 v2, 0x8

    if-nez v1, :cond_0

    new-array v1, v2, [F

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesSrc:[F

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesDst:[F

    if-nez v1, :cond_1

    new-array v1, v2, [F

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesDst:[F

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/camera/CameraView;->getDualShape()I

    move-result v1

    const/4 v2, 0x3

    rem-int/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v1, 0x3f100000    # 0.5625f

    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesSrc:[F

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    aput v7, v5, v6

    neg-float v8, v1

    aput v8, v5, v4

    const/4 v9, 0x2

    aput v3, v5, v9

    aput v8, v5, v2

    const/4 v8, 0x4

    aput v3, v5, v8

    const/4 v3, 0x5

    aput v1, v5, v3

    const/4 v10, 0x6

    aput v7, v5, v10

    const/4 v7, 0x7

    aput v1, v5, v7

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesDst:[F

    move-object/from16 v11, p1

    invoke-virtual {v11, v1, v5}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesDst:[F

    aget v5, v1, v6

    aget v11, v1, v9

    sub-float/2addr v5, v11

    mul-float v5, v5, v5

    aget v11, v1, v4

    aget v1, v1, v2

    sub-float/2addr v11, v1

    mul-float v11, v11, v11

    add-float/2addr v5, v11

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesDst:[F

    aget v5, v1, v9

    aget v13, v1, v8

    sub-float/2addr v5, v13

    mul-float v5, v5, v5

    aget v13, v1, v2

    aget v1, v1, v3

    sub-float/2addr v13, v1

    mul-float v13, v13, v13

    add-float/2addr v5, v13

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesDst:[F

    aget v5, v1, v8

    aget v15, v1, v10

    sub-float/2addr v5, v15

    mul-float v5, v5, v5

    aget v15, v1, v3

    aget v1, v1, v7

    sub-float/2addr v15, v1

    mul-float v15, v15, v15

    add-float/2addr v5, v15

    float-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesDst:[F

    aget v16, v5, v10

    aget v17, v5, v6

    sub-float v16, v16, v17

    mul-float v16, v16, v16

    aget v17, v5, v7

    aget v5, v5, v4

    sub-float v17, v17, v5

    mul-float v17, v17, v17

    add-float v5, v16, v17

    move-wide/from16 v16, v2

    float-to-double v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesDst:[F

    aget v5, v3, v6

    sub-float v5, v5, p2

    mul-float v5, v5, v5

    aget v3, v3, v4

    sub-float v3, v3, p3

    mul-float v3, v3, v3

    add-float/2addr v5, v3

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesDst:[F

    aget v9, v3, v9

    sub-float v9, v9, p2

    mul-float v9, v9, v9

    const/16 v18, 0x3

    aget v3, v3, v18

    sub-float v3, v3, p3

    mul-float v3, v3, v3

    add-float/2addr v9, v3

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesDst:[F

    aget v8, v9, v8

    sub-float v8, v8, p2

    mul-float v8, v8, v8

    const/4 v15, 0x5

    aget v9, v9, v15

    sub-float v9, v9, p3

    mul-float v9, v9, v9

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->verticesDst:[F

    aget v10, v15, v10

    sub-float v10, v10, p2

    mul-float v10, v10, v10

    const/16 v18, 0x7

    aget v15, v15, v18

    sub-float v15, v15, p3

    mul-float v15, v15, v15

    add-float/2addr v10, v15

    move-wide/from16 v18, v1

    float-to-double v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double v20, v11, v4

    add-double v20, v20, v6

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    add-double v24, v13, v6

    add-double v24, v24, v8

    div-double v24, v24, v22

    add-double v26, v16, v8

    add-double v26, v26, v0

    div-double v26, v26, v22

    add-double v28, v18, v0

    add-double v28, v28, v4

    div-double v28, v28, v22

    sub-double v22, v20, v11

    mul-double v22, v22, v20

    sub-double v30, v20, v4

    mul-double v22, v22, v30

    sub-double v20, v20, v6

    mul-double v22, v22, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    sub-double v22, v24, v13

    mul-double v22, v22, v24

    sub-double v6, v24, v6

    mul-double v22, v22, v6

    sub-double v24, v24, v8

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double v20, v20, v6

    sub-double v6, v26, v16

    mul-double v6, v6, v26

    sub-double v8, v26, v8

    mul-double v6, v6, v8

    sub-double v26, v26, v0

    mul-double v6, v6, v26

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double v20, v20, v6

    sub-double v6, v28, v18

    mul-double v6, v6, v28

    sub-double v0, v28, v0

    mul-double v6, v6, v0

    sub-double v28, v28, v4

    mul-double v6, v6, v28

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double v20, v20, v0

    mul-double v11, v11, v13

    sub-double v20, v20, v11

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v20, v0

    if-gez v2, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    return v4
.end method

.method public isSavedDual()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableDefault(Landroid/content/Context;Z)Z

    move-result v2

    const-string v3, "dualcam"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected onCameraError()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->resetSaved()V

    return-void
.end method

.method protected onDualCameraSuccess()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->saveDual()V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->enabledSavedDual:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->onSavedDualCameraSuccess()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->log(Z)V

    return-void
.end method

.method protected abstract onEntityDraggedBottom(Z)V
.end method

.method protected abstract onEntityDraggedTop(Z)V
.end method

.method public onError(ILandroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSessionWrapper;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableDefault(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable:Z

    const-string v0, "dual_available"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->DualErrorTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->DualErrorMessage:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->log(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toggleDual()V

    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession(I)Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession(I)Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->resetCamera()V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->onCameraError()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->isAtDual(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->onMeasure(II)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->setupToScreenMatrix()V

    return-void
.end method

.method protected abstract onSavedDualCameraSuccess()V
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->firstMeasure:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->isSavedDual()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->enabledSavedDual:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->setupDualMatrix()V

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DualCameraView;->firstMeasure:Z

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public resetSaved()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->resetSavedDual()V

    return-void
.end method

.method public toggleDual()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->setupDualMatrix()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->resetSaved()V

    :goto_0
    invoke-super {p0}, Lorg/telegram/messenger/camera/CameraView;->toggleDual()V

    return-void
.end method
