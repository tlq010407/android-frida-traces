.class public final Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final bytesLoaded:J

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final responseHeaders:Ljava/util/Map;

.field public final uriAfterRedirects:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->uriAfterRedirects:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->responseHeaders:Ljava/util/Map;

    iput-wide p4, p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->bytesLoaded:J

    return-void
.end method
