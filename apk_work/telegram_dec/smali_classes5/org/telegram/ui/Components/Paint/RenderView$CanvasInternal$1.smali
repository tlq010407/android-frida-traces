.class Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;


# direct methods
.method public static synthetic $r8$lambda$jao0a37PKsvKCwsyvclPZo8GI-M(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1800(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;->onFirstDraw()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$300(Lorg/telegram/ui/Components/Paint/RenderView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1300(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$800(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$900(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I

    move-result v2

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->render()V

    const/16 v0, 0x303

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1400(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1500(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1700(Lorg/telegram/ui/Components/Paint/RenderView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1702(Lorg/telegram/ui/Components/Paint/RenderView;Z)Z

    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$700(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$702(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
