.class public Lorg/telegram/messenger/camera/CameraView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lorg/telegram/messenger/camera/CameraController$ICameraView;
.implements Lorg/telegram/messenger/camera/CameraController$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/camera/CameraView$CameraGLThread;,
        Lorg/telegram/messenger/camera/CameraView$VideoRecorder;,
        Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;,
        Lorg/telegram/messenger/camera/CameraView$EncoderHandler;
    }
.end annotation


# static fields
.field private static final MSG_AUDIOFRAME_AVAILABLE:I = 0x3

.field private static final MSG_START_RECORDING:I = 0x0

.field private static final MSG_STOP_RECORDING:I = 0x1

.field private static final MSG_VIDEOFRAME_AVAILABLE:I = 0x2

.field private static final audioSampleRate:I = 0xac44


# instance fields
.field public WRITE_TO_FILE_IN_BACKGROUND:Z

.field private blurRenderNode:Ljava/lang/Object;

.field private blurTextureView:Landroid/view/TextureView;

.field public blurredStubView:Landroid/widget/ImageView;

.field bounds:Landroid/graphics/Rect;

.field private cameraFile:Ljava/io/File;

.field private cameraMatrix:[[F

.field private final cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

.field private cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSessionWrapper;

.field private final cameraTexture:[[I

.field protected cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

.field private clipBottom:I

.field private clipTop:I

.field private closingDualCamera:Z

.field private cx:I

.field private cy:I

.field private delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

.field protected dual:Z

.field private dualCameraAppeared:Z

.field private dualMatrix:Landroid/graphics/Matrix;

.field firstFrame2Rendered:Z

.field firstFrameRendered:Z

.field public fit:Z

.field flipAnimator:Landroid/animation/ValueAnimator;

.field flipHalfReached:Z

.field flipping:Z

.field private focusAreaSize:I

.field private focusProgress:F

.field private fpsLimit:I

.field info:[Lorg/telegram/messenger/camera/CameraInfo;

.field private initFirstCameraAfterSecond:Z

.field private inited:Z

.field private initialFrontface:Z

.field private innerAlpha:F

.field private innerPaint:Landroid/graphics/Paint;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final invalidateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private isFrontface:Z

.field public isStory:Z

.field private volatile lastCrossfadeValue:F

.field private lastDrawTime:J

.field private lastDualSwitchTime:J

.field private lastHeight:I

.field private volatile lastShapeTo:F

.field private lastWidth:I

.field private final layoutLock:Ljava/lang/Object;

.field private lazy:Z

.field private mMVPMatrix:[[F

.field private mSTMatrix:[[F

.field private matrix:Landroid/graphics/Matrix;

.field private measurementsCount:I

.field private mirror:Z

.field private moldSTMatrix:[[F

.field nextFrameTimeNs:J

.field onRecordingFinishRunnable:Ljava/lang/Runnable;

.field private optimizeForBarcode:Z

.field private outerAlpha:F

.field private outerPaint:Landroid/graphics/Paint;

.field private pictureSize:[Lorg/telegram/messenger/camera/Size;

.field private volatile pixelDualH:F

.field private volatile pixelDualW:F

.field private volatile pixelH:F

.field private volatile pixelW:F

.field private previewSize:[Lorg/telegram/messenger/camera/Size;

.field recordFile:Ljava/io/File;

.field public recordHevc:Z

.field private renderNode:Ljava/lang/Object;

.field private scaleX:F

.field private scaleY:F

.field private shape:Ljava/lang/Integer;

.field private volatile shapeValue:F

.field private volatile surfaceHeight:I

.field private volatile surfaceWidth:I

.field private takePictureProgress:F

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textureInited:Z

.field private textureView:Landroid/view/TextureView;

.field private textureViewAnimator:Landroid/animation/ValueAnimator;

.field private thumbDrawable:Landroid/graphics/drawable/Drawable;

.field private toggleDualUntil:J

.field public toggledDualAsSave:Z

.field private txform:Landroid/graphics/Matrix;

.field private final updateRotationMatrix:Ljava/lang/Runnable;

.field private final useCamera2:Z

.field private useMaxPreview:Z

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private videoEncoder:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public static synthetic $r8$lambda$Dk-TE0gZ-de-lySS_J29tF4LIj4(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$toggleDual$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$E6lTA11hdJ1GHv4IKBDJlE8YgdE(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$FYNsUGB1bd3QgJAx_kkx2OdiiiE(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$8(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JGSZ0bjhyMIL8dFWh7L3AYaYJmk(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$10(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LBNvM2lNcRziSAEAbqFxYKZwT_4(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$onSurfaceTextureDestroyed$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$MHp_I3dXQgC1fscjoi5wXXRjiQA(Lorg/telegram/messenger/camera/CameraView;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->lambda$enableDualInternal$1(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QRHIQWvqwmeNkuOKmFYjHeuqCTo(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$enableDualInternal$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Qlczs1AK18LV5k7M-wUW-FH1Ug4(Lorg/telegram/messenger/camera/CameraView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->lambda$showTexture$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UdZ7F4ji71rhg4tGKPAoooal4xs(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$12(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cdw6CS6qR6q43sCEyj36doy89KE(Lorg/telegram/messenger/camera/CameraView;ILorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$9(ILorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cgs0U3hwc6byRKgHnI-7SdFI8qc(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$resetCamera$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$inalbpMwcfdOdB2eNjc74TbuAYM(Lorg/telegram/messenger/camera/CameraView;ILandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$13(ILandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pkdJAP_gkBnZPoML7u5TfxUDHgc(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->lambda$switchCamera$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$vm7m2hYh3MnPgIWOY5hpXEsIhiE(Lorg/telegram/messenger/camera/CameraView;ILorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/camera/CameraView;->lambda$createCamera$11(ILorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yK7c7efp-2rYk67fMCmMJLdvYZ4(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->onSurfaceTextureUpdatedInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/camera/CameraView;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 7

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/telegram/messenger/camera/Size;

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-array v2, v1, [Lorg/telegram/messenger/camera/Size;

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:[Lorg/telegram/messenger/camera/Size;

    new-array v2, v1, [Lorg/telegram/messenger/camera/CameraInfo;

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->useCamera2:Z

    new-array v2, v1, [Lorg/telegram/messenger/camera/CameraSessionWrapper;

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->layoutLock:Ljava/lang/Object;

    new-array v3, v1, [I

    const/16 v5, 0x10

    aput v5, v3, v4

    aput v1, v3, v0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[[F

    new-array v3, v1, [I

    aput v5, v3, v4

    aput v1, v3, v0

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->mSTMatrix:[[F

    new-array v3, v1, [I

    aput v5, v3, v4

    aput v1, v3, v0

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->moldSTMatrix:[[F

    new-array v3, v1, [I

    aput v5, v3, v4

    aput v1, v3, v0

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraMatrix:[[F

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/messenger/camera/CameraView;->lastCrossfadeValue:F

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/messenger/camera/CameraView;->fpsLimit:I

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureInited:Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    iput v3, p0, Lorg/telegram/messenger/camera/CameraView;->lastWidth:I

    iput v3, p0, Lorg/telegram/messenger/camera/CameraView;->lastHeight:I

    new-instance v5, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    iput-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->updateRotationMatrix:Ljava/lang/Runnable;

    iput v2, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->invalidateListeners:Ljava/util/ArrayList;

    new-array v2, v1, [I

    aput v4, v2, v4

    aput v1, v2, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraTexture:[[I

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/camera/CameraController;->addOnErrorListener(Lorg/telegram/messenger/camera/CameraController$ErrorCallback;)V

    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView;->initialFrontface:Z

    new-instance p2, Landroid/view/TextureView;

    invoke-direct {p2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    iput-boolean p3, p0, Lorg/telegram/messenger/camera/CameraView;->lazy:Z

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->initTexture()V

    :cond_0
    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/16 p1, 0x11

    invoke-static {v3, v3, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p1, 0x42c00000    # 96.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->focusAreaSize:I

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/camera/CameraView;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/camera/CameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/messenger/camera/CameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/messenger/camera/CameraView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/camera/CameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/camera/CameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/camera/CameraView;Landroid/graphics/SurfaceTexture;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->createCamera(Landroid/graphics/SurfaceTexture;I)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/camera/CameraView;)[[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraMatrix:[[F

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->lastShapeTo:F

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/messenger/camera/CameraView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->lastShapeTo:F

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/camera/CameraView;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->layoutLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/messenger/camera/CameraView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/camera/CameraView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/camera/CameraView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->fpsLimit:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraView$VideoRecorder;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->videoEncoder:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$VideoRecorder;)Lorg/telegram/messenger/camera/CameraView$VideoRecorder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->videoEncoder:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/camera/CameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->shapeValue:F

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/camera/CameraView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->shapeValue:F

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->lastCrossfadeValue:F

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/messenger/camera/CameraView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->lastCrossfadeValue:F

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/camera/CameraView;)[Lorg/telegram/messenger/camera/Size;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->pixelW:F

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->pixelH:F

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->pixelDualW:F

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->pixelDualH:F

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/camera/CameraView;)[[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->moldSTMatrix:[[F

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/camera/CameraView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceWidth:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/camera/CameraView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/camera/CameraView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceHeight:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/camera/CameraView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->onFirstFrameRendered(I)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/camera/CameraView;)[Lorg/telegram/messenger/camera/CameraSessionWrapper;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/camera/CameraView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->videoWidth:I

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/messenger/camera/CameraView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->videoWidth:I

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/camera/CameraView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->videoHeight:I

    return p0
.end method

.method static synthetic access$3902(Lorg/telegram/messenger/camera/CameraView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->videoHeight:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/camera/CameraView;)[[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->mSTMatrix:[[F

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/camera/CameraView;ILjava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraView;->loadShader(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/camera/CameraView;)[[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraTexture:[[I

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/camera/CameraView;)[[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[[F

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->scaleX:F

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/messenger/camera/CameraView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->scaleX:F

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/messenger/camera/CameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/camera/CameraView;->scaleY:F

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/messenger/camera/CameraView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->scaleY:F

    return p1
.end method

.method private addToDualWait(J)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/camera/CameraView;->toggleDualUntil:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView;->toggleDualUntil:J

    goto :goto_0

    :cond_0
    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/telegram/messenger/camera/CameraView;->toggleDualUntil:J

    :goto_0
    return-void
.end method

.method private calculateTapArea(FFF)Landroid/graphics/Rect;
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusAreaSize:I

    int-to-float v0, v0

    mul-float v0, v0, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result p3

    float-to-int p1, p1

    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p3

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lorg/telegram/messenger/camera/CameraView;->clamp(III)I

    move-result p1

    float-to-int p2, p2

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-direct {p0, p2, v2, v0}, Lorg/telegram/messenger/camera/CameraView;->clamp(III)I

    move-result p2

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance p1, Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p1, p2, p3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private checkPreviewMatrix()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v1, v4, v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getDisplayOrientation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    int-to-float v0, v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float v4, v0, v1

    int-to-float v2, v2

    div-float v1, v2, v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float/2addr v2, v1

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->updateRotationMatrix:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->updateRotationMatrix:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private clamp(III)I
    .locals 0

    if-le p1, p3, :cond_0

    return p3

    :cond_0
    if-ge p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method private createCamera(Landroid/graphics/SurfaceTexture;I)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/camera/CameraView;ILandroid/graphics/SurfaceTexture;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enableDualInternal()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    new-instance v4, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v3, v2, v4}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->destroy(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSessionWrapper;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v4, v3, v1

    if-ne v0, v4, :cond_1

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSessionWrapper;

    :cond_1
    aput-object v2, v3, v1

    const-wide/16 v0, 0x190

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "samsung"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->toggledDualAsSave:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v0, v0, v3

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v1, v1, v3

    new-instance v4, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/camera/CameraView;Landroid/os/Handler;)V

    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->destroy(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aput-object v2, v0, v3

    return-void

    :cond_4
    invoke-direct {p0, v1}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v1, v4, v1

    iget v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_5
    const-wide/16 v0, 0x320

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    return-void
.end method

.method private synthetic lambda$createCamera$10(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->reinitForNewCamera()V

    const-wide/16 v0, 0x15e

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    return-void
.end method

.method private synthetic lambda$createCamera$11(ILorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraView camera initied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraSession;->setInitied()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->initFirstCameraAfterSecond:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->initFirstCameraAfterSecond:Z

    new-instance p1, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p3}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createCamera$12(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSessionWrapper;I)V

    return-void
.end method

.method private synthetic lambda$createCamera$13(ILandroid/graphics/SurfaceTexture;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraView create camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/telegram/messenger/camera/CameraView;->useCamera2:Z

    if-eqz v2, :cond_1

    const-string v2, "2"

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    iget-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->useCamera2:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceWidth:I

    iget v3, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceHeight:I

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/camera/Camera2Session;->create(ZII)Lorg/telegram/messenger/camera/Camera2Session;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    invoke-static {v1}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->of(Lorg/telegram/messenger/camera/Camera2Session;)Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v3

    aput-object v3, v2, p1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-instance v3, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewWidth()I

    move-result v4

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    aput-object v3, v2, p1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSessionWrapper;I)V

    new-instance v2, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/camera/CameraView;ILorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/Camera2Session;->whenDone(Ljava/lang/Runnable;)V

    invoke-virtual {v1, p2}, Lorg/telegram/messenger/camera/Camera2Session;->open(Landroid/graphics/SurfaceTexture;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v1, v1, p1

    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v1, v1, p1

    if-nez v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v1, Lorg/telegram/messenger/camera/CameraSession;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v4, v2, p1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v5, v2, p1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v6, v2, p1

    const/16 v7, 0x100

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/camera/CameraSession;-><init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;IZ)V

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraSession;->setCurrentFlashMode(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    invoke-static {v1}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->of(Lorg/telegram/messenger/camera/CameraSession;)Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v3

    aput-object v3, v2, p1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSessionWrapper;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/camera/CameraView;ILorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    new-instance v4, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, v0, p1}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;I)V

    invoke-virtual {v2, v1, p2, v3, v4}, Lorg/telegram/messenger/camera/CameraController;->open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$createCamera$8(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->reinitForNewCamera()V

    const-wide/16 v0, 0x15e

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    return-void
.end method

.method private synthetic lambda$createCamera$9(ILorg/telegram/messenger/camera/CameraView$CameraGLThread;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->initFirstCameraAfterSecond:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->initFirstCameraAfterSecond:Z

    new-instance p1, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$enableDualInternal$0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->enableDualInternal()V

    return-void
.end method

.method private synthetic lambda$enableDualInternal$1(Landroid/os/Handler;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initFirstCameraAfterSecond:Z

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v0, v2, v0

    iget v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    const-wide/16 v0, 0x4b0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->access$4400(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->access$4400(Lorg/telegram/messenger/camera/CameraView$CameraGLThread;)[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getWorldAngle()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[[F

    aget-object v4, v4, v2

    invoke-static {v4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->mMVPMatrix:[[F

    aget-object v5, v4, v2

    int-to-float v7, v3

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onSurfaceTextureDestroyed$5()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    return-void
.end method

.method private synthetic lambda$resetCamera$4()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->firstFrameRendered:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->reinitForNewCamera()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic lambda$showTexture$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$switchCamera$3()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->firstFrameRendered:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->reinitForNewCamera()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic lambda$toggleDual$2()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    const-wide/16 v1, 0x190

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v1}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, v1

    if-nez p2, :cond_1

    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method private onFirstFrameRendered(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/camera/CameraView$5;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/camera/CameraView$5;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->onDualCameraSuccess()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onSurfaceTextureUpdatedInternal()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->isInitiated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;->onCameraInit()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    iget-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->lazy:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/camera/CameraView;->showTexture(ZZ)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->renderNode:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RenderNode;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    :cond_2
    return-void
.end method

.method private updateCameraInfoSize(I)V
    .locals 9

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/camera/CameraInfo;

    iget v5, v3, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget-boolean v6, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-ne p1, v4, :cond_2

    xor-int/lit8 v6, v6, 0x1

    :cond_2
    if-ne v5, v6, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aput-object v3, v0, p1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v0, v0, p1

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->square()Z

    move-result v2

    const/16 v3, 0x2d0

    if-eqz v2, :cond_6

    new-instance v0, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v0, v4, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    const/16 v2, 0x2d0

    const/16 v6, 0x2d0

    :goto_3
    const/16 v8, 0x2d0

    goto :goto_7

    :cond_6
    iget-boolean v2, p0, Lorg/telegram/messenger/camera/CameraView;->initialFrontface:Z

    const/16 v4, 0x9

    const/16 v5, 0x10

    const/16 v6, 0x500

    if-eqz v2, :cond_7

    new-instance v0, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v0, v5, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    const/16 v2, 0x2d0

    :goto_4
    const/16 v3, 0x500

    goto :goto_3

    :cond_7
    const v2, 0x3faaaaab

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3dcccccd    # 0.1f

    const/16 v7, 0x780

    const/16 v8, 0x3c0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    new-instance v0, Lorg/telegram/messenger/camera/Size;

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-nez v2, :cond_8

    const/16 v3, 0x3c0

    goto :goto_5

    :cond_8
    const/16 v3, 0x5a0

    const/16 v2, 0x5a0

    const/16 v3, 0x500

    const/16 v6, 0x780

    goto :goto_7

    :cond_9
    new-instance v0, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v0, v5, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-nez v2, :cond_a

    :goto_5
    move v8, v3

    const/16 v2, 0x3c0

    const/16 v3, 0x500

    goto :goto_7

    :cond_a
    iget-boolean v2, p0, Lorg/telegram/messenger/camera/CameraView;->isStory:Z

    if-eqz v2, :cond_b

    const/16 v7, 0x500

    :cond_b
    if-eqz v2, :cond_c

    const/16 v2, 0x2d0

    goto :goto_6

    :cond_c
    const/16 v2, 0x438

    :goto_6
    move v6, v7

    goto :goto_4

    :goto_7
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraInfo;->getPreviewSizes()Ljava/util/ArrayList;

    move-result-object v5

    iget-boolean v7, p0, Lorg/telegram/messenger/camera/CameraView;->isStory:Z

    invoke-static {v5, v3, v8, v0, v7}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;

    move-result-object v3

    aput-object v3, v4, p1

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:[Lorg/telegram/messenger/camera/Size;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, v6, v2, v0, v1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    aput-object v0, v3, p1

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "camera preview "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public destroy(ZLjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->destroy(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/camera/CameraController;->removeOnErrorListener(Lorg/telegram/messenger/camera/CameraController$ErrorCallback;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2

    const v3, 0x3d83126f    # 0.064f

    add-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    :goto_0
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x43160000    # 150.0f

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->renderNode:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v1, v2, v3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;IIII)Z

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-super {p0, v0, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    iget-object p4, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    if-ne p2, p4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->renderNode:Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/RenderNode;)V

    invoke-static {p1, p2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    iget-object p4, p0, Lorg/telegram/messenger/camera/CameraView;->blurRenderNode:Ljava/lang/Object;

    if-eqz p4, :cond_1

    invoke-static {p4}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object p4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p4, v1, v1, v0, v2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;IIII)Z

    invoke-static {p4}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/RecordingCanvas;Landroid/graphics/RenderNode;)V

    invoke-static {p4}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/RenderNode;)V

    :cond_1
    iget p2, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpl-float p2, p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_2

    iget p2, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_8

    :cond_2
    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x11

    cmp-long v9, v3, v5

    if-ltz v9, :cond_3

    cmp-long v5, v3, v7

    if-lez v5, :cond_4

    :cond_3
    move-wide v3, v7

    :cond_4
    iput-wide v1, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    invoke-virtual {v2, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    invoke-virtual {v2, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v5, 0x42fe0000    # 127.0f

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    invoke-virtual {v1, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    int-to-float v5, v5

    int-to-float p2, p2

    sub-float v6, p4, v1

    mul-float v6, v6, p2

    add-float/2addr v6, p2

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    int-to-float v5, v5

    mul-float p2, p2, v1

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, p2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget p1, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    cmpg-float p2, p1, p4

    if-gez p2, :cond_5

    long-to-float p2, v3

    const/high16 v0, 0x43480000    # 200.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    cmpl-float p1, p1, p4

    if-lez p1, :cond_7

    iput p4, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    goto :goto_1

    :cond_5
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    const/high16 p2, 0x43160000    # 150.0f

    cmpl-float p4, p1, v0

    if-eqz p4, :cond_6

    long-to-float p4, v3

    div-float/2addr p4, p2

    sub-float/2addr p1, p4

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    goto :goto_1

    :cond_6
    iget p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    cmpl-float p4, p1, v0

    if-eqz p4, :cond_8

    long-to-float p4, v3

    div-float/2addr p4, p2

    sub-float/2addr p1, p4

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    :cond_8
    return p3
.end method

.method public dualToggleShape()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    const-string v2, "dualshape"

    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_2

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public focusToPoint(II)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(IIZ)V

    return-void
.end method

.method public focusToPoint(IIIIIZ)V
    .locals 3

    .line 0
    int-to-float p2, p2

    int-to-float p3, p3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/camera/CameraView;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {p0, p2, p3, v2}, Lorg/telegram/messenger/camera/CameraView;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object p1, p3, p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1, p2}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->focusToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    if-eqz p6, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    iput p4, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    iput p5, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    :cond_1
    return-void
.end method

.method public focusToPoint(IIZ)V
    .locals 7

    .line 0
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(IIIIIZ)V

    return-void
.end method

.method public getBlurRenderNode()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->renderNode:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "CameraViewRenderNode"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->renderNode:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "CameraViewRenderNodeBlur"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurRenderNode:Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline1;->m()Landroid/graphics/Shader$TileMode;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;->m(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/RenderNode;Landroid/graphics/RenderEffect;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurRenderNode:Ljava/lang/Object;

    return-object v0
.end method

.method public getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession(I)Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getCameraSession(I)Lorg/telegram/messenger/camera/CameraSessionWrapper;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCameraSessionObject()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCameraSessionRecording()Lorg/telegram/messenger/camera/CameraSessionWrapper;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSessionWrapper;

    return-object v0
.end method

.method public getDualPosition()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDualShape()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dualshape"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->shape:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPreviewSize()Lorg/telegram/messenger/camera/Size;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextureHeight(FF)F
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getWorldAngle()I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getWorldAngle()I

    move-result v0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    :goto_1
    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    return p1

    :cond_3
    :goto_2
    return p2
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->videoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->videoWidth:I

    return v0
.end method

.method public hasFrontFaceCamera()Z
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/camera/CameraInfo;

    iget v3, v3, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public initTexture()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureInited:Z

    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->invalidateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->invalidate(IIII)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->invalidateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    .line 0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->invalidate(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->invalidateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDual()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    return v0
.end method

.method public isFrontface()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    return v0
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    return v0
.end method

.method public listenDraw(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->invalidateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public makeBlurTextureView()Landroid/view/TextureView;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurTextureView:Landroid/view/TextureView;

    new-instance v1, Lorg/telegram/messenger/camera/CameraView$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$4;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    float-to-int v4, v4

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    mul-float v1, v1, v3

    div-float/2addr v1, v5

    sub-float/2addr v6, v1

    float-to-int v3, v6

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v0, v5

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    float-to-int v1, v5

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDualCameraSuccess()V
    .locals 0

    return-void
.end method

.method public onError(ILandroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSessionWrapper;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    iget v4, p0, Lorg/telegram/messenger/camera/CameraView;->lastWidth:I

    const/4 v5, 0x1

    if-ne v4, v0, :cond_0

    iget v4, p0, Lorg/telegram/messenger/camera/CameraView;->lastHeight:I

    if-eq v4, v1, :cond_1

    :cond_0
    iget v4, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    if-le v4, v5, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->updateRotation()V

    :cond_1
    iget v2, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lorg/telegram/messenger/camera/CameraView;->measurementsCount:I

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getWorldAngle()I

    move-result v2

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getWorldAngle()I

    move-result v2

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v3

    :goto_1
    iget-boolean v4, p0, Lorg/telegram/messenger/camera/CameraView;->fit:Z

    if-eqz v4, :cond_4

    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_2

    :cond_4
    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_2
    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    int-to-float v3, v3

    mul-float v4, v4, v3

    float-to-int v3, v4

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->lastWidth:I

    iput v1, p0, Lorg/telegram/messenger/camera/CameraView;->lastHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->pixelW:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->pixelH:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->pixelDualW:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->pixelDualH:F

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->updateCameraInfoSize(I)V

    :cond_0
    iput p3, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceHeight:I

    iput p2, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceWidth:I

    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_1

    const-string p2, "CameraView start create thread"

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;-><init>(Lorg/telegram/messenger/camera/CameraView;Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->setBlurSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    :cond_3
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->shutdown(I)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    new-instance v1, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object p1, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1, v2, v2}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->destroy(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object p1, p1, v1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1, v2, v2}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->destroy(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_2
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iput p3, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceHeight:I

    iput p2, p0, Lorg/telegram/messenger/camera/CameraView;->surfaceWidth:I

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->inited:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->isInitiated()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->renderNode:Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RenderNode;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_2

    new-instance p1, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->onSurfaceTextureUpdatedInternal()V

    :cond_3
    :goto_0
    return-void
.end method

.method public pauseAsTakingPicture()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->pause(J)V

    :cond_0
    return-void
.end method

.method protected receivedAmplitude(D)V
    .locals 0

    return-void
.end method

.method public resetCamera()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSessionWrapper;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v0, v0, v1

    new-instance v2, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->destroy(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aput-object v3, v0, v1

    :cond_2
    return-void
.end method

.method public runHaptic()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/telegram/messenger/BotWebViewVibrationEffect$$ExternalSyntheticApiModelOutline1;->m([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    invoke-static {v0, v1}, Lorg/telegram/messenger/BotWebViewVibrationEffect$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1
    .end array-data
.end method

.method public setClipBottom(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipBottom:I

    return-void
.end method

.method public setClipTop(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    return-void
.end method

.method public setFpsLimit(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->fpsLimit:I

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->mirror:Z

    return-void
.end method

.method public setOptimizeForBarcode(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->optimizeForBarcode:Z

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->setOptimizeForBarcode(Z)V

    :cond_0
    return-void
.end method

.method public setRecordFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->recordFile:Ljava/io/File;

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->firstFrameRendered:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setUseMaxPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->useMaxPreview:Z

    return-void
.end method

.method public setZoom(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->setZoom(F)V

    :cond_0
    return-void
.end method

.method public showTexture(ZZ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/messenger/camera/CameraView$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/camera/CameraView$3;-><init>(Lorg/telegram/messenger/camera/CameraView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->textureViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    if-eqz p1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method protected square()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startRecording(Ljava/io/File;Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSessionWrapper;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->startRecording(Ljava/io/File;)Z

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView;->onRecordingFinishRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    return p1
.end method

.method public startSwitchingAnimation()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->firstFrameRendered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->flipHalfReached:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setCameraDistance(F)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setCameraDistance(F)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/messenger/camera/CameraView$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$1;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/messenger/camera/CameraView$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraView$2;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startTakePictureAnimation(Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->takePictureProgress:F

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->runHaptic()V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView$CameraGLThread;->stopRecording()V

    return-void
.end method

.method public switchCamera()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/camera/CameraView;->toggleDualUntil:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/telegram/messenger/camera/CameraView;->lastDualSwitchTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1a4

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/messenger/camera/CameraView;->lastDualSwitchTime:J

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aget-object v3, v0, v2

    aget-object v4, v0, v1

    aput-object v4, v0, v2

    aput-object v3, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v0, v2

    aget-object v4, v0, v1

    aput-object v4, v0, v2

    aput-object v3, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v0, v2

    aget-object v4, v0, v1

    aput-object v4, v0, v2

    aput-object v3, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v3, v0, v2

    aget-object v4, v0, v1

    aput-object v4, v0, v2

    aput-object v3, v0, v1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->startSwitchingAnimation()V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/4 v4, 0x0

    if-ne v3, v0, :cond_4

    iput-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSessionWrapper;

    :cond_4
    new-instance v3, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v2, v4, v3}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->destroy(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aput-object v4, v0, v2

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public toggleDual()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->toggleDual(Z)V

    return-void
.end method

.method public toggleDual(Z)V
    .locals 4

    .line 0
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->flipping:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/camera/CameraView;->toggleDualUntil:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    if-eq p1, v0, :cond_2

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->addToDualWait(J)V

    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object p1, p1, v1

    if-eqz p1, :cond_3

    const-string v0, "off"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->setCurrentFlashMode(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->enableDualInternal()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object p1, p1, v0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->isInitiated()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aget-object p1, p1, v0

    if-eqz p1, :cond_7

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSessionWrapper;

    const/4 v3, 0x0

    if-ne v2, p1, :cond_6

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSessionRecording:Lorg/telegram/messenger/camera/CameraSessionWrapper;

    :cond_6
    new-instance v2, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {p1, v1, v3, v2}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->destroy(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:[Lorg/telegram/messenger/camera/CameraSessionWrapper;

    aput-object v3, p1, v0

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aput-object v3, p1, v0

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->pictureSize:[Lorg/telegram/messenger/camera/Size;

    aput-object v3, p1, v0

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->info:[Lorg/telegram/messenger/camera/CameraInfo;

    aput-object v3, p1, v0

    goto :goto_0

    :cond_7
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->dualCameraAppeared:Z

    :goto_0
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->closingDualCamera:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    invoke-virtual {p1}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_8
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->toggledDualAsSave:Z

    return-void

    :cond_9
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->dual:Z

    return-void
.end method

.method public unlistenDraw(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->invalidateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateDualPosition()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraThread:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->dualMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

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
