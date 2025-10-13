.class public Lorg/telegram/messenger/video/audio_input/BlankAudioInput;
.super Lorg/telegram/messenger/video/audio_input/AudioInput;
.source "SourceFile"


# instance fields
.field public final durationUs:J

.field private remainingShorts:I

.field private requiredShortsForDuration:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/video/audio_input/AudioInput;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->durationUs:J

    return-void
.end method


# virtual methods
.method public getNext()S
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->remainingShorts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->remainingShorts:I

    invoke-virtual {p0}, Lorg/telegram/messenger/video/audio_input/AudioInput;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->remainingShorts:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->requiredShortsForDuration:I

    iput v0, p0, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->remainingShorts:I

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Audio input has no remaining value."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSampleRate()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public hasRemaining()Z
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->remainingShorts:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->remainingShorts:I

    return-void
.end method

.method public start(II)V
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->durationUs:J

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/messenger/video/AudioConversions;->usToShorts(JII)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->requiredShortsForDuration:I

    iput p1, p0, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;->remainingShorts:I

    return-void
.end method
