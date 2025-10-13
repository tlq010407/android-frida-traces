.class Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
.super Lorg/telegram/messenger/DispatchQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanvasInternal"
.end annotation


# instance fields
.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private bufferHeight:I

.field private bufferWidth:I

.field private drawRunnable:Ljava/lang/Runnable;

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private initialized:Z

.field private volatile ready:Z

.field public safeRequestRender:Ljava/lang/Runnable;

.field private scheduledRunnable:Ljava/lang/Runnable;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/RenderView;


# direct methods
.method public static synthetic $r8$lambda$7qG-9Fc64ltnMpamgc-BHkAv5BY(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->lambda$scheduleRedraw$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$FA6VVbRbZBwch6GqyevhJ1GmFmo(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$YdRdX0FzJIp8vgnGWrhnn4rxP7U(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->lambda$shutdown$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ozHTjMukf70F7u0T6IwQMnKraWU(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;ZZ[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->lambda$getTexture$3(ZZ[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView;Landroid/graphics/SurfaceTexture;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    const-string p1, "CanvasInternal"

    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->drawRunnable:Ljava/lang/Runnable;

    new-instance p1, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->safeRequestRender:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->setCurrentContext()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->ready:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->ready:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferWidth:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferHeight:I

    return p0
.end method

.method private checkBitmap()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v2, v2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/RectF;

    iget v8, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget v9, v0, Lorg/telegram/ui/Components/Size;->height:F

    invoke-direct {v7, v5, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v6, v4, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1002(Lorg/telegram/ui/Components/Paint/RenderView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1202(Lorg/telegram/ui/Components/Paint/RenderView;Z)Z

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v2, v2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/RectF;

    iget v8, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    invoke-direct {v7, v5, v5, v8, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v6, v4, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1102(Lorg/telegram/ui/Components/Paint/RenderView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1202(Lorg/telegram/ui/Components/Paint/RenderView;Z)Z

    :cond_3
    return-void
.end method

.method private initGL()Z
    .locals 12

    const/16 v0, 0x3038

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetDisplay failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v3

    :cond_1
    const/4 v2, 0x2

    new-array v4, v2, [I

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglInitialize failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v3

    :cond_3
    const/4 v1, 0x1

    new-array v10, v1, [I

    new-array v11, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0xf

    new-array v6, v4, [I

    fill-array-data v6, :array_0

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x1

    move-object v7, v11

    move-object v9, v10

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v4

    if-nez v4, :cond_5

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglChooseConfig failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v3

    :cond_5
    aget v4, v10, v3

    if-lez v4, :cond_10

    aget-object v4, v11, v3

    const/16 v5, 0x3098

    filled-new-array {v5, v2, v0}, [I

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getParentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    goto :goto_0

    :cond_6
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v5, v6, v4, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_8

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglCreateContext failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v3

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->acquiredContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->safeRequestRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->attach(Ljava/lang/Runnable;)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    instance-of v2, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v4, v0, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_d

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_a

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v4, v0, v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v3

    :cond_c
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->setupShaders()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->checkBitmap()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1100(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/Paint/Painting;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    return v1

    :cond_d
    :goto_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWindowSurface failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v3

    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v3

    :cond_10
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_11

    const-string v0, "eglConfig not initialized"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v3

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private synthetic lambda$getTexture$3(ZZ[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;ZZZ)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->bitmap:Landroid/graphics/Bitmap;

    aput-object p1, p3, v2

    :cond_0
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->drawRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->drawRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$scheduleRedraw$1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->drawRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$shutdown$2()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private setCurrentContext()Z
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v3, 0x3059

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->destroyedContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->safeRequestRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->detach(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public getTexture(ZZ)Landroid/graphics/Bitmap;
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v7, v0, [Landroid/graphics/Bitmap;

    :try_start_0
    new-instance v8, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;ZZ[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    aget-object p1, v7, p1

    return-object p1
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->drawRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public scheduleRedraw()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setBufferSize(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferWidth:I

    iput p2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferHeight:I

    return-void
.end method

.method public shutdown()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
