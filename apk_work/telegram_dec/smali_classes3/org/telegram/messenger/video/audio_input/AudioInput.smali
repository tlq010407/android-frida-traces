.class public abstract Lorg/telegram/messenger/video/audio_input/AudioInput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private loopingEnabled:Z

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/video/audio_input/AudioInput;->volume:F

    return-void
.end method


# virtual methods
.method public abstract getNext()S
.end method

.method public abstract getSampleRate()I
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/audio_input/AudioInput;->volume:F

    return v0
.end method

.method public abstract hasRemaining()Z
.end method

.method public isLoopingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/video/audio_input/AudioInput;->loopingEnabled:Z

    return v0
.end method

.method public abstract release()V
.end method

.method public setVolume(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/video/audio_input/AudioInput;->volume:F

    return-void
.end method

.method public abstract start(II)V
.end method
