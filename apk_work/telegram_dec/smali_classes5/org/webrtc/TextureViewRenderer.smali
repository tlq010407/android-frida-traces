.class public Lorg/webrtc/TextureViewRenderer;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lorg/webrtc/VideoSink;
.implements Lorg/webrtc/RendererCommon$RendererEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureViewRenderer"


# instance fields
.field private backgroundRenderer:Landroid/view/TextureView;

.field private cameraRotation:I

.field private final eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

.field private enableFixedSize:Z

.field private isCamera:Z

.field private maxTextureSize:I

.field private mirror:Z

.field private orientationHelper:Lorg/webrtc/OrientationHelper;

.field private parentSink:Lorg/webrtc/VideoSink;

.field private rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

.field private final resourceName:Ljava/lang/String;

.field private rotateTextureWithScreen:Z

.field public rotatedFrameHeight:I

.field public rotatedFrameWidth:I

.field private screenRotation:I

.field private surfaceHeight:I

.field private surfaceWidth:I

.field textureRotation:I

.field updateScreenRunnable:Ljava/lang/Runnable;

.field useCameraRotation:Z

.field private videoHeight:I

.field private final videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

.field private videoWidth:I


# direct methods
.method public static synthetic $r8$lambda$wtAV-KtJ0HfkL3QYugafIwOl5W4(Lorg/webrtc/TextureViewRenderer;IIII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/webrtc/TextureViewRenderer;->lambda$onFrameResolutionChanged$0(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$yc_DZEyKpurrK-vjSc8Qvugm5-Q(Lorg/webrtc/TextureViewRenderer;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/webrtc/TextureViewRenderer;->lambda$updateVideoSizes$1(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-direct {p1}, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object p1, p0, Lorg/webrtc/TextureViewRenderer;->videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/TextureViewRenderer;->resourceName:Ljava/lang/String;

    new-instance v0, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-direct {v0, p1}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/TextureViewRenderer;)Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    return-object p0
.end method

.method static synthetic access$200(Lorg/webrtc/TextureViewRenderer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/TextureViewRenderer;->isCamera:Z

    return p0
.end method

.method private getResourceName()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private synthetic lambda$onFrameResolutionChanged$0(IIII)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/TextureViewRenderer;->updateScreenRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lorg/webrtc/TextureViewRenderer;->videoWidth:I

    iput p2, p0, Lorg/webrtc/TextureViewRenderer;->videoHeight:I

    iput p3, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    iput p4, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->updateSurfaceSize()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$updateVideoSizes$1(II)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/TextureViewRenderer;->updateScreenRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    iput p2, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->updateSurfaceSize()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/webrtc/TextureViewRenderer;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextureViewRenderer"

    invoke-static {v0, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onRotationChanged()V
    .locals 4

    iget-boolean v0, p0, Lorg/webrtc/TextureViewRenderer;->useCameraRotation:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/webrtc/OrientationHelper;->cameraOrientation:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/webrtc/TextureViewRenderer;->mirror:Z

    if-eqz v1, :cond_1

    rsub-int v0, v0, 0x168

    :cond_1
    neg-int v0, v0

    iget-boolean v2, p0, Lorg/webrtc/TextureViewRenderer;->useCameraRotation:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/webrtc/TextureViewRenderer;->screenRotation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_2

    const/16 v1, 0x5a

    goto :goto_1

    :cond_2
    const/16 v1, -0x5a

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    if-eqz v1, :cond_4

    const/16 v1, 0x10e

    goto :goto_1

    :cond_4
    const/16 v1, -0x10e

    :goto_1
    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v1, v0}, Lorg/webrtc/EglRenderer;->setRotation(I)V

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    iget-boolean v1, p0, Lorg/webrtc/TextureViewRenderer;->mirror:Z

    invoke-virtual {v0, v1}, Lorg/webrtc/EglRenderer;->setMirror(Z)V

    return-void
.end method

.method private postOrRun(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private updateSurfaceSize()V
    .locals 5

    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    iget-boolean v0, p0, Lorg/webrtc/TextureViewRenderer;->enableFixedSize:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    int-to-float v2, v1

    iget v3, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    mul-float v4, v4, v0

    float-to-int v1, v4

    goto :goto_0

    :cond_0
    div-float/2addr v4, v0

    float-to-int v3, v4

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSurfaceSize. Layout size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", frame size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requested surface size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", old surface size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/webrtc/TextureViewRenderer;->surfaceWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/webrtc/TextureViewRenderer;->surfaceHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/webrtc/TextureViewRenderer;->logD(Ljava/lang/String;)V

    iget v2, p0, Lorg/webrtc/TextureViewRenderer;->surfaceWidth:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lorg/webrtc/TextureViewRenderer;->surfaceHeight:I

    if-eq v1, v2, :cond_3

    :cond_1
    iput v0, p0, Lorg/webrtc/TextureViewRenderer;->surfaceWidth:I

    iput v1, p0, Lorg/webrtc/TextureViewRenderer;->surfaceHeight:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/TextureViewRenderer;->surfaceHeight:I

    iput v0, p0, Lorg/webrtc/TextureViewRenderer;->surfaceWidth:I

    :cond_3
    :goto_1
    return-void
.end method

.method private updateVideoSizes()V
    .locals 6

    iget v0, p0, Lorg/webrtc/TextureViewRenderer;->videoHeight:I

    if-eqz v0, :cond_e

    iget v1, p0, Lorg/webrtc/TextureViewRenderer;->videoWidth:I

    if-eqz v1, :cond_e

    iget-boolean v2, p0, Lorg/webrtc/TextureViewRenderer;->rotateTextureWithScreen:Z

    const/16 v3, -0xb4

    const/16 v4, 0xb4

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lorg/webrtc/TextureViewRenderer;->useCameraRotation:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/webrtc/TextureViewRenderer;->screenRotation:I

    if-nez v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez v2, :cond_b

    goto :goto_3

    :cond_1
    iget v2, p0, Lorg/webrtc/TextureViewRenderer;->textureRotation:I

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v5, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v1

    :goto_2
    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_5

    if-ne v2, v3, :cond_4

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_3
    move v0, v1

    goto :goto_9

    :cond_5
    :goto_4
    move v3, v5

    goto :goto_9

    :cond_6
    iget v0, p0, Lorg/webrtc/TextureViewRenderer;->textureRotation:I

    sget v1, Lorg/webrtc/OrientationHelper;->cameraOrientation:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_8

    if-ne v0, v3, :cond_7

    goto :goto_5

    :cond_7
    iget v1, p0, Lorg/webrtc/TextureViewRenderer;->videoHeight:I

    goto :goto_6

    :cond_8
    :goto_5
    iget v1, p0, Lorg/webrtc/TextureViewRenderer;->videoWidth:I

    :goto_6
    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_a

    if-ne v0, v3, :cond_9

    goto :goto_8

    :cond_9
    iget v0, p0, Lorg/webrtc/TextureViewRenderer;->videoWidth:I

    :goto_7
    move v3, v1

    goto :goto_9

    :cond_a
    :goto_8
    iget v0, p0, Lorg/webrtc/TextureViewRenderer;->videoHeight:I

    goto :goto_7

    :cond_b
    :goto_9
    iget v1, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    if-ne v1, v3, :cond_c

    iget v1, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    if-eq v1, v0, :cond_e

    :cond_c
    iget-object v1, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-static {v1}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->access$300(Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/webrtc/TextureViewRenderer;->updateScreenRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_d

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_d
    :goto_a
    new-instance v2, Lorg/webrtc/TextureViewRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v3, v0}, Lorg/webrtc/TextureViewRenderer$$ExternalSyntheticLambda1;-><init>(Lorg/webrtc/TextureViewRenderer;II)V

    iput-object v2, p0, Lorg/webrtc/TextureViewRenderer;->updateScreenRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lorg/webrtc/TextureViewRenderer;->postOrRun(Ljava/lang/Runnable;)V

    monitor-exit v1

    goto :goto_c

    :goto_b
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_e
    :goto_c
    return-void
.end method


# virtual methods
.method public addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;F)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/EglRenderer;->addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;F)V

    return-void
.end method

.method public addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/webrtc/EglRenderer;->addFrameListener(Lorg/webrtc/EglRenderer$FrameListener;FLorg/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public clearFirstFrame()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/webrtc/EglRenderer;->firstFrameRendered:Z

    invoke-static {v0, v1}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->access$102(Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;Z)Z

    return-void
.end method

.method public clearImage()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/EglRenderer;->clearImage()V

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->access$102(Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;Z)Z

    return-void
.end method

.method public createBackgroundSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/EglRenderer;->createBackgroundSurface(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->disableFpsReduction()V

    return-void
.end method

.method public getRenderBufferBitmap(Lorg/webrtc/GlGenericDrawer$TextureCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/EglRenderer;->getTexture(Lorg/webrtc/GlGenericDrawer$TextureCallback;)V

    return-void
.end method

.method public init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V
    .locals 2

    .line 0
    sget-object v0, Lorg/webrtc/EglBase;->CONFIG_PLAIN:[I

    new-instance v1, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v1}, Lorg/webrtc/GlRectDrawer;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 0

    .line 0
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    iput-object p2, p0, Lorg/webrtc/TextureViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    const/4 p2, 0x0

    iput p2, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    iput p2, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    iget-object p2, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {p2, p1, p0, p3, p4}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public isFirstFrameRendered()Z
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-static {v0}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->access$100(Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;)Z

    move-result v0

    return v0
.end method

.method public onFirstFrameRendered()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/webrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    :cond_0
    return-void
.end method

.method public onFrame(Lorg/webrtc/VideoFrame;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->onFrame(Lorg/webrtc/VideoFrame;)V

    return-void
.end method

.method public onFrameResolutionChanged(III)V
    .locals 7

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/webrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    :cond_0
    iput p3, p0, Lorg/webrtc/TextureViewRenderer;->textureRotation:I

    iget-boolean v0, p0, Lorg/webrtc/TextureViewRenderer;->rotateTextureWithScreen:Z

    const/16 v1, -0xb4

    const/16 v2, 0xb4

    if-eqz v0, :cond_6

    iget-boolean p3, p0, Lorg/webrtc/TextureViewRenderer;->isCamera:Z

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->onRotationChanged()V

    :cond_1
    iget-boolean p3, p0, Lorg/webrtc/TextureViewRenderer;->useCameraRotation:Z

    if-eqz p3, :cond_3

    iget p3, p0, Lorg/webrtc/TextureViewRenderer;->screenRotation:I

    if-nez p3, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    if-nez p3, :cond_b

    goto :goto_5

    :cond_3
    iget p3, p0, Lorg/webrtc/TextureViewRenderer;->textureRotation:I

    if-eqz p3, :cond_5

    if-eq p3, v2, :cond_5

    if-ne p3, v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, p2

    goto :goto_2

    :cond_5
    :goto_1
    move v0, p1

    :goto_2
    if-eqz p3, :cond_b

    if-eq p3, v2, :cond_b

    if-ne p3, v1, :cond_a

    goto :goto_7

    :cond_6
    iget-boolean v0, p0, Lorg/webrtc/TextureViewRenderer;->isCamera:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    sget v3, Lorg/webrtc/OrientationHelper;->cameraRotation:I

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lorg/webrtc/EglRenderer;->setRotation(I)V

    :cond_7
    sget v0, Lorg/webrtc/OrientationHelper;->cameraOrientation:I

    sub-int/2addr p3, v0

    if-eqz p3, :cond_9

    if-eq p3, v2, :cond_9

    if-ne p3, v1, :cond_8

    goto :goto_3

    :cond_8
    move v0, p2

    goto :goto_4

    :cond_9
    :goto_3
    move v0, p1

    :goto_4
    if-eqz p3, :cond_b

    if-eq p3, v2, :cond_b

    if-ne p3, v1, :cond_a

    goto :goto_7

    :cond_a
    :goto_5
    move v6, p1

    :goto_6
    move v5, v0

    goto :goto_8

    :cond_b
    :goto_7
    move v6, p2

    goto :goto_6

    :goto_8
    iget-object p3, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-static {p3}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->access$300(Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->updateScreenRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_9

    :catchall_0
    move-exception p1

    goto :goto_a

    :cond_c
    :goto_9
    new-instance v0, Lorg/webrtc/TextureViewRenderer$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/webrtc/TextureViewRenderer$$ExternalSyntheticLambda0;-><init>(Lorg/webrtc/TextureViewRenderer;IIII)V

    iput-object v0, p0, Lorg/webrtc/TextureViewRenderer;->updateScreenRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lorg/webrtc/TextureViewRenderer;->postOrRun(Ljava/lang/Runnable;)V

    monitor-exit p3

    return-void

    :goto_a
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    iget-boolean v0, p0, Lorg/webrtc/TextureViewRenderer;->isCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/webrtc/TextureViewRenderer;->rotateTextureWithScreen:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->updateVideoSizes()V

    :cond_0
    iget v0, p0, Lorg/webrtc/TextureViewRenderer;->maxTextureSize:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/webrtc/TextureViewRenderer;->videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    iget-boolean v2, p0, Lorg/webrtc/TextureViewRenderer;->isCamera:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget p1, p0, Lorg/webrtc/TextureViewRenderer;->maxTextureSize:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    iget v6, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    invoke-virtual/range {v1 .. v6}, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->measure(ZIIII)Landroid/graphics/Point;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    iget-boolean v1, p0, Lorg/webrtc/TextureViewRenderer;->isCamera:Z

    iget v4, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    iget v5, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->measure(ZIIII)Landroid/graphics/Point;

    move-result-object p1

    :goto_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p1, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/webrtc/EglRenderer;->setLayoutAspectRatio(F)V

    :cond_2
    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->updateSurfaceSize()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/TextureViewRenderer;->surfaceHeight:I

    iput v0, p0, Lorg/webrtc/TextureViewRenderer;->surfaceWidth:I

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->updateSurfaceSize()V

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->parentSink:Lorg/webrtc/VideoSink;

    instance-of v1, v0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->removeTarget(Lorg/webrtc/VideoSink;)V

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->removeBackground(Lorg/webrtc/VideoSink;)V

    :cond_0
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iput p2, p0, Lorg/webrtc/TextureViewRenderer;->surfaceWidth:I

    iput p3, p0, Lorg/webrtc/TextureViewRenderer;->surfaceHeight:I

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public pauseVideo()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->pauseVideo()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0}, Lorg/webrtc/EglRenderer;->release()V

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->orientationHelper:Lorg/webrtc/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/webrtc/OrientationHelper;->stop()V

    :cond_0
    return-void
.end method

.method public removeFrameListener(Lorg/webrtc/EglRenderer$FrameListener;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/EglRenderer;->removeFrameListener(Lorg/webrtc/EglRenderer$FrameListener;)V

    return-void
.end method

.method public setBackgroundRenderer(Landroid/view/TextureView;)V
    .locals 2

    const/16 v0, 0x200

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/webrtc/TextureViewRenderer;->backgroundRenderer:Landroid/view/TextureView;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    iget-object p1, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/webrtc/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;Z)V

    return-void

    :cond_1
    new-instance v0, Lorg/webrtc/TextureViewRenderer$1;

    invoke-direct {v0, p0}, Lorg/webrtc/TextureViewRenderer$1;-><init>(Lorg/webrtc/TextureViewRenderer;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public setEnableHardwareScaler(Z)V
    .locals 0

    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    iput-boolean p1, p0, Lorg/webrtc/TextureViewRenderer;->enableFixedSize:Z

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->updateSurfaceSize()V

    return-void
.end method

.method public setFpsReduction(F)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public setIsCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/webrtc/TextureViewRenderer;->isCamera:Z

    if-nez p1, :cond_0

    new-instance p1, Lorg/webrtc/TextureViewRenderer$2;

    invoke-direct {p1, p0}, Lorg/webrtc/TextureViewRenderer$2;-><init>(Lorg/webrtc/TextureViewRenderer;)V

    iput-object p1, p0, Lorg/webrtc/TextureViewRenderer;->orientationHelper:Lorg/webrtc/OrientationHelper;

    invoke-virtual {p1}, Lorg/webrtc/OrientationHelper;->start()V

    :cond_0
    return-void
.end method

.method public setMaxTextureSize(I)V
    .locals 0

    iput p1, p0, Lorg/webrtc/TextureViewRenderer;->maxTextureSize:I

    return-void
.end method

.method public setMirror(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/webrtc/TextureViewRenderer;->mirror:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/webrtc/TextureViewRenderer;->mirror:Z

    iget-boolean v0, p0, Lorg/webrtc/TextureViewRenderer;->rotateTextureWithScreen:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->onRotationChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->eglRenderer:Lorg/webrtc/TextureViewRenderer$TextureEglRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/EglRenderer;->setMirror(Z)V

    :goto_0
    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->updateSurfaceSize()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setParentSink(Lorg/webrtc/VideoSink;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/TextureViewRenderer;->parentSink:Lorg/webrtc/VideoSink;

    return-void
.end method

.method public setRotateTextureWithScreen(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/webrtc/TextureViewRenderer;->rotateTextureWithScreen:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/webrtc/TextureViewRenderer;->rotateTextureWithScreen:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    return-void
.end method

.method public setRotationX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotationX(F)V

    return-void
.end method

.method public setRotationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotationY(F)V

    return-void
.end method

.method public setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V
    .locals 1

    .line 0
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1}, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setScalingType(Lorg/webrtc/RendererCommon$ScalingType;Lorg/webrtc/RendererCommon$ScalingType;)V
    .locals 1

    .line 0
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->videoLayoutMeasure:Lorg/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;Lorg/webrtc/RendererCommon$ScalingType;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setScreenRotation(I)V
    .locals 0

    iput p1, p0, Lorg/webrtc/TextureViewRenderer;->screenRotation:I

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->onRotationChanged()V

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->updateVideoSizes()V

    return-void
.end method

.method public setUseCameraRotation(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/webrtc/TextureViewRenderer;->useCameraRotation:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/webrtc/TextureViewRenderer;->useCameraRotation:Z

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->onRotationChanged()V

    invoke-direct {p0}, Lorg/webrtc/TextureViewRenderer;->updateVideoSizes()V

    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 9

    iget-object v0, p0, Lorg/webrtc/TextureViewRenderer;->orientationHelper:Lorg/webrtc/OrientationHelper;

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameWidth:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/webrtc/TextureViewRenderer;->rotatedFrameHeight:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/webrtc/TextureViewRenderer;->orientationHelper:Lorg/webrtc/OrientationHelper;

    invoke-virtual {v1}, Lorg/webrtc/OrientationHelper;->getOrientation()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/16 v5, 0x5a

    const/16 v6, 0x10e

    if-eq v1, v5, :cond_3

    if-ne v1, v6, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    move v7, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v7, v2

    move v5, v3

    :goto_1
    cmpg-float v8, v5, v7

    div-float v2, v5, v2

    div-float v3, v7, v3

    if-gez v8, :cond_4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_2

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_2
    mul-float v5, v5, v2

    mul-float v7, v7, v2

    div-float v3, v5, v7

    div-float v8, v4, v0

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v8, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v8

    if-gez v3, :cond_5

    div-float/2addr v4, v5

    div-float/2addr v0, v7

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v2, v2, v0

    :cond_5
    if-ne v1, v6, :cond_6

    const/16 v1, -0x5a

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    :goto_3
    return-void
.end method
