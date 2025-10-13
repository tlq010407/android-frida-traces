.class public Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
.super Lorg/telegram/messenger/DispatchQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraGLThread"
.end annotation


# instance fields
.field private final DO_FLIP:I

.field private final DO_REINIT_MESSAGE:I

.field private final DO_RENDER_MESSAGE:I

.field private final DO_SETSESSION_MESSAGE:I

.field private final DO_SHUTDOWN_MESSAGE:I

.field private cameraId:Ljava/lang/Integer;

.field private final cameraSurface:[Landroid/graphics/SurfaceTexture;

.field private currentSession:Ljava/lang/Object;

.field private drawProgram:I

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private initied:Z

.field private positionHandle:I

.field private recording:Z

.field private surfaceHeight:I

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private surfaceWidth:I

.field private textureHandle:I

.field private textureMatrixHandle:I

.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;

.field private vertexMatrixHandle:I


# direct methods
.method public static synthetic $r8$lambda$6DGdA0SQhCcL7I6tP2hFanZC7oY(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$handleMessage$3(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9WREmknsN3ZHWX_IMKWQForbZhI(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$onDraw$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$qcoCSU53TlHuax00Yf2ZD5lGt-8(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;ILandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$initGL$0(ILandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$voqW9208L1zjjNNi0q4KqWi-DQg(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$onDraw$2()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const-string p1, "CameraGLThread"

    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->DO_RENDER_MESSAGE:I

    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->DO_SHUTDOWN_MESSAGE:I

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->DO_REINIT_MESSAGE:I

    const/4 p1, 0x3

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->DO_SETSESSION_MESSAGE:I

    const/4 p1, 0x4

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->DO_FLIP:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    iput p4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    return-void
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    return-void
.end method

.method private initGL()Z
    .locals 15

    const/4 v0, 0x4

    const/16 v1, 0x3038

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_0

    const-string v7, "InstantCamera start init gl"

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v7

    check-cast v7, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v7, v8, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglGetDisplay failed "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    new-array v8, v2, [I

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v9, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v7

    if-nez v7, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglInitialize failed "

    goto :goto_0

    :cond_2
    new-array v13, v3, [I

    new-array v14, v3, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v7, 0xf

    new-array v9, v7, [I

    fill-array-data v9, :array_0

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v11, 0x1

    move-object v10, v14

    move-object v12, v13

    invoke-interface/range {v7 .. v12}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v7

    if-nez v7, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglChooseConfig failed "

    goto :goto_0

    :cond_3
    aget v7, v13, v6

    if-lez v7, :cond_e

    aget-object v7, v14, v6

    const/16 v8, 0x3098

    filled-new-array {v8, v2, v1}, [I

    move-result-object v1

    iget-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v8, v9, v7, v10, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v1, :cond_4

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglCreateContext failed "

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    instance-of v8, v1, Landroid/graphics/SurfaceTexture;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v7, v1, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_d

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v7, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v7, v8, v1, v1, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglMakeCurrent failed "

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1600(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    div-float v1, v5, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v1, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v8}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v8

    div-float/2addr v5, v8

    div-float/2addr v5, v7

    const/16 v7, 0xc

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float v9, v8, v1

    sub-float v11, v8, v5

    add-float/2addr v1, v8

    add-float/2addr v5, v8

    new-array v4, v4, [F

    aput v9, v4, v6

    aput v11, v4, v3

    aput v1, v4, v2

    const/4 v8, 0x3

    aput v11, v4, v8

    aput v9, v4, v0

    const/4 v0, 0x5

    aput v5, v4, v0

    const/4 v0, 0x6

    aput v1, v4, v0

    const/4 v0, 0x7

    aput v5, v4, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-direct {v1, v0, v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1802(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2002(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2102(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2200(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v0

    invoke-static {v0, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v1, 0x8b31

    const-string v4, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2300(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v4, 0x8b30

    const-string v5, "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$2300(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v3, [I

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const v4, 0x8b82

    invoke-static {v1, v4, v0, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, v0, v6

    if-nez v0, :cond_9

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    const-string v0, "InstantCamera failed link shader"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    goto :goto_2

    :cond_9
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->vertexMatrixHandle:I

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureMatrixHandle:I

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v0

    invoke-static {v0, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_3
    if-ge v6, v2, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v6

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v4, 0x2601

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v4, 0x812f

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v4

    aget v4, v4, v6

    invoke-direct {v1, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v0, v0, v6

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v6}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v1, v1, v6

    invoke-static {v0, v6, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2600(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V

    add-int/2addr v6, v3

    goto :goto_3

    :cond_a
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_b

    const-string v0, "InstantCamera gl initied"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_b
    return v3

    :cond_c
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_f

    const-string v0, "InstantCamera failed creating shader"

    goto/16 :goto_1

    :cond_d
    :goto_4
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera createWindowSurface failed "

    goto/16 :goto_0

    :cond_e
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_f

    const-string v0, "InstantCamera eglConfig not initialized"

    goto/16 :goto_1

    :cond_f
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v6

    nop

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
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$handleMessage$3(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->requestRender(ZZ)V

    return-void
.end method

.method private synthetic lambda$initGL$0(ILandroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2702(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->requestRender(ZZ)V

    return-void
.end method

.method private synthetic lambda$onDraw$1()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$4000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$onDraw$2()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3800(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3902(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3800(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3902(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method private onDraw(Ljava/lang/Integer;ZZ)V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initied:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "eglMakeCurrent failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_4
    const/4 v1, 0x1

    if-eqz p3, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1802(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$2800(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2900(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2902(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$3000(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v4

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Ljava/lang/Object;

    instance-of v4, v3, Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v4, :cond_9

    check-cast v3, Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentOrientation()I

    move-result v3

    goto :goto_1

    :cond_9
    instance-of v4, v3, Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v4, :cond_a

    check-cast v3, Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Camera2Session;->getCurrentOrientation()I

    move-result v3

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x5a

    if-eq v3, v4, :cond_b

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_c

    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1600(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$1602(Lorg/telegram/ui/Components/InstantCameraView;F)F

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1702(Lorg/telegram/ui/Components/InstantCameraView;F)F

    :cond_c
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$3100(Lorg/telegram/ui/Components/InstantCameraView;)V

    goto :goto_2

    :cond_d
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    if-nez v3, :cond_e

    if-nez p2, :cond_f

    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p2

    if-ne p2, v1, :cond_11

    if-eqz p3, :cond_11

    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    aget-object p3, p3, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$3200(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p1

    goto :goto_3

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {p2, p3, p1, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p2

    aget-object p1, p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2200(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p2

    aget p1, p1, p2

    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v4, 0x3

    const/16 v5, 0x1406

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v8

    const/16 v7, 0x8

    const/4 v4, 0x2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureMatrixHandle:I

    iget-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p3}, Lorg/telegram/ui/Components/InstantCameraView;->access$2200(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object p3

    invoke-static {p1, v1, v0, p3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->vertexMatrixHandle:I

    iget-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p3}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object p3

    invoke-static {p1, v1, v0, p3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x5

    const/4 p3, 0x4

    invoke-static {p1, v0, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    if-eqz v2, :cond_12

    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method private updateScale()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    int-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1602(Lorg/telegram/ui/Components/InstantCameraView;F)F

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1702(Lorg/telegram/ui/Components/InstantCameraView;F)F

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1602(Lorg/telegram/ui/Components/InstantCameraView;F)F

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1702(Lorg/telegram/ui/Components/InstantCameraView;F)F

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1602(Lorg/telegram/ui/Components/InstantCameraView;F)F

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera camera scaleX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1600(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " scaleY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aput-object v1, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2702(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v4, 0x3059

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v2

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aput v3, v0, v2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v4

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    invoke-static {v4, v0, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aput v3, v0, v4

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_8
    return-void
.end method

.method public flipSurfaces()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->requestRender(ZZ)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    iget v11, v1, Landroid/os/Message;->what:I

    if-eqz v11, :cond_e

    const/4 v12, 0x0

    if-eq v11, v10, :cond_a

    const/16 v13, 0x20

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f000000    # 0.5f

    if-eq v11, v9, :cond_6

    if-eq v11, v7, :cond_1

    if-eq v11, v6, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x1

    invoke-static {v1, v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$1502(Lorg/telegram/ui/Components/InstantCameraView;I)I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1600(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    div-float v1, v15, v1

    div-float/2addr v1, v14

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v11

    div-float/2addr v15, v11

    div-float/2addr v15, v14

    sub-float v11, v16, v1

    sub-float v12, v16, v15

    add-float v1, v1, v16

    add-float v15, v15, v16

    new-array v5, v5, [F

    aput v11, v5, v8

    aput v12, v5, v10

    aput v1, v5, v9

    aput v12, v5, v7

    aput v11, v5, v6

    aput v15, v5, v4

    aput v1, v5, v3

    aput v15, v5, v2

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2102(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3

    :cond_1
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_2

    const-string v2, "InstantCamera set gl renderer session"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Ljava/lang/Object;

    if-ne v2, v1, :cond_5

    instance-of v1, v2, Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v1, :cond_3

    check-cast v2, Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result v1

    goto :goto_1

    :cond_3
    instance-of v1, v2, Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v1, :cond_4

    check-cast v2, Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Camera2Session;->getWorldAngle()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v2

    invoke-static {v2, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz v1, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v3

    int-to-float v5, v1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/16 :goto_3

    :cond_5
    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v13, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v11, v13, v13, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstantCamera eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v1, v1, v8

    if-eqz v1, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$3300(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v1, v1, v8

    invoke-virtual {v1, v12}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v2

    aget v2, v2, v8

    aput v2, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$3502(Lorg/telegram/ui/Components/InstantCameraView;F)F

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v1

    aput v8, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$3602(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v2

    aget-object v2, v2, v8

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$3702(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/InstantCameraView;->access$2902(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v1

    invoke-static {v10, v1, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v1

    aget v1, v1, v8

    const v2, 0x8d65

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v11, 0x2601

    invoke-static {v2, v1, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    invoke-static {v2, v1, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v11, 0x812f

    invoke-static {v2, v1, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v2, v1, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v11

    aget v11, v11, v8

    invoke-direct {v2, v11}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    aput-object v2, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v1, v1, v8

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:[Landroid/graphics/SurfaceTexture;

    aget-object v2, v2, v8

    invoke-static {v1, v8, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2600(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1600(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    div-float v1, v15, v1

    div-float/2addr v1, v14

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v2

    div-float/2addr v15, v2

    div-float/2addr v15, v14

    sub-float v2, v16, v1

    sub-float v11, v16, v15

    add-float v1, v1, v16

    add-float v15, v15, v16

    new-array v5, v5, [F

    aput v2, v5, v8

    aput v11, v5, v10

    aput v1, v5, v9

    aput v11, v5, v7

    aput v2, v5, v6

    aput v15, v5, v4

    aput v1, v5, v3

    const/4 v1, 0x7

    aput v15, v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2102(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    if-eqz v2, :cond_d

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v2, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    if-eqz v3, :cond_b

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    iget v2, v2, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->ttl:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_d

    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v2

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    if-eqz v4, :cond_c

    move-object v12, v1

    check-cast v12, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    :cond_c
    invoke-virtual {v2, v3, v12}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->stopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    :cond_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_3

    :cond_e
    iget v2, v1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_2

    :cond_f
    const/4 v3, 0x0

    :goto_2
    and-int/2addr v1, v9

    if-eqz v1, :cond_10

    const/4 v8, 0x1

    :cond_10
    invoke-direct {v0, v2, v3, v8}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->onDraw(Ljava/lang/Integer;ZZ)V

    :cond_11
    :goto_3
    return-void
.end method

.method public reinitForNewCamera()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method public requestRender(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/2addr p1, p2

    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initied:Z

    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    return-void
.end method

.method public setCurrentSession(Lorg/telegram/messenger/camera/Camera2Session;)V
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method public setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method public shutdown(IZIIJ)V
    .locals 10

    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v9, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    const-wide/16 v7, 0x0

    move-object v1, v9

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;-><init>(ZIIJJ)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, p1

    invoke-virtual {v0, v1, p1, v2, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    move-object v1, p0

    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-void
.end method
