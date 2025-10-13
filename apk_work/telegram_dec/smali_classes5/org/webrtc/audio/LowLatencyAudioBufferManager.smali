.class Lorg/webrtc/audio/LowLatencyAudioBufferManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LowLatencyAudioBufferManager"


# instance fields
.field private bufferIncreaseCounter:I

.field private keepLoweringBufferSize:Z

.field private prevUnderrunCount:I

.field private ticksUntilNextDecrease:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->prevUnderrunCount:I

    const/16 v1, 0xa

    iput v1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->ticksUntilNextDecrease:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->keepLoweringBufferSize:Z

    iput v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->bufferIncreaseCounter:I

    return-void
.end method


# virtual methods
.method public maybeAdjustBufferSize(Landroid/media/AudioTrack;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    invoke-static {p1}, Lorg/webrtc/audio/LowLatencyAudioBufferManager$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack;)I

    move-result v0

    iget v1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->prevUnderrunCount:I

    const/16 v2, 0xa

    const-string v3, "LowLatencyAudioBufferManager"

    const-string v4, " to "

    if-le v0, v1, :cond_2

    iget v1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->bufferIncreaseCounter:I

    const/4 v5, 0x5

    if-ge v1, v5, :cond_0

    invoke-static {p1}, Lorg/webrtc/audio/LowLatencyAudioBufferManager$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack;)I

    move-result v1

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackRate()I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    add-int/2addr v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Underrun detected! Increasing AudioTrack buffer size from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v5}, Lorg/webrtc/audio/LowLatencyAudioBufferManager$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/AudioTrack;I)I

    iget p1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->bufferIncreaseCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->bufferIncreaseCounter:I

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->keepLoweringBufferSize:Z

    iput v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->prevUnderrunCount:I

    :cond_1
    :goto_0
    iput v2, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->ticksUntilNextDecrease:I

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->keepLoweringBufferSize:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->ticksUntilNextDecrease:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->ticksUntilNextDecrease:I

    if-gtz v0, :cond_3

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackRate()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    invoke-static {p1}, Lorg/webrtc/audio/LowLatencyAudioBufferManager$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack;)I

    move-result v1

    sub-int v5, v1, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lowering AudioTrack buffer size from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/webrtc/audio/LowLatencyAudioBufferManager$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/AudioTrack;I)I

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
