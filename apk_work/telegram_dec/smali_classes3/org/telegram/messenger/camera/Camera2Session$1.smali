.class Lorg/telegram/messenger/camera/Camera2Session$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/Camera2Session;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/Camera2Session;

.field final synthetic val$cameraId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$X1MvgBfDdLods1D8K4eB_2qT3-I(Lorg/telegram/messenger/camera/Camera2Session$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/camera/Camera2Session$1;->lambda$onError$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/camera/Camera2Session;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session$1;->this$0:Lorg/telegram/messenger/camera/Camera2Session;

    iput-object p2, p0, Lorg/telegram/messenger/camera/Camera2Session$1;->val$cameraId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onError$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session$1;->this$0:Lorg/telegram/messenger/camera/Camera2Session;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/Camera2Session;->access$302(Lorg/telegram/messenger/camera/Camera2Session;Z)Z

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session$1;->this$0:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-static {v0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->access$002(Lorg/telegram/messenger/camera/Camera2Session;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera2Session camera #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session$1;->val$cameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session$1;->this$0:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-static {v0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->access$002(Lorg/telegram/messenger/camera/Camera2Session;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera2Session camera #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session$1;->val$cameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " received "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    new-instance p1, Lorg/telegram/messenger/camera/Camera2Session$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/camera/Camera2Session$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/camera/Camera2Session$1;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session$1;->this$0:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-static {v0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->access$002(Lorg/telegram/messenger/camera/Camera2Session;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session$1;->this$0:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/camera/Camera2Session;->access$102(Lorg/telegram/messenger/camera/Camera2Session;J)J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera2Session camera #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/camera/Camera2Session$1;->val$cameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " opened"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/messenger/camera/Camera2Session$1;->this$0:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-static {p1}, Lorg/telegram/messenger/camera/Camera2Session;->access$200(Lorg/telegram/messenger/camera/Camera2Session;)V

    return-void
.end method
