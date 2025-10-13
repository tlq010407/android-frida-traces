.class public Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;
    }
.end annotation


# instance fields
.field animationIndexes:Ljava/util/ArrayList;

.field animationPointer:I

.field private final animationsCount:I

.field animatorSet:Landroid/animation/AnimatorSet;

.field attached:Z

.field backAnimation:Landroid/animation/ValueAnimator;

.field private dialogIsVisible:Z

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field gestureDetector:Landroid/view/GestureDetector;

.field idleAnimation:Ljava/lang/Runnable;

.field private idleDelay:J

.field public isRunning:Z

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;

.field public mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private paused:Z

.field private volatile ready:Z

.field private volatile readyListener:Ljava/lang/Runnable;

.field private rendererChanged:Z

.field starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private targetFps:I

.field private targetFrameDurationMillis:I

.field private thread:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;

.field public touched:Z

.field type:I

.field xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field xUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field yUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$CW0FQB1l2etsdFQhNZdzoUTiJA8(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->lambda$new$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GmRqN9cSMrw2pJ-kvt9og8IVZCQ(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->lambda$new$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R7zzGaxIp_5FcyfbqTDRwBOPlw4(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RoeAm-LTxcl1yTBHo_oeMcSmbWQ(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->lambda$startBackAnimation$0(FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .line 0
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->isRunning:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->paused:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->rendererChanged:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->dialogIsVisible:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationIndexes:Ljava/util/ArrayList;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$2;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleAnimation:Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->yUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput p3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->type:I

    const/4 v2, 0x4

    if-eq p3, v1, :cond_1

    if-eq p3, v2, :cond_1

    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationsCount:I

    if-ne p3, v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x7d0

    :goto_2
    iput-wide v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleDelay:J

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    new-instance v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-direct {v2, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setRenderer(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->initialize(Landroid/content/Context;)V

    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p2, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :goto_3
    iget p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationsCount:I

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationIndexes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationIndexes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleDelay:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->targetFrameDurationMillis:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->initGL()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->checkGlError()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->rendererChanged:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->rendererChanged:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->initializeRenderer(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->shouldSleep()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->drawSingleFrame(F)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->ready:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->ready:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->readyListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->readyListener:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkCurrent()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->checkEglError()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->checkEglError()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkEglError()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    const-string v0, "cannot swap buffers!"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkGlError()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GL error = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized drawSingleFrame(F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->checkCurrent()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->setDeltaTime(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->checkGlError()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private flipAnimation()V
    .locals 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0x258

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v7, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v4

    aput-object v7, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$5;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private initGL()V
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    new-array v3, v2, [I

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    new-array v9, v1, [I

    new-array v10, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/EmuDetector;->with(Landroid/content/Context;)Lorg/telegram/messenger/EmuDetector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/EmuDetector;->detect()Z

    move-result v3

    const/16 v6, 0x3025

    const/4 v7, 0x7

    const/16 v8, 0x3021

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/16 v13, 0x3022

    const/4 v14, 0x3

    const/16 v15, 0x3023

    const/16 v16, 0x3024

    const/16 v4, 0xb

    const/16 v5, 0x3038

    const/16 v17, 0x10

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v20, 0x8

    if-eqz v3, :cond_0

    new-array v3, v4, [I

    aput v16, v3, v19

    aput v20, v3, v1

    aput v15, v3, v2

    aput v20, v3, v14

    aput v13, v3, v18

    aput v20, v3, v12

    aput v8, v3, v11

    aput v20, v3, v7

    aput v6, v3, v20

    const/16 v1, 0x9

    aput v17, v3, v1

    const/16 v1, 0xa

    aput v5, v3, v1

    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_0
    const/16 v3, 0x11

    new-array v3, v3, [I

    const/16 v21, 0x3040

    aput v21, v3, v19

    aput v18, v3, v1

    aput v16, v3, v2

    aput v20, v3, v14

    aput v15, v3, v18

    aput v20, v3, v12

    aput v13, v3, v11

    aput v20, v3, v7

    aput v8, v3, v20

    const/16 v7, 0x9

    aput v20, v3, v7

    const/16 v7, 0xa

    aput v6, v3, v7

    aput v17, v3, v4

    const/16 v4, 0xc

    const/16 v6, 0x3026

    aput v6, v3, v4

    const/16 v4, 0xd

    aput v19, v3, v4

    const/16 v4, 0xe

    const/16 v6, 0x3032

    aput v6, v3, v4

    const/16 v4, 0xf

    aput v1, v3, v4

    aput v5, v3, v17

    goto :goto_0

    :goto_1
    const/4 v11, 0x0

    iput-object v11, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v7, 0x1

    const/16 v12, 0x3038

    move-object v5, v1

    move-object v6, v10

    move-object v8, v9

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_7

    aget v1, v9, v19

    if-lez v1, :cond_1

    aget-object v1, v10, v19

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v1, :cond_6

    const/16 v3, 0x3098

    filled-new-array {v3, v2, v12}, [I

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v1, v5, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->checkEglError()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2, v3, v4, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->checkEglError()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_4

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v1, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->checkEglError()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->checkEglError()V

    return-void

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglMakeCurrent failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const/16 v2, 0x300b

    if-ne v1, v2, :cond_5

    const-string v1, "eglCreateWindowSurface returned EGL10.EGL_BAD_NATIVE_WINDOW"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglCreateWindowSurface failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglConfig not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglChooseConfig failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglInitialize failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglGetDisplay failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 0

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->targetFps:I

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private declared-synchronized initializeRenderer(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->surfaceWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->surfaceHeight:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX2:F

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    return-void
.end method

.method private synthetic lambda$startBackAnimation$0(FFFLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    mul-float p1, p1, p4

    iput p1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    mul-float p2, p2, p4

    iput p2, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX2:F

    mul-float p4, p4, p3

    iput p4, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    return-void
.end method

.method private pullAnimation()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/4 v4, 0x4

    rem-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    iget v5, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->type:I

    if-ne v5, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v4, v3

    new-array v1, v1, [F

    aput v3, v1, v0

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x2ee0

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_2

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x3

    if-nez v3, :cond_1

    if-eq v5, v2, :cond_1

    if-eq v5, v6, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    const/16 v5, 0x30

    int-to-float v5, v5

    new-array v6, v1, [F

    aput v3, v6, v0

    aput v5, v6, v2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->yUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v6, 0x8fc

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v8, v1, [F

    aput v5, v8, v0

    aput v4, v8, v2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->yUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_1
    if-eq v5, v2, :cond_3

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    const/16 v5, 0x1e5

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v5, 0x168

    :goto_1
    if-ne v3, v1, :cond_4

    neg-int v5, v5

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    int-to-float v5, v5

    new-array v6, v1, [F

    aput v3, v6, v0

    aput v5, v6, v2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v8, v1, [F

    aput v5, v8, v0

    aput v4, v8, v2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$4;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private shouldSleep()Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sleepAnimation()V
    .locals 12

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/high16 v0, 0x43380000    # 184.0f

    const/4 v4, 0x1

    aput v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0x258

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v7, v7, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    new-array v8, v1, [F

    aput v7, v8, v3

    const/high16 v7, 0x42480000    # 50.0f

    aput v7, v8, v4

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->yUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0x320

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x2710

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v2, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v10, v1, [F

    fill-array-data v10, :array_1

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->yUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v10, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v10, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v10, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v5, 0xa

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater2:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x5

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v0, v8, v3

    aput-object v7, v8, v4

    aput-object v2, v8, v1

    const/4 v0, 0x3

    aput-object v10, v8, v0

    const/4 v0, 0x4

    aput-object v5, v8, v0

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$6;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x42700000    # 60.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x40000000    # 2.0f
        -0x3fc00000    # -3.0f
        0x40000000    # 2.0f
        -0x40800000    # -1.0f
        0x40000000    # 2.0f
        -0x3fc00000    # -3.0f
        0x40000000    # 2.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method private slowFlipAnimation()V
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/high16 v0, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x1f40

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$3;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public cancelAnimatons()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method public cancelIdleAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleAnimation:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized isPaused()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->attached:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->rendererChanged:Z

    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleDelay:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->scheduleIdleAnimation(J)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->cancelAnimatons()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    iput v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    iput v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX2:F

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->attached:Z

    return-void
.end method

.method public onLongPress()V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->startThread(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->ready:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->stopThread()V

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDimensions(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1, v0, p2, p3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->touched:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->startBackAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public scheduleIdleAnimation(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleAnimation:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->dialogIsVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleAnimation:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->setBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setDialogVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->dialogIsVisible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleAnimation:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->startBackAnimation()V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleDelay:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->scheduleIdleAnimation(J)V

    :goto_0
    return-void
.end method

.method public setDimensions(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->surfaceWidth:I

    iput p2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->surfaceHeight:I

    return-void
.end method

.method public declared-synchronized setPaused(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRenderer(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->rendererChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    return-void
.end method

.method public startBackAnimation()V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->cancelAnimatons()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    iget v2, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    iget v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX2:F

    add-float v3, v1, v2

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v1, v0, v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;FFF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->flingParticles(F)V

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleDelay:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->scheduleIdleAnimation(J)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public startEnterAnimation(IJ)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    if-eqz p1, :cond_0

    const/high16 v0, -0x3ccc0000    # -180.0f

    iput v0, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    new-instance p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$7;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected startIdleAnimation()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationIndexes:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationPointer:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationPointer:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationPointer:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationIndexes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationIndexes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animationPointer:I

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->pullAnimation()V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->slowFlipAnimation()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->sleepAnimation()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->flipAnimation()V

    :goto_0
    return-void
.end method

.method public startThread(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->thread:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDimensions(II)V

    iget p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->targetFps:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->targetFrameDurationMillis:I

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->thread:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopThread()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->thread:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->isRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->thread:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;

    :cond_0
    return-void
.end method

.method public whenReady(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->ready:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->readyListener:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
