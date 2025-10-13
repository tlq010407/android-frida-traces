.class abstract Lcom/google/android/exoplayer2/drm/DrmUtil$Api21;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DrmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21"
.end annotation


# direct methods
.method public static isMediaDrmStateException(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline48;->m(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static mediaDrmStateExceptionToErrorCode(Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline49;->m(Ljava/lang/Object;)Landroid/media/MediaDrm$MediaDrmStateException;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline50;->m(Landroid/media/MediaDrm$MediaDrmStateException;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result p0

    return p0
.end method
