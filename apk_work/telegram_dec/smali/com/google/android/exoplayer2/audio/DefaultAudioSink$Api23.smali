.class abstract Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Api23;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23"
.end annotation


# direct methods
.method public static setPreferredDeviceOnAudioTrack(Landroid/media/AudioTrack;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioDeviceInfoApi23;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$Api23$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack;Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method
