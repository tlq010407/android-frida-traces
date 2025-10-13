.class Lorg/telegram/ui/Components/InstantCameraView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;->showCamera(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "InstantCamera camera surface available"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$300(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    const-string v0, "InstantCamera start create thread"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {v1, v2, p1, p2, p3}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;II)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$202(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    :cond_3
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 8

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-result-object v1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->shutdown(IZIIJ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$202(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$700(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$800(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Camera2Session;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$800(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Camera2Session;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$800(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Camera2Session;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/camera/Camera2Session;->destroy(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$800(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Camera2Session;

    move-result-object v2

    aput-object v0, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v0}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->access$402(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->access$502(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$9;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->access$600(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
