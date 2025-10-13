.class public Lorg/telegram/ui/Stories/recorder/QRScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;,
        Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;
    }
.end annotation


# instance fields
.field private cacheBitmap:Landroid/graphics/Bitmap;

.field private cameraView:Lorg/telegram/messenger/camera/CameraView;

.field private final detector:Ljava/util/concurrent/atomic/AtomicReference;

.field private lastDetected:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

.field private final listener:Lorg/telegram/messenger/Utilities$Callback;

.field private final paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final prefix:Ljava/lang/String;

.field private final process:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$1_Vg2vmx2y4lzqjH_K8pBklWzv8(Lorg/telegram/ui/Stories/recorder/QRScanner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/QRScanner;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$InmkvImQ8dQbzt4ObrIsJR7vadI(Lorg/telegram/ui/Stories/recorder/QRScanner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/QRScanner;->lambda$setPaused$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$MIkoa-3N5R7Md9nU4Klkrz42HSY(Lorg/telegram/ui/Stories/recorder/QRScanner;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/QRScanner;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ipkIdmVu3X49RoiYX8qAFEQ_Z-4(Lorg/telegram/ui/Stories/recorder/QRScanner;Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/QRScanner;->lambda$new$2(Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->detector:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/QRScanner$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/QRScanner$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/QRScanner;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->process:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->listener:Lorg/telegram/messenger/Utilities$Callback;

    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->prefix:Ljava/lang/String;

    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/QRScanner$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/QRScanner$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/QRScanner;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private detect(Landroid/graphics/Bitmap;)Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->detector:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->isOperational()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    new-instance v4, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v6, v5, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, v5, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    array-length p1, p1

    new-array p1, p1, [Landroid/graphics/PointF;

    :goto_2
    iget-object v4, v5, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    new-instance v4, Landroid/graphics/PointF;

    iget-object v7, v5, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    aget-object v7, v7, v1

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    int-to-float v9, v2

    div-float/2addr v8, v9

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    int-to-float v9, v3

    div-float/2addr v7, v9

    invoke-direct {v4, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v1, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    invoke-direct {v1, v6, p1, v0}, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;-><init>(Ljava/lang/String;[Landroid/graphics/PointF;Lorg/telegram/ui/Stories/recorder/QRScanner$1;)V

    return-object v1

    :cond_5
    :goto_3
    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->detector:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x100

    invoke-virtual {v1, p1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/QRScanner;->attach(Lorg/telegram/messenger/camera/CameraView;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->listener:Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->detector:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/16 v3, 0x2d0

    if-gt v1, v3, :cond_1

    if-le v2, v3, :cond_2

    :cond_1
    int-to-float v1, v1

    const/high16 v3, 0x44340000    # 720.0f

    div-float v4, v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    :cond_2
    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->cacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v2, v4, :cond_4

    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->cacheBitmap:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/QRScanner;->detect(Landroid/graphics/Bitmap;)Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->lastDetected:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-ne v4, v3, :cond_7

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->equals(Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->lastDetected:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/QRScanner$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Stories/recorder/QRScanner$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/QRScanner;Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->process:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->process:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/QRScanner;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_2
    return-void
.end method

.method private synthetic lambda$setPaused$1()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->listener:Lorg/telegram/messenger/Utilities$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->detector:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->process:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->process:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/QRScanner;->getTimeout()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->process:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDetected()Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->lastDetected:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->lastDetected:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x2ee

    return-wide v0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-wide/16 v0, 0x320

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x50

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public setPaused(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->process:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->lastDetected:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->lastDetected:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    new-instance p1, Lorg/telegram/ui/Stories/recorder/QRScanner$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/QRScanner$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/QRScanner;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->process:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner;->process:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/QRScanner;->getTimeout()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
