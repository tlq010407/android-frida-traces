.class abstract Lcom/google/android/exoplayer2/upstream/FileDataSource$Api21;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21"
.end annotation


# direct methods
.method static synthetic access$000(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$Api21;->isPermissionError(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private static isPermissionError(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline52;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline53;->m(Ljava/lang/Object;)Landroid/system/ErrnoException;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline54;->m(Landroid/system/ErrnoException;)I

    move-result p0

    invoke-static {}, Lcom/google/android/exoplayer2/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline55;->m()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
