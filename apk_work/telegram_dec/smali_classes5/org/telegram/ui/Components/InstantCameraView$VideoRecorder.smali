.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoRecorder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;
    }
.end annotation


# instance fields
.field private alphaHandle:I

.field private audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private audioDiff:J

.field private audioEncoder:Landroid/media/MediaCodec;

.field private audioFirst:J

.field private audioLast:J

.field private audioLastDt:J

.field private audioRecorder:Landroid/media/AudioRecord;

.field private audioStartTime:J

.field private audioStopedByTime:Z

.field private audioTrackIndex:I

.field private blendEnabled:Z

.field private buffers:Ljava/util/concurrent/ArrayBlockingQueue;

.field private buffersToWrite:Ljava/util/ArrayList;

.field private currentTimestamp:J

.field private desyncTime:J

.field private drawProgram:I

.field private eglConfig:Landroid/opengl/EGLConfig;

.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;

.field private eglSurface:Landroid/opengl/EGLSurface;

.field private fileToWrite:Ljava/io/File;

.field fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

.field private firstEncode:Z

.field private firstVideoFrameSincePause:Z

.field private frameCount:I

.field private generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

.field private volatile handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

.field private keyframeThumbs:Ljava/util/ArrayList;

.field private lastCameraId:Ljava/lang/Integer;

.field private lastCommitedFrameTime:J

.field private lastTimestamp:J

.field private mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

.field private overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

.field private volatile pauseRecorder:Z

.field private positionHandle:I

.field private prependHeaderSize:I

.field private prevAudioLast:J

.field prevTimestamp:J

.field private prevVideoLast:J

.field private previewSizeHandle:I

.field public volatile ready:Z

.field private recorderRunnable:Ljava/lang/Runnable;

.field private resolutionHandle:I

.field private volatile running:Z

.field private volatile sendWhenDone:I

.field private volatile sendWhenDoneOptions:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

.field private sentMedia:Z

.field private sharedEglContext:Landroid/opengl/EGLContext;

.field private skippedFirst:Z

.field private skippedTime:J

.field private started:Z

.field private surface:Landroid/view/Surface;

.field private final sync:Ljava/lang/Object;

.field private texelSizeHandle:I

.field private textureHandle:I

.field private textureMatrixHandle:I

.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;

.field private vertexMatrixHandle:I

.field private videoBitrate:I

.field private videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private videoConvertFirstWrite:Z

.field private videoDiff:J

.field private videoEncoder:Landroid/media/MediaCodec;

.field private videoFile:Ljava/io/File;

.field private videoFirst:J

.field private videoHeight:I

.field private videoLast:J

.field private videoLastDt:J

.field private videoTrackIndex:I

.field private videoWidth:I

.field private writingToDifferentFile:Z

.field private zeroTimeStamps:I


