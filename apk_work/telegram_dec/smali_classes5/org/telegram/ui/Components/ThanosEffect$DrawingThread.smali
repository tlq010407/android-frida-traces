.class Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;
.super Lorg/telegram/messenger/DispatchQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThanosEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawingThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;
    }
.end annotation


# instance fields
.field private alive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private deltaTimeHandle:I

.field private densityHandle:I

.field private destroy:Ljava/lang/Runnable;

.field private drawProgram:I

.field private drawnAnimations:Z

.field private egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private gridSizeHandle:I

.field private height:I

.field private final invalidate:Ljava/lang/Runnable;

.field private isEmulator:Z

.field private longevityHandle:I

.field private matrixHandle:I

.field private offsetHandle:I

.field private particlesCountHandle:I

.field private final pendingAnimations:Ljava/util/ArrayList;

.field private rectPosHandle:I

.field private rectSizeHandle:I

.field private resetHandle:I

.field public volatile running:Z

.field private scaleHandle:I

.field private seedHandle:I

.field private sizeHandle:I

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureHandle:I

.field private timeHandle:I

.field private final toAddAnimations:Ljava/util/ArrayList;

.field private final toRunStartCallback:Ljava/util/ArrayList;

.field private uvOffsetHandle:I

.field private width:I


