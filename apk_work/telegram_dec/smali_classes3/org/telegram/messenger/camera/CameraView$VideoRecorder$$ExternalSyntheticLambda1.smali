.class public final synthetic Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;

.field public final synthetic f$2:Landroid/media/MediaCodec$BufferInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda1;->f$1:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda1;->f$2:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/camera/CameraView$VideoRecorder;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda1;->f$1:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView$VideoRecorder$$ExternalSyntheticLambda1;->f$2:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraView$VideoRecorder;->$r8$lambda$a-fDhP0tE7Brvxij8uOuQh6p6Fc(Lorg/telegram/messenger/camera/CameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method
