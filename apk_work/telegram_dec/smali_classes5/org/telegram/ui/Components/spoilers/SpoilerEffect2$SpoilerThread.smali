.class Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpoilerThread"
.end annotation


# instance fields
.field private currentBuffer:I

.field private deltaTimeHandle:I

.field private drawProgram:I

.field private egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private height:I

.field private final invalidate:Ljava/lang/Runnable;

.field private particlesCount:I

.field private particlesData:[I

.field private volatile paused:Z

.field private radius:F

.field private radiusHandle:I

.field private reset:Z

.field private resetHandle:I

.field private resize:Z

.field private final resizeLock:Ljava/lang/Object;

.field private volatile running:Z

.field private seedHandle:I

.field private sizeHandle:I

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private t:F

.field final synthetic this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

.field private timeHandle:I

.field private final timeScale:F

.field private width:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;Landroid/graphics/SurfaceTexture;IILjava/lang/Runnable;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->paused:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resizeLock:Ljava/lang/Object;

    const v1, 0x3f99999a    # 1.2f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->radius:F

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->reset:Z

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->currentBuffer:I

    const p1, 0x3f266666    # 0.65f

    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->timeScale:F

    iput-object p5, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->invalidate:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    iput p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount:I

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

    const-string v2, "spoiler gles error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkResize()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resizeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resize:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->sizeHandle:I

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline3;->m(IFF)V

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline2;->m(IIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount:I

    if-le v1, v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->reset:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->genParticlesData()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iput v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount:I

    iput-boolean v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resize:Z

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private die()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline0;->m(I[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline1;->m(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    iput v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    :try_start_3
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    :try_start_4
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    :try_start_5
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->checkGlErrors()V

    return-void
.end method

.method private drawFrame(F)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->t:F

    const v3, 0x3f266666    # 0.65f

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->t:F

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    iput v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->t:F

    :cond_1
    const/16 v1, 0x4000

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline1;->m(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    iget v4, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->currentBuffer:I

    aget v1, v1, v4

    const v4, 0x8892

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline6;->m(II)V

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v16, 0x18

    const/16 v17, 0x8

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v11, 0x10

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    const/4 v4, 0x2

    invoke-static {v4}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v11, 0x14

    const/4 v6, 0x3

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    iget v8, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->currentBuffer:I

    rsub-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    const v8, 0x8c8e

    invoke-static {v8, v2, v7}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline9;->m(III)V

    const/16 v13, 0x18

    const/4 v14, 0x0

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v19, 0x18

    const/16 v20, 0x8

    const/4 v15, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x1406

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v11, 0x18

    const/16 v12, 0x10

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x1406

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v4}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v17, 0x18

    const/16 v18, 0x14

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/16 v15, 0x1406

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    iget v4, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->timeHandle:I

    iget v6, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->t:F

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    iget v4, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->deltaTimeHandle:I

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline10;->m(I)V

    iget v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount:I

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline11;->m(III)V

    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline12;->m()V

    iget-boolean v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->reset:Z

    if-eqz v3, :cond_2

    iput-boolean v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->reset:Z

    iget v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resetHandle:I

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    :cond_2
    iget v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->currentBuffer:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->currentBuffer:I

    iget-object v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->checkGlErrors()V

    return-void
.end method

.method private genParticlesData()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline0;->m(I[II)V

    :cond_0
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline14;->m(I[II)V

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesData:[I

    aget v0, v0, v1

    const v3, 0x8892

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline6;->m(II)V

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->particlesCount:I

    mul-int/lit8 v0, v0, 0x18

    const/4 v4, 0x0

    const v5, 0x88e8

    invoke-static {v3, v0, v4, v5}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline15;->m(IILjava/nio/Buffer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->checkGlErrors()V

    return-void
.end method

.method private init()V
    .locals 10

    const/16 v0, 0x3038

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v4, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-interface {v3, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_1
    const/16 v1, 0xb

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    const/4 v1, 0x1

    new-array v9, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v8, v1, [I

    iget-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v7, 0x1

    move-object v6, v9

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-nez v3, :cond_2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_2
    aget-object v3, v9, v2

    iput-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x3

    const/16 v5, 0x3098

    filled-new-array {v5, v4, v0}, [I

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v3, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x0

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v0, v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->genParticlesData()V

    const v0, 0x8b31

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline5;->m(I)I

    move-result v0

    const v3, 0x8b30

    invoke-static {v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline5;->m(I)I

    move-result v3

    if-eqz v0, :cond_c

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$raw;->spoiler_vertex:I

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

    new-array v1, v1, [I

    const v4, 0x8b81

    invoke-static {v0, v4, v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline21;->m(II[II)V

    aget v6, v1, v2

    if-nez v6, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpoilerEffect2, compile vertex shader error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline6;->m(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline7;->m(I)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lorg/telegram/messenger/R$raw;->spoiler_fragment:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline15;->m(ILjava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline20;->m(I)V

    invoke-static {v3, v4, v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline21;->m(II[II)V

    aget v4, v1, v2

    if-nez v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpoilerEffect2, compile fragment shader error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline6;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline7;->m(I)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_8
    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline8;->m()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    if-nez v4, :cond_9

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_9
    invoke-static {v4, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline9;->m(II)V

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline9;->m(II)V

    const-string v0, "outTime"

    const-string v3, "outDuration"

    const-string v4, "outPosition"

    const-string v5, "outVelocity"

    filled-new-array {v4, v5, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const v4, 0x8c8c

    invoke-static {v3, v0, v4}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline10;->m(I[Ljava/lang/String;I)V

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline11;->m(I)V

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const v3, 0x8b82

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline12;->m(II[II)V

    aget v0, v1, v2

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpoilerEffect2, link draw program error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline13;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v1, "reset"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resetHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v1, "time"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->timeHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v1, "deltaTime"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->deltaTimeHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v1, "size"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->sizeHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v1, "r"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->radiusHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    const-string v1, "seed"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline14;->m(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->seedHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    invoke-static {v2, v2, v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline2;->m(IIII)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline16;->m(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline17;->m(II)V

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline18;->m(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawProgram:I

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline19;->m(I)V

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->sizeHandle:I

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline3;->m(IFF)V

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resetHandle:I

    iget-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->reset:Z

    if-eqz v2, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_b
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->radiusHandle:I

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->radius:F

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->seedHandle:I

    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    return-void

    :cond_c
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void

    nop

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

.method private particlesCount()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    const v1, 0x48742400    # 250000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    const v1, 0x461c4000    # 10000.0f

    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public halt()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    return-void
.end method

.method public pause(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->paused:Z

    return-void
.end method

.method public run()V
    .locals 12

    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->init()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->running:Z

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-double v0, v0

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-static {v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->access$300(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D

    move-result-wide v6

    cmpg-double v8, v0, v6

    if-gez v8, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-static {v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->access$300(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D

    move-result-wide v6

    sub-double/2addr v6, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double v8, v6, v0

    double-to-long v8, v8

    long-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v0

    sub-double/2addr v6, v10

    mul-double v6, v6, v4

    double-to-int v0, v6

    :try_start_0
    invoke-static {v8, v9, v0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-static {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->access$300(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D

    move-result-wide v0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->access$400(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D

    move-result-wide v4

    cmpl-double v6, v0, v4

    if-lez v6, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->this$0:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-static {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->access$400(Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;)D

    move-result-wide v0

    :cond_1
    :goto_1
    iget-boolean v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->paused:Z

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->checkResize()V

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->drawFrame(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->invalidate:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->invalidate:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-wide v0, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->die()V

    return-void
.end method

.method public updateSize(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resizeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->resize:Z

    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->width:I

    iput p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2$SpoilerThread;->height:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