# direct methods
.method public static synthetic $r8$lambda$2kgc2ryi6v2XyBF4B2D-vQV5gnA(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->lambda$animate$3(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$33gw-jZyvrViSWSsm3D1G3vECaY()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->lambda$draw$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$9SsnbGmJ5RNtliGCy0uSS7B8Qgc(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->lambda$animateGroup$2(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LZe6jOiLycQht-peORUpDh-17wQ(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->lambda$animate$4(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NncIoDCtu0N4kb0HFWMiHsdPLP4(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->lambda$animate$5(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cziJfzGkCFyVEPHp8NdpNqH4Wrw()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->lambda$run$0()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;II)V
    .locals 3

    const-string v0, "ThanosEffect.DrawingThread"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawnAnimations:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->invalidate:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    iput p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->width:I

    iput p5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->height:I

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->isEmulator:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->timeHandle:I

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->isEmulator:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->deltaTimeHandle:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->particlesCountHandle:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->gridSizeHandle:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->offsetHandle:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->scaleHandle:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->uvOffsetHandle:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->rectSizeHandle:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->seedHandle:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->rectPosHandle:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->densityHandle:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->longevityHandle:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->textureHandle:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    return p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->matrixHandle:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->resetHandle:I

    return p0
.end method

.method private addAnimationInternal(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V
    .locals 5

    iget-object v0, p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline0;->m(I[II)V

    iget-object v0, p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    aget v0, v0, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v4, 0x2601

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v4, 0x812f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->access$600(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v3, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->access$600(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->access$602(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->access$700(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->done(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->running:Z

    iput-boolean v1, p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->ready:Z

    return-void
.end method

.method private animationHeightPart(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    iget v2, v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    return p1
.end method

.method private cancelAnimationInternal(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    iget-object v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->done(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkGlErrors()V
    .locals 3

    :goto_0
    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline4;->m()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thanos gles error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private draw()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline1;->m(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    iget-boolean v4, v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->animationHeightPart(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)F

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->calcParticlesGrid(F)V

    iget-object v4, v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawnAnimations:Z

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->draw()V

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->isDead()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->done(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->running:Z

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->checkGlErrors()V

    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    iget-object v1, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawnAnimations:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    :cond_5
    return-void

    :catch_0
    nop

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->done(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda24;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void
.end method

.method private init()V
    .locals 10

    const/16 v0, 0x3038

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v4, :cond_0

    const-string v0, "ThanosEffect: eglDisplay == egl.EGL_NO_DISPLAY"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-interface {v3, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "ThanosEffect: failed eglInitialize"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_1
    const/16 v1, 0xb

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    const/4 v1, 0x1

    new-array v9, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v8, v1, [I

    iget-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v7, 0x1

    move-object v6, v9

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "ThanosEffect: failed eglChooseConfig"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->kill()V

    return-void

    :cond_2
    aget-object v3, v9, v2

    iput-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x3

    const/16 v5, 0x3098

    filled-new-array {v5, v4, v0}, [I

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v3, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_3

    const-string v0, "ThanosEffect: eglContext == null"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x0

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_4

    const-string v0, "ThanosEffect: eglSurface == null"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v0, v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ThanosEffect: failed eglMakeCurrent"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_5
    const v0, 0x8b31

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline5;->m(I)I

    move-result v0

    const v3, 0x8b30

    invoke-static {v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline5;->m(I)I

    move-result v3

    if-eqz v0, :cond_b

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$raw;->thanos_vertex:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n// "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline15;->m(ILjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline20;->m(I)V

    new-array v4, v1, [I

    const v6, 0x8b81

    invoke-static {v0, v6, v4, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline21;->m(II[II)V

    aget v7, v4, v2

    if-eq v7, v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThanosEffect, compile vertex shader error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline6;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline7;->m(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lorg/telegram/messenger/R$raw;->thanos_fragment:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline15;->m(ILjava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline20;->m(I)V

    invoke-static {v3, v6, v4, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline21;->m(II[II)V

    aget v5, v4, v2

    if-eq v5, v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThanosEffect, compile fragment shader error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline6;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline7;->m(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_8
    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline8;->m()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    if-nez v5, :cond_9

    const-string v0, "ThanosEffect: drawProgram == 0"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_9
    invoke-static {v5, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline9;->m(II)V

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline9;->m(II)V

    const-string v0, "outVelocity"

    const-string v3, "outTime"

    const-string v5, "outUV"

    const-string v6, "outPosition"

    filled-new-array {v5, v6, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const v5, 0x8c8c

    invoke-static {v3, v0, v5}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline10;->m(I[Ljava/lang/String;I)V

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline11;->m(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const v3, 0x8b82

    invoke-static {v0, v3, v4, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline12;->m(II[II)V

    aget v0, v4, v2

    if-eq v0, v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThanosEffect, link program error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline13;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "matrix"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->matrixHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "rectSize"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->rectSizeHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "rectPos"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->rectPosHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "reset"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->resetHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "time"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->timeHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "deltaTime"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->deltaTimeHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "particlesCount"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->particlesCountHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "size"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->sizeHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "gridSize"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->gridSizeHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "tex"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->textureHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "seed"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->seedHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "dp"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->densityHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "longevity"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->longevityHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "offset"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->offsetHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "scale"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->scaleHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v1, "uvOffset"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->uvOffsetHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->height:I

    invoke-static {v2, v2, v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline2;->m(IIII)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline16;->m(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline17;->m(II)V

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline18;->m(FFFF)V

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline19;->m(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->sizeHandle:I

    iget v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->width:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->height:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline3;->m(IFF)V

    return-void

    :cond_b
    :goto_0
    const-string v0, "ThanosEffect: vertexShader == 0 || fragmentShader == 0"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x40
        0x3038
    .end array-data
.end method

.method private killInternal()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ThanosEffect: killInternal failed, already dead"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ThanosEffect: killInternal"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->done(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect;->ensureRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$animate$3(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->addAnimationInternal(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    return-void
.end method

.method private static synthetic lambda$animate$4(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ThanosEffect;->ensureRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$animate$5(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->addAnimationInternal(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    return-void
.end method

.method private synthetic lambda$animateGroup$2(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->addAnimationInternal(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    return-void
.end method

.method private static synthetic lambda$draw$1()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect;->access$2402(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "nothanos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$run$0()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect;->access$2402(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "nothanos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private resizeInternal(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->width:I

    iput p2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->height:I

    const/4 v0, 0x0

    invoke-static {v0, v0, p1, p2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline2;->m(IIII)V

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->sizeHandle:I

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline3;->m(IFF)V

    return-void
.end method


# virtual methods
.method public animate(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda25;

    invoke-direct {p1, p3, p4}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda25;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->ensureRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    return-void

    :cond_0
    new-instance v6, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->running:Z

    new-instance p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0, v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public animate(Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Landroid/view/View;FLjava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->running:Z

    new-instance p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public animateGroup(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->running:Z

    new-instance p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    iget-object v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lorg/telegram/ui/Components/ThanosEffect;->ensureRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->cancelAnimationInternal(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    iget v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    iget v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->addAnimationInternal(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    return-void

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->resizeInternal(II)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->draw()V

    return-void

    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->draw()V

    return-void
.end method

.method public kill()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ThanosEffect: kill failed, already dead"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ThanosEffect: kill"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public requestDraw()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->addAnimationInternal(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    iget-object v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->done(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void
.end method
