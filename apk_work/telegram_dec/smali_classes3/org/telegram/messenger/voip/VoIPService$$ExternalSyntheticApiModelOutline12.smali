.class public abstract synthetic Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticApiModelOutline12;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/telecom/CallAudioState;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result p0

    return p0
.end method
