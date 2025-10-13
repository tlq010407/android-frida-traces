.class public Lorg/telegram/messenger/chromecast/ChromecastController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/chromecast/ChromecastController;


# instance fields
.field private final sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final state:Lorg/telegram/messenger/chromecast/ChromecastControllerState;


# direct methods
.method public static synthetic $r8$lambda$ooSm-1bHzxo-MbysiHcRg9cE-YA(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/chromecast/ChromecastController;->lambda$new$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/chromecast/ChromecastController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/messenger/chromecast/ChromecastController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    new-instance v1, Lorg/telegram/messenger/chromecast/ChromecastControllerState;

    invoke-direct {v1}, Lorg/telegram/messenger/chromecast/ChromecastControllerState;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController;->state:Lorg/telegram/messenger/chromecast/ChromecastControllerState;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController;->sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    const-class v1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/chromecast/ChromecastController;->tryInitClient(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public static eq(Lorg/telegram/messenger/chromecast/ChromecastMedia;Lorg/telegram/messenger/chromecast/ChromecastMedia;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/chromecast/ChromecastMedia;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->mediaMetadata:Lcom/google/android/gms/cast/MediaMetadata;

    iget-object v3, p1, Lorg/telegram/messenger/chromecast/ChromecastMedia;->mediaMetadata:Lcom/google/android/gms/cast/MediaMetadata;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->internalUri:Landroid/net/Uri;

    iget-object v3, p1, Lorg/telegram/messenger/chromecast/ChromecastMedia;->internalUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->externalPath:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/chromecast/ChromecastMedia;->externalPath:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->width:I

    iget v3, p1, Lorg/telegram/messenger/chromecast/ChromecastMedia;->width:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->height:I

    iget p1, p1, Lorg/telegram/messenger/chromecast/ChromecastMedia;->height:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public static eq(Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;)Z
    .locals 5

    .line 0
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->getVariationsCount()I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->getVariationsCount()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->getVariationsCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->getVariation(I)Lorg/telegram/messenger/chromecast/ChromecastMedia;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->getVariation(I)Lorg/telegram/messenger/chromecast/ChromecastMedia;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/chromecast/ChromecastController;->eq(Lorg/telegram/messenger/chromecast/ChromecastMedia;Lorg/telegram/messenger/chromecast/ChromecastMedia;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static getInstance()Lorg/telegram/messenger/chromecast/ChromecastController;
    .locals 2

    sget-object v0, Lorg/telegram/messenger/chromecast/ChromecastController;->Instance:Lorg/telegram/messenger/chromecast/ChromecastController;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/messenger/chromecast/ChromecastController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/chromecast/ChromecastController;->Instance:Lorg/telegram/messenger/chromecast/ChromecastController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/chromecast/ChromecastController;

    invoke-direct {v0}, Lorg/telegram/messenger/chromecast/ChromecastController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/chromecast/ChromecastController;->Instance:Lorg/telegram/messenger/chromecast/ChromecastController;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method private static synthetic lambda$new$0(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCastStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CAST_STATE"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tryInitClient(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/chromecast/ChromecastController;->state:Lorg/telegram/messenger/chromecast/ChromecastControllerState;

    invoke-virtual {v2}, Lorg/telegram/messenger/chromecast/ChromecastControllerState;->getClient()Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;->session:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/chromecast/ChromecastController;->state:Lorg/telegram/messenger/chromecast/ChromecastControllerState;

    new-instance v2, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;

    iget-object v3, p0, Lorg/telegram/messenger/chromecast/ChromecastController;->sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-direct {v2, p1, v3, v0}, Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;-><init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/chromecast/ChromecastControllerState;->setClient(Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;)V

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->getCastDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/chromecast/ChromecastFileServer;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/PhotoViewer;->showChromecastBulletin(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public isCasting()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController;->state:Lorg/telegram/messenger/chromecast/ChromecastControllerState;

    invoke-virtual {v0}, Lorg/telegram/messenger/chromecast/ChromecastControllerState;->getClient()Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSessionEnded(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionEnded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CAST_SESSION"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/telegram/messenger/chromecast/ChromecastController;->state:Lorg/telegram/messenger/chromecast/ChromecastControllerState;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/chromecast/ChromecastControllerState;->setClient(Lorg/telegram/messenger/chromecast/ChromecastController$RemoteMediaClientHandler;)V

    return-void
.end method

.method public bridge synthetic onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/chromecast/ChromecastController;->onSessionEnded(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionEnding(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionEnding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CAST_SESSION"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/chromecast/ChromecastController;->onSessionEnding(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public onSessionResumeFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionResumeFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CAST_SESSION"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/chromecast/ChromecastController;->onSessionResumeFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionResumed(Lcom/google/android/gms/cast/framework/CastSession;Z)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionResumed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CAST_SESSION"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/chromecast/ChromecastController;->onSessionResumed(Lcom/google/android/gms/cast/framework/CastSession;Z)V

    return-void
.end method

.method public onSessionResuming(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionResuming "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CAST_SESSION"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/chromecast/ChromecastController;->onSessionResuming(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStartFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionStartFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CAST_SESSION"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/chromecast/ChromecastController;->onSessionStartFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionStarted(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CAST_SESSION"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lorg/telegram/messenger/chromecast/ChromecastController;->tryInitClient(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public bridge synthetic onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/chromecast/ChromecastController;->onSessionStarted(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStarting(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionStarting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAST_SESSION"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lorg/telegram/messenger/chromecast/ChromecastController;->tryInitClient(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public bridge synthetic onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/chromecast/ChromecastController;->onSessionStarting(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public onSessionSuspended(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionStartSuspended "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CAST_SESSION"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/chromecast/ChromecastController;->onSessionSuspended(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public setCover(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController;->state:Lorg/telegram/messenger/chromecast/ChromecastControllerState;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/chromecast/ChromecastControllerState;->setCoverFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentMediaAndCastIfNeeded(Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;)V
    .locals 2

    const-string v0, "CAST_CONTROLLER"

    const-string v1, "set current media"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController;->state:Lorg/telegram/messenger/chromecast/ChromecastControllerState;

    invoke-virtual {v0}, Lorg/telegram/messenger/chromecast/ChromecastControllerState;->getMedia()Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/CastSync;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lorg/telegram/messenger/chromecast/ChromecastController;->eq(Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastController;->state:Lorg/telegram/messenger/chromecast/ChromecastControllerState;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/chromecast/ChromecastControllerState;->setMedia(Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;)V

    :goto_0
    return-void
.end method
