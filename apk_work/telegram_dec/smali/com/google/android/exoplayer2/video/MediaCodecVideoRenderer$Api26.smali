.class abstract Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$Api26;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api26"
.end annotation


# direct methods
.method public static doesDisplaySupportDolbyVision(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$Api26$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$Api26$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/Display;)Landroid/view/Display$HdrCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$Api26$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/Display$HdrCapabilities;)[I

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v0
.end method