# direct methods
.method public static synthetic $r8$lambda$-yra1EXos-GS7UBw1BfSp1VDxTA(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$6D7tUMQz6izQmWbXprYQRTx2sEA(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$stopRecording$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$6iLVWvA00gN-O2SeVqJkO_Jk3ak(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handlePauseRecording$4(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BHa5ryb2zIPA0DUEkh96P-8VFiM(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$prepareEncoder$13(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$KC4DOwufJIEDTvziuNYs_ny8LYc(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleVideoFrameAvailable$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$O3RmmscIQ3vkWWo-ZAsHaxPzCJc(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$drainEncoder$15(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PvR5gD-p0JGFKYftnV3ZirPNgDU(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;Lorg/telegram/messenger/VideoEditedInfo;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$8(Lorg/telegram/ui/Components/InstantCameraView$SendOptions;Lorg/telegram/messenger/VideoEditedInfo;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0rO08-UakWF_Sm4lRrbvr4ip1M(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$6(Lorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X3nxuVBC908E97B_GOcIOSPBve8(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handlePauseRecording$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$YQnemzqNWFgWYTo5NkMiJ-N0G6k(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZCnSHQyFRoHXLt-nY0_vUKj2UuE(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$drainEncoder$14(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eeRnEp1_Bpi66rXai6Pawci4M4g(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$startRecording$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$frBW4yr9VosYyIwua_N43fNVnck(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$10(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jt73QWptR9wRRlNxCHmkJW7gVRk(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$lARETV4vP6O7a069DSrAZEwmMlM(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleStopRecording$7(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qnmNEzcrVLz_MxGN2Wvaoy0zQbk(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lambda$handleVideoFrameAvailable$3()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 4

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 p1, -0x5

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLastDt:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->started:Z

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prepareEncoder(Z)V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleStopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handlePauseRecording()V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleResumeRecording()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;JLjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleVideoFrameAvailable(JLjava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$SendOptions;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDoneOptions:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    return-object p0
.end method

.method private createKeyframeThumb()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    rem-int/lit8 v0, v0, 0x21

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$GenerateKeyframeThumbTask;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$1;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private didWriteData(Ljava/io/File;JZ)V
    .locals 13

    move-object v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$6500(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v4

    const/high16 v8, 0x2000000

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    if-eqz p4, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$6500(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v3

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$6500(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v3

    if-eqz p4, :cond_1

    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_1
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-wide v11, v4

    goto :goto_2

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1

    :goto_2
    move-wide v9, p2

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V

    :cond_2
    return-void
.end method

.method private handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 19

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStopedByTime:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_a

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    const-string v0, "InstantCamera video record not yet started"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v0, v3, :cond_7

    if-nez v0, :cond_4

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v8, v0

    sub-long/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v8, 0x989680

    cmp-long v10, v3, v8

    if-lez v10, :cond_4

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v9, v8, v0

    sub-long/2addr v3, v9

    iput-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    iput-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera detected desync between audio and video "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    iget-object v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v8, v3, v0

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    const-string v10, " timestamp = "

    cmp-long v11, v8, v3

    if-ltz v11, :cond_5

    iput v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    iput-wide v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstantCamera found first audio frame at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v8, v4, v0

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstantCamera ignore first audio frame at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v8, v4, v0

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera first audio frame not found, removing buffers "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto/16 :goto_0

    :cond_9
    return-void

    :cond_a
    :goto_3
    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_b

    iget-object v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v3, v0, v3

    iput-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    :cond_b
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_c

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    :cond_c
    :try_start_0
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    const/4 v0, 0x0

    :cond_d
    :goto_5
    if-eqz v2, :cond_1c

    :try_start_1
    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ltz v9, :cond_d

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v4, v8, :cond_e

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-static {v4, v9}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_e
    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_6
    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    iget v10, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v11, v8, v10

    :goto_7
    iget v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-gt v10, v8, :cond_12

    const/4 v13, 0x0

    if-ge v10, v8, :cond_15

    iget-object v8, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v14, v8, v10

    iget-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    sub-long/2addr v14, v5

    iget-boolean v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-nez v5, :cond_13

    iget-object v5, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v16, v5, v10

    iget-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->desyncTime:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x3938700

    cmp-long v18, v16, v5

    if-gez v18, :cond_f

    cmp-long v5, v14, v7

    if-ltz v5, :cond_13

    :cond_f
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_11

    cmp-long v0, v14, v7

    if-ltz v0, :cond_10

    const-string v0, "InstantCamera stop audio encoding because recorded time more than 60s"

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InstantCamera stop audio encoding because of stoped video recording at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aget-wide v5, v2, v10

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " last video "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_11
    iput-boolean v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStopedByTime:Z

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v2, v13

    const/4 v0, 0x1

    :cond_12
    const/4 v5, 0x0

    :goto_9
    const-wide/16 v6, 0x0

    goto :goto_c

    :cond_13
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    iget-object v6, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aget v6, v6, v10

    if-ge v5, v6, :cond_14

    iput v10, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    const/4 v5, 0x0

    goto :goto_a

    :cond_14
    iget-object v5, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v10

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_15
    iget v5, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    sub-int/2addr v5, v3

    if-lt v10, v5, :cond_18

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz v5, :cond_16

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    :cond_16
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto :goto_b

    :cond_17
    const/4 v5, 0x0

    iget-boolean v0, v2, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    :goto_a
    move-object v2, v13

    goto :goto_9

    :cond_18
    const/4 v5, 0x0

    :goto_b
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    goto/16 :goto_7

    :goto_c
    cmp-long v8, v11, v6

    if-nez v8, :cond_19

    move-wide v11, v6

    goto :goto_d

    :cond_19
    iget-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    sub-long/2addr v11, v13

    :goto_d
    iget-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    cmp-long v8, v13, v6

    if-ltz v8, :cond_1a

    add-long/2addr v11, v13

    :cond_1a
    move-wide v12, v11

    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    sub-long v6, v12, v6

    iput-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLastDt:J

    iput-wide v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    iget-object v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v11

    if-eqz v0, :cond_1b

    const/4 v4, 0x4

    const/4 v14, 0x4

    goto :goto_e

    :cond_1b
    const/4 v14, 0x0

    :goto_e
    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    goto/16 :goto_5

    :goto_f
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1c
    return-void
.end method

.method private handlePauseRecording()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5802(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)Ljava/io/File;

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v2

    invoke-static {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5802(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)Ljava/io/File;

    :try_start_0
    const-string v1, "InstantCamera handlePauseRecording drain encoders"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v3, :cond_1

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleResumeRecording()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    return-void
.end method

.method private handleStopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-nez v3, :cond_3

    const-string v1, "InstantCamera handleStopRecording running=false"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDoneOptions:Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    return-void

    :cond_3
    :try_start_0
    const-string v3, "InstantCamera handleStopRecording drain encoders"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setBluetoothScoOn(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$5802(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)Ljava/io/File;

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v3, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v5, v5, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v5, :cond_7

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :try_start_3
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_7
    :try_start_4
    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    const-string v3, "InstantCamera handleStopRecording finish muxer"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    :try_start_5
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InstantCamera copying fileToWrite to videoFile, deleting videoFile error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "InstantCamera unable to rename file, try move file"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :try_start_6
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-static {v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string v3, "InstantCamera unable to move file"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_9
    :goto_6
    const/4 v3, 0x2

    if-eq p1, v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v3}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InstantCamera handleStopRecording send "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    :try_start_7
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    :try_start_8
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    :catchall_1
    nop

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_d

    if-ne p1, v1, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    if-nez v0, :cond_d

    :cond_c
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_d
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p1, p2, :cond_f

    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, p2, p2, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    :cond_f
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->exit()V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->destroy()V

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    :cond_10
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleVideoFrameAvailable(JLjava/lang/Integer;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-nez v0, :cond_18

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2700(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    iput-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    cmp-long v2, v5, v9

    if-ltz v2, :cond_3

    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    cmp-long v2, v11, v7

    if-nez v2, :cond_2

    sub-long v5, p1, v5

    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    :cond_2
    iget-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    sub-long v5, p1, v5

    goto :goto_2

    :cond_3
    move-wide/from16 v5, p1

    :goto_2
    if-nez v0, :cond_5

    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    sub-long v9, v5, v11

    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    move-wide v7, v9

    goto :goto_4

    :cond_5
    :goto_3
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    cmp-long v0, v11, v9

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstVideoFrameSincePause:Z

    if-nez v0, :cond_8

    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    sub-long v11, v5, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-wide v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    sub-long/2addr v13, v7

    const-wide/32 v7, 0xf4240

    mul-long v13, v13, v7

    cmp-long v0, v11, v9

    if-ltz v0, :cond_6

    sub-long v7, v13, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v17, 0x5f5e100

    cmp-long v0, v7, v17

    if-lez v0, :cond_7

    :cond_6
    move-wide v11, v13

    :cond_7
    cmp-long v0, v11, v9

    if-gez v0, :cond_9

    :cond_8
    move-wide v11, v9

    :cond_9
    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    move-wide v7, v9

    move-wide v9, v11

    :goto_4
    iput-boolean v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstVideoFrameSincePause:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    if-nez v0, :cond_b

    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    add-long/2addr v11, v9

    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    const-wide/32 v13, 0xbebc200

    cmp-long v0, v11, v13

    if-gez v0, :cond_a

    return-void

    :cond_a
    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    :cond_b
    iget-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    add-long/2addr v11, v9

    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    iget-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    const-wide/16 v11, -0x1

    cmp-long v0, v9, v11

    if-nez v0, :cond_c

    const-wide/16 v9, 0x3e8

    div-long v9, v5, v9

    iput-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstantCamera first video frame was at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_c
    iget-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    sub-long v9, v5, v9

    iput-wide v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLastDt:J

    iput-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v14

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$3600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v2

    if-eqz v14, :cond_17

    if-nez v0, :cond_d

    goto/16 :goto_7

    :cond_d
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->bind()V

    :cond_e
    iget v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v5, 0x84c0

    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v15, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/16 v16, 0x3

    const/16 v17, 0x1406

    move-object/from16 v20, v0

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v10, 0x2

    const/16 v11, 0x1406

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v5

    invoke-static {v0, v4, v3, v5, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resolutionHandle:I

    iget v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    int-to-float v5, v5

    iget v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    int-to-float v6, v6

    invoke-static {v0, v5, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v3

    const/4 v5, 0x4

    const/4 v6, 0x5

    const v9, 0x8d65

    const/16 v10, 0xbe2

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v0, :cond_11

    if-eqz v2, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3200(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    if-nez v0, :cond_f

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnable(I)V

    iput-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    :cond_f
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    if-eqz v0, :cond_10

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    iget-object v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v12}, Lorg/telegram/ui/Components/InstantCameraView;->access$3700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v13}, Lorg/telegram/ui/Components/InstantCameraView;->access$3700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-static {v0, v12, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    :cond_10
    iget v15, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/16 v16, 0x2

    const/16 v17, 0x1406

    move-object/from16 v20, v2

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$3300(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v2

    invoke-static {v0, v4, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    invoke-static {v0, v11}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v3

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v3, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    if-eqz v0, :cond_12

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v2

    iget-object v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v12}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v12

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v12}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v12

    iget-object v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v13}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v0, v2, v12}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->texelSizeHandle:I

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v2

    iget-object v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v12}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v12

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v2, v12

    iget-object v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v13}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;

    move-result-object v13

    iget-object v14, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v14}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v13, v11, v13

    div-float/2addr v13, v12

    invoke-static {v0, v2, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v2

    aget v0, v0, v2

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_13

    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    iget-object v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v12}, Lorg/telegram/ui/Components/InstantCameraView;->access$2200(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v12

    invoke-static {v2, v4, v3, v12, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    iget-object v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v12}, Lorg/telegram/ui/Components/InstantCameraView;->access$3500(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v12

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v3, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_13
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->render()V

    iget-boolean v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    if-eqz v0, :cond_14

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-wide v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    invoke-static {v0, v2, v5, v6}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->createKeyframeThumb()V

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    add-int/2addr v0, v4

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v3

    if-eqz v0, :cond_15

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3500(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    cmpg-float v0, v0, v11

    if-gez v0, :cond_15

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3200(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    long-to-float v2, v7

    const v5, 0x4d3ebc20    # 2.0E8f

    div-float/2addr v2, v5

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$3516(Lorg/telegram/ui/Components/InstantCameraView;F)F

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3500(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_16

    invoke-static {v10}, Landroid/opengl/GLES20;->glDisable(I)V

    iput-boolean v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v11}, Lorg/telegram/ui/Components/InstantCameraView;->access$3502(Lorg/telegram/ui/Components/InstantCameraView;F)F

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aput v3, v0, v3

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2900(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2902(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_15
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2900(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2902(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda10;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    goto :goto_5

    :cond_16
    :goto_6
    return-void

    :cond_17
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera handleVideoFrameAvailable skip frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_18
    :goto_8
    return-void
.end method

.method private synthetic lambda$drainEncoder$14(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, p2, v4}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide p1, v0

    :goto_0
    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$6600(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$drainEncoder$15(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    invoke-virtual {v3, v4, p1, p2, v0}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide p1, v1

    :goto_0
    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$6600(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$handlePauseRecording$4(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$handlePauseRecording$5()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$7200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$7300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$7400(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$7500(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$7600(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    const/16 v2, 0x19

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const/16 v3, 0x168

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setupVideoPlayer(Ljava/io/File;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6900(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5400(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    aput-object v4, v7, v1

    const/4 v1, 0x2

    aput-object v5, v7, v1

    const/4 v1, 0x3

    aput-object v6, v7, v1

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$10(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v5, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v5}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iput-wide v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v4

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4, v7}, Lorg/telegram/ui/Components/InstantCameraView;->access$7202(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4, v7}, Lorg/telegram/ui/Components/InstantCameraView;->access$7302(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4, v7}, Lorg/telegram/ui/Components/InstantCameraView;->access$7402(Lorg/telegram/ui/Components/InstantCameraView;[B)[B

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4, v7}, Lorg/telegram/ui/Components/InstantCameraView;->access$7502(Lorg/telegram/ui/Components/InstantCameraView;[B)[B

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-wide v10, v4, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-double v10, v10

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-wide v12, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v4, v12, v8

    if-ltz v4, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-wide v12, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    goto :goto_0

    :cond_1
    move-wide v12, v8

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-wide v14, v4, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v4, v14, v8

    if-ltz v4, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-wide v14, v4, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-wide v14, v4, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    sub-long/2addr v14, v12

    iput-wide v14, v4, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v12}, Lorg/telegram/ui/Components/InstantCameraView;->access$7600(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v12

    long-to-double v12, v12

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v14}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v14

    iget-wide v14, v14, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v10

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    double-to-long v10, v12

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    const v5, 0xf4240

    iput v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v10, 0x3e8

    cmp-long v6, v4, v8

    if-lez v6, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-wide v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    mul-long v5, v5, v10

    iput-wide v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v6, v4, v8

    if-lez v6, :cond_4

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-wide v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    mul-long v5, v5, v10

    iput-wide v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$3000(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView;->access$7600(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iput-boolean v2, v4, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$7200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$7300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$7400(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$7500(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    const/16 v5, 0x19

    iput v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v5

    const/16 v6, 0x168

    iput v6, v5, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v6, v4, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v5

    iput v6, v5, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v6, v4, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v12

    move/from16 v4, p1

    if-ne v4, v2, :cond_c

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->isInScheduleMode()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getDialogId()J

    move-result-wide v14

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0, v1, v12}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$SendOptions;Lorg/telegram/messenger/VideoEditedInfo;)V

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$7700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v18

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_6

    :cond_6
    new-instance v11, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v19, v11

    invoke-direct/range {v19 .. v30}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    if-eqz v1, :cond_7

    iget v4, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->ttl:I

    iput v4, v11, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iget-wide v4, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->effectId:J

    iput-wide v4, v11, Lorg/telegram/messenger/MediaController$MediaEditState;->effectId:J

    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v10

    if-eqz v1, :cond_9

    iget-boolean v4, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->notify:Z

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v13, 0x1

    :goto_4
    if-eqz v1, :cond_a

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->scheduleDate:I

    move v14, v3

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    :goto_5
    if-eqz v1, :cond_b

    iget-wide v8, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->stars:J

    :cond_b
    move-wide/from16 v16, v8

    const/4 v15, 0x0

    invoke-interface/range {v10 .. v17}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZJ)V

    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1, v7}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;

    goto :goto_7

    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setupVideoPlayer(Ljava/io/File;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$6900(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v4

    iput-wide v4, v12, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$5400(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v3

    aput-object v12, v8, v2

    const/4 v2, 0x2

    aput-object v6, v8, v2

    const/4 v2, 0x3

    aput-object v7, v8, v2

    invoke-virtual {v1, v4, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :goto_7
    return-void
.end method

.method private synthetic lambda$handleStopRecording$11()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sentMedia:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->notReadyYet:Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->requestRecordAudioFocus(Z)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$12()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1802(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    return-void
.end method

.method private synthetic lambda$handleStopRecording$6(Lorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iput-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$7600(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$7200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$7300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$7400(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$7500(Lorg/telegram/ui/Components/InstantCameraView;)[B

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    const/16 v4, 0x19

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    const/16 v5, 0x168

    iput v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v4

    iput v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->notReadyYet:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$3900(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->thumb:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6900(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$3902(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v16}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    if-eqz v1, :cond_0

    iget v4, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->ttl:I

    iput v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iget-wide v4, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->effectId:J

    iput-wide v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->effectId:J

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v5

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v7

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->notify:Z

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-eqz v1, :cond_3

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->scheduleDate:I

    move v9, v3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->stars:J

    :goto_3
    move-wide v11, v3

    goto :goto_4

    :cond_4
    const-wide/16 v3, 0x0

    goto :goto_3

    :goto_4
    const/4 v10, 0x0

    move-object v6, v2

    invoke-interface/range {v5 .. v12}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZJ)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$7(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$8(Lorg/telegram/ui/Components/InstantCameraView$SendOptions;Lorg/telegram/messenger/VideoEditedInfo;ZI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v14, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    if-eqz v1, :cond_0

    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->ttl:I

    iput v2, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iget-wide v2, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->effectId:J

    iput-wide v2, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->effectId:J

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    const/4 v9, 0x0

    if-nez p3, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->notify:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    if-eqz p4, :cond_3

    move/from16 v5, p4

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->scheduleDate:I

    move v5, v3

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget-wide v6, v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;->stars:J

    :goto_3
    move-wide v7, v6

    goto :goto_4

    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_3

    :goto_4
    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v14

    move-object/from16 v3, p2

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZJ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v1, v9, v9}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    return-void
.end method

.method private synthetic lambda$handleStopRecording$9()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    return-void
.end method

.method private synthetic lambda$handleVideoFrameAvailable$2()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

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

.method private synthetic lambda$handleVideoFrameAvailable$3()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

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

.method private synthetic lambda$prepareEncoder$13(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$300(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz p1, :cond_1

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$6900(Lorg/telegram/ui/Components/InstantCameraView;)J

    move-result-wide v3

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6802(Lorg/telegram/ui/Components/InstantCameraView;J)J

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$7002(Lorg/telegram/ui/Components/InstantCameraView;J)J

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$7102(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3100(Lorg/telegram/ui/Components/InstantCameraView;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5400(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startRecording$0()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$stopRecording$1()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private prepareEncoder(Z)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v0, "video/avc"

    const-string v4, "bitrate"

    const-string v5, "audio/mp4a-latm"

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setBluetoothScoOn(Z)V

    const/16 v7, 0x10

    const v8, 0xbb80

    const/4 v9, 0x2

    :try_start_0
    invoke-static {v8, v7, v9}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    if-gtz v7, :cond_0

    const/16 v7, 0xe00

    :cond_0
    const v10, 0xc000

    if-ge v10, v7, :cond_1

    div-int/lit16 v7, v7, 0x800

    add-int/2addr v7, v6

    mul-int/lit16 v10, v7, 0x1000

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_0
    iget-object v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x3

    if-ge v11, v12, :cond_2

    iget-object v12, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v13, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v13}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v6

    goto :goto_1

    :cond_2
    const-wide/16 v11, 0x0

    const-wide/16 v13, -0x1

    move-object/from16 v17, v4

    if-eqz v2, :cond_3

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    iget-wide v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLastDt:J

    add-long/2addr v3, v8

    iput-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    iget-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    iget-wide v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLastDt:J

    add-long/2addr v3, v8

    iput-wide v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    iput-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstVideoFrameSincePause:Z

    goto :goto_2

    :cond_3
    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevVideoLast:J

    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevAudioLast:J

    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    :goto_2
    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioFirst:J

    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFirst:J

    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoLast:J

    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoDiff:J

    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioLast:J

    iput-wide v13, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioDiff:J

    iput-boolean v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    iput-wide v11, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    new-instance v3, Landroid/media/AudioRecord;

    const/16 v14, 0x10

    const/4 v15, 0x2

    const/4 v12, 0x0

    const v13, 0xbb80

    move-object v11, v3

    move/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstantCamera initied audio record with channels "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sample rate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bufferSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    iput-boolean v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    const-string v4, "mime"

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sample-rate"

    const v8, 0xbb80

    invoke-virtual {v3, v4, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "channel-count"

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->roundAudioBitrate:I

    mul-int/lit16 v4, v4, 0x400

    move-object/from16 v8, v17

    invoke-virtual {v3, v8, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "max-input-size"

    const/16 v9, 0x5000

    invoke-virtual {v3, v4, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {v5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    iput-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-static {v0, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v3, "color-format"

    const v4, 0x7f000789

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    invoke-virtual {v0, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "frame-rate"

    const/16 v4, 0x1e

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "i-frame-interval"

    invoke-virtual {v0, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0, v5, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    if-nez v2, :cond_7

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->isSdCardPath(Ljava/io/File;)Z

    move-result v0

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    iput-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    const-string v4, "camera_tmp.mp4"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    iput-boolean v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    iput-boolean v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    :cond_6
    :goto_5
    new-instance v0, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v0}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileToWrite:Ljava/io/File;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    new-instance v3, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v3}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6500(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v4

    invoke-virtual {v3, v0, v4, v7}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6602(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/video/MP4Builder;->setAllowSyncFiles(Z)V

    :cond_7
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_13

    invoke-static {v7}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_12

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-static {v0, v3, v7, v3, v6}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/16 v3, 0x3098

    if-ne v0, v2, :cond_9

    const/16 v0, 0xd

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    new-array v0, v6, [Landroid/opengl/EGLConfig;

    new-array v14, v6, [I

    iget-object v8, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v11, v0

    invoke-static/range {v8 .. v15}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    const/16 v4, 0x3038

    filled-new-array {v3, v2, v4}, [I

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v8, v0, v7

    iget-object v9, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    invoke-static {v4, v8, v9, v2, v7}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    aget-object v0, v0, v7

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find a suitable EGLConfig"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_6
    new-array v0, v6, [I

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v4, v3, v0, v7}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v2, :cond_10

    const/16 v2, 0x3038

    filled-new-array {v2}, [I

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    invoke-static {v2, v3, v4, v0, v7}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_f

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "eglMakeCurrent failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->destroy()V

    iput-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    :cond_c
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;-><init>(II)V

    iput-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v2, 0x8b31

    const-string v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$2300(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v3, 0x8b30

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2300(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_e

    if-eqz v2, :cond_e

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v6, [I

    iget v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v0, v7}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, v0, v7

    if-nez v0, :cond_d

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v7, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    goto :goto_7

    :cond_d
    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "preview"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->previewSizeHandle:I

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "resolution"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resolutionHandle:I

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "alpha"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    iget v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string v2, "texelSize"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->texelSizeHandle:I

    :cond_e
    :goto_7
    return-void

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "surface already created"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EGL already set up"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_a

    :goto_9
    throw v2

    :goto_a
    goto :goto_9

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
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method private setBluetoothScoOn(Z)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    if-eqz v1, :cond_0

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v1}, Lorg/telegram/ui/Components/PermissionRequest;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    if-nez v1, :cond_2

    :cond_1
    if-nez p1, :cond_6

    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_3
    :goto_0
    if-nez p1, :cond_6

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    if-nez p1, :cond_6

    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :catch_1
    :cond_6
    :goto_2
    return-void
.end method

.method private setupVideoPlayer(Ljava/io/File;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v1, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v1}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1202(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3800(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "other"

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$5900(Lorg/telegram/ui/Components/InstantCameraView;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$6000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v0, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    move-result-object v4

    new-array v6, v0, [F

    aput v3, v6, v5

    invoke-static {v4, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$6200(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Paint;

    move-result-object v4

    sget-object v6, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    filled-new-array {v5}, [I

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView;->access$6300(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;

    move-result-object v6

    new-array v7, v0, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v5

    invoke-static {v6, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v5

    aput-object v3, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v2, v6, v0

    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p1, v1, :cond_1

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    :cond_1
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    return-void
.end method


# virtual methods
.method public drainEncoder(Z)V
    .locals 17

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const-string v5, " was null"

    const-string v6, "encoderOutputBuffer "

    const/4 v7, -0x2

    const/4 v8, -0x3

    const-wide/16 v9, 0x0

    const/4 v11, -0x5

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v4, v12, :cond_2

    if-eqz p1, :cond_10

    iget-boolean v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-eqz v4, :cond_20

    goto/16 :goto_8

    :cond_2
    if-ne v4, v8, :cond_3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v3, :cond_20

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v15, "csd-1"

    const-string v2, "csd-0"

    if-ne v4, v7, :cond_4

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    iget v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    if-ne v5, v11, :cond_20

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v5, v4, v14}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    const-string v5, "prepend-sps-pps-to-idr-frames"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v13, :cond_20

    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v4, v15}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prependHeaderSize:I

    goto/16 :goto_e

    :cond_4
    if-ltz v4, :cond_20

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v3, :cond_5

    aget-object v7, v1, v4

    goto :goto_2

    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-static {v7, v4}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_1f

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-le v12, v13, :cond_f

    iget v3, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v16, v3, 0x2

    if-nez v16, :cond_b

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prependHeaderSize:I

    if-eqz v2, :cond_6

    and-int/lit8 v15, v3, 0x1

    if-eqz v15, :cond_6

    iget v15, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v15, v2

    iput v15, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v12, v2

    iput v12, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_6
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    if-eqz v2, :cond_9

    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_9

    iget v2, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_8

    iget v2, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v2, v3, [B

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_3
    const/16 v12, 0x60

    if-ge v3, v12, :cond_8

    aget-byte v12, v2, v3

    if-nez v12, :cond_7

    add-int/lit8 v12, v3, 0x1

    aget-byte v12, v2, v12

    if-nez v12, :cond_7

    add-int/lit8 v12, v3, 0x2

    aget-byte v12, v2, v12

    if-nez v12, :cond_7

    add-int/lit8 v12, v3, 0x3

    aget-byte v12, v2, v12

    if-ne v12, v13, :cond_7

    add-int/lit8 v8, v8, 0x1

    if-le v8, v13, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v3

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v8, v3

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    iput-boolean v14, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->firstEncode:Z

    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v2, :cond_a

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v11, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v11, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda14;

    invoke-direct {v8, v0, v3, v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v7, v8, v13}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v2

    cmp-long v7, v2, v9

    if-eqz v7, :cond_f

    iget-boolean v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v7, :cond_f

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView;->access$6600(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v7, v2, v3, v14}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    goto/16 :goto_7

    :cond_b
    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    const/4 v11, -0x5

    if-ne v3, v11, :cond_f

    new-array v3, v12, [B

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v12

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v7, v13

    :goto_5
    if-ltz v7, :cond_d

    const/4 v8, 0x3

    if-le v7, v8, :cond_d

    aget-byte v8, v3, v7

    if-ne v8, v13, :cond_c

    add-int/lit8 v8, v7, -0x1

    aget-byte v8, v3, v8

    if-nez v8, :cond_c

    add-int/lit8 v8, v7, -0x2

    aget-byte v8, v3, v8

    if-nez v8, :cond_c

    add-int/lit8 v8, v7, -0x3

    aget-byte v11, v3, v8

    if-nez v11, :cond_c

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v11, v8

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v7, v3, v14, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v8

    invoke-virtual {v11, v3, v8, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    :cond_c
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_6
    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    const-string v12, "video/avc"

    invoke-static {v12, v3, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v7, :cond_e

    if-eqz v11, :cond_e

    invoke-virtual {v3, v2, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v3, v15, v11}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v2, v3, v14}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    :cond_f
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_20

    :cond_10
    :goto_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_11

    const/4 v3, -0x1

    const/4 v4, -0x3

    goto :goto_a

    :cond_11
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    if-eqz p1, :cond_1d

    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-nez v2, :cond_12

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    if-eqz v2, :cond_1d

    :cond_12
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pauseRecorder:Z

    if-eqz v2, :cond_13

    goto/16 :goto_d

    :cond_13
    const/4 v7, -0x2

    goto :goto_9

    :cond_14
    const/4 v4, -0x3

    if-ne v2, v4, :cond_15

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v2, v7, :cond_13

    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_9

    :cond_15
    const/4 v7, -0x2

    if-ne v2, v7, :cond_16

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    const/4 v11, -0x5

    if-ne v8, v11, :cond_11

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v8, v2, v13}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    goto :goto_9

    :cond_16
    const/4 v11, -0x5

    if-ltz v2, :cond_11

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v8, v12, :cond_17

    aget-object v8, v1, v2

    goto :goto_b

    :cond_17
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-static {v8, v2}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v8

    :goto_b
    if-eqz v8, :cond_1e

    iget-object v15, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_18

    iput v14, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_18
    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz v3, :cond_19

    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v15, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v11, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v11, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v11, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda15;

    invoke-direct {v11, v0, v4, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_1c

    goto :goto_c

    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    invoke-virtual {v3, v4, v8, v15, v14}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v3

    cmp-long v8, v3, v9

    if-eqz v8, :cond_1a

    iget-boolean v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->writingToDifferentFile:Z

    if-nez v8, :cond_1a

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v8}, Lorg/telegram/ui/Components/InstantCameraView;->access$6600(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-direct {v0, v8, v3, v4, v14}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;JZ)V

    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_1c

    goto :goto_c

    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_1c

    :goto_c
    invoke-virtual {v3, v2, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_1c
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_11

    :cond_1d
    :goto_d
    return-void

    :cond_1e
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    :goto_e
    const/16 v3, 0x15

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->destroy()V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->overlayHelper:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v2, :cond_2

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    if-le p1, v0, :cond_1

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_3

    const-string p1, "InstantCamera fix timestamp enabled"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->zeroTimeStamps:I

    move-wide p3, v0

    :cond_3
    :goto_0
    iput-wide p3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prevTimestamp:J

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/16 v1, 0x20

    shr-long v1, p3, v1

    long-to-int v2, v1

    long-to-int p4, p3

    const/4 p3, 0x2

    invoke-virtual {v0, p3, v2, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/Looper;->loop()V

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->started:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {v3, v2, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->started:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->roundVideoSize:I

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->roundVideoBitrate:I

    mul-int/lit16 v3, v3, 0x400

    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    iput v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz p2, :cond_1

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    new-instance p2, Ljava/lang/Thread;

    const-string v0, "TextureMovieEncoder"

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :catch_0
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    :try_start_1
    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    if-eqz p1, :cond_3

    new-instance p1, Lorg/telegram/messenger/DispatchQueue;

    const-string p2, "IVR_FileWriteQueue"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->fileWriteQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->keyframeThumbs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameCount:I

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    :cond_4
    new-instance p1, Lorg/telegram/messenger/DispatchQueue;

    const-string p2, "keyframes_thumb_queue"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->generateKeyframeThumbsQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public stopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
