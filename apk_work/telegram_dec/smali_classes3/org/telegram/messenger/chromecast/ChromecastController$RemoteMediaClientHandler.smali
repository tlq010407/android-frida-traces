.class Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/chromecast/ChromecastController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteMediaClientHandler"
.end annotation


# instance fields
.field private attempt:I

.field public final client:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private index:I

.field private lastIdleReason:I

.field private lastMediaErrorCode:I

.field public final manager:Lcom/google/android/gms/cast/framework/SessionManager;

.field private media:Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

.field public final session:Lcom/google/android/gms/cast/framework/CastSession;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->session:Lcom/google/android/gms/cast/framework/CastSession;

    iput-object p2, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->manager:Lcom/google/android/gms/cast/framework/SessionManager;

    iput-object p3, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->client:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-void
.end method

.method private loadImpl()V
    .locals 5

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->lastMediaErrorCode:I

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->media:Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->media:Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/chromecast/ChromecastFileServer;->getHost()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->index:I

    iget-object v2, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->media:Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    invoke-virtual {v2}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->getVariationsCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->media:Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    iget v2, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->index:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->getVariation(I)Lorg/telegram/messenger/chromecast/ChromecastMedia;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/telegram/messenger/chromecast/ChromecastFileServer;->ASSET_FALLBACK_FILE:Lorg/telegram/messenger/chromecast/ChromecastMedia;

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->client:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&attempt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->attempt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/chromecast/ChromecastMedia;->buildMediaInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->setAutoplay(Z)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->build()Lcom/google/android/gms/cast/MediaLoadOptions;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->load(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaLoadOptions;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method private loadNext(Z)V
    .locals 2

    if-eqz p1, :cond_0

    :goto_0
    iget p1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->index:I

    goto :goto_1

    :cond_0
    iget p1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->attempt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->attempt:I

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->attempt:I

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "next attempt "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->lastMediaErrorCode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->index:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->attempt:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CAST_CLIENT"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->loadImpl()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->manager:Lcom/google/android/gms/cast/framework/SessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->endCurrentSession(Z)V

    return-void
.end method

.method public load(Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->media:Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->index:I

    iput p1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->attempt:I

    invoke-direct {p0}, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->loadImpl()V

    return-void
.end method

.method public onAdBreakStatusUpdated()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdBreakStatusUpdated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->session:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAST_CLIENT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMediaError(Lcom/google/android/gms/cast/MediaError;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->session:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaError;->getDetailedErrorCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaError;->getRequestId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAST_CLIENT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaError;->getDetailedErrorCode()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->lastMediaErrorCode:I

    return-void
.end method

.method public onMetadataUpdated()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMetadataUpdated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->session:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAST_CLIENT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreloadStatusUpdated()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreloadStatusUpdated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->session:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAST_CLIENT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onQueueStatusUpdated()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueueStatusUpdated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->session:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAST_CLIENT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSendingRemoteMediaRequest()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendingRemoteMediaRequest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->session:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAST_CLIENT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatusUpdated()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatusUpdated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->session:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAST_CLIENT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->client:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getIdleReason()I

    move-result v0

    iget v2, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->lastIdleReason:I

    if-eq v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idleReason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->lastIdleReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->close()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->lastMediaErrorCode:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->loadNext(Z)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public register()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->client:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->registerCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->client:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->unregisterCallback(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    return-void
.end method
