.class public abstract synthetic Lorg/webrtc/audio/LowLatencyAudioBufferManager$$ExternalSyntheticApiModelOutline2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/media/AudioTrack;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setBufferSizeInFrames(I)I

    move-result p0

    return p0
.end method
