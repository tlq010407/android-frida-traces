.class abstract Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$Api23;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23"
.end annotation


# direct methods
.method public static setAudioSinkPreferredDevice(Lcom/google/android/exoplayer2/audio/AudioSink;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DecoderAudioRenderer$Api23$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/AudioDeviceInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method
