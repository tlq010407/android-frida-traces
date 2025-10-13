.class public Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/MediaCodecVideoConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Muxer"
.end annotation


# instance fields
.field public final mediaMuxer:Landroid/media/MediaMuxer;

.field public final mp4Builder:Lorg/telegram/messenger/video/MP4Builder;

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/media/MediaMuxer;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->started:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mp4Builder:Lorg/telegram/messenger/video/MP4Builder;

    iput-object p1, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mediaMuxer:Landroid/media/MediaMuxer;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/video/MP4Builder;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->started:Z

    iput-object p1, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mp4Builder:Lorg/telegram/messenger/video/MP4Builder;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mediaMuxer:Landroid/media/MediaMuxer;

    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;Z)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mp4Builder:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public finishMovie()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mp4Builder:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getLastFrameTimestamp(ILandroid/media/MediaCodec$BufferInfo;)J
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    iget-wide p1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    return-wide p1

    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mp4Builder:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide p1

    return-wide p1

    :cond_1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    :cond_0
    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mediaMuxer:Landroid/media/MediaMuxer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean p4, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->started:Z

    if-nez p4, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const/4 p4, 0x1

    iput-boolean p4, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->started:Z

    :cond_0
    iget-object p4, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p4, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-wide v1

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->mp4Builder:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide p1

    return-wide p1

    :cond_2
    return-wide v1
.end method
