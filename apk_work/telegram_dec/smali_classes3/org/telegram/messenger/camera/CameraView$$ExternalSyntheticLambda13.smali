.class public final synthetic Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/camera/CameraView;

.field public final synthetic f$1:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/messenger/camera/CameraView;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    iput p3, p0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda13;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/messenger/camera/CameraView$CameraGLThread;

    iget v2, p0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda13;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraView;->$r8$lambda$UdZ7F4ji71rhg4tGKPAoooal4xs(Lorg/telegram/messenger/camera/CameraView;Lorg/telegram/messenger/camera/CameraView$CameraGLThread;I)V

    return-void
.end method
