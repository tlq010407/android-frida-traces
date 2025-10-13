.class public abstract Lorg/telegram/ui/CastSync;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static listened:Z

.field public static pending:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static savedVolume:I

.field private static syncingVolume:Landroid/database/ContentObserver;

.field public static type:I


# direct methods
.method public static synthetic $r8$lambda$5nOGJw-BwEMrusgmT3ZYYs51e-s(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CastSync;->lambda$setVolume$1(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U_toVnQ1AFn2f5IeqI5A6b9qx6A(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CastSync;->lambda$setPlaying$2(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lShuTNJ_vkDn5R0dt4xl_BHryvs(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CastSync;->lambda$setSpeed$4(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p9-hMEAUNcGw3JvNMZE4172Xymo(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CastSync;->lambda$setPlaying$3(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xjZZj9vOc2udwx0SRi0QNRjRdpc(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CastSync;->lambda$seekTo$0(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public static check(I)V
    .locals 2

    sput p0, Lorg/telegram/ui/CastSync;->type:I

    sget-boolean v0, Lorg/telegram/ui/CastSync;->listened:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/telegram/ui/CastSync;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/ui/CastSync;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CastSync$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CastSync$1;-><init>(I)V

    const-class p0, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    const/4 p0, 0x1

    sput-boolean p0, Lorg/telegram/ui/CastSync;->listened:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static doSyncVolume(Z)V
    .locals 7

    sget-object v0, Lorg/telegram/ui/CastSync;->syncingVolume:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq v3, p0, :cond_6

    const-string v3, "audio"

    const/4 v4, 0x3

    if-eqz p0, :cond_3

    invoke-static {}, Lorg/telegram/ui/CastSync;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    sput v3, Lorg/telegram/ui/CastSync;->savedVolume:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Lorg/telegram/ui/CastSync$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, v6}, Lorg/telegram/ui/CastSync$2;-><init>(Landroid/os/Handler;)V

    sput-object v5, Lorg/telegram/ui/CastSync;->syncingVolume:Landroid/database/ContentObserver;

    invoke-virtual {p0, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lorg/telegram/ui/CastSync;->getDeviceVolume()F

    move-result p0

    invoke-static {p0}, Lorg/telegram/ui/CastSync;->setVolume(F)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/ui/CastSync;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/CastSync;->syncingVolume:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/CastSync;->syncingVolume:Landroid/database/ContentObserver;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_5

    return-void

    :cond_5
    sget v0, Lorg/telegram/ui/CastSync;->savedVolume:I

    invoke-virtual {p0, v4, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-static {}, Lorg/telegram/ui/CastSync;->syncInterface()V

    :cond_6
    :goto_1
    return-void
.end method

.method public static getClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 3

    invoke-static {}, Lorg/telegram/ui/CastSync;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/telegram/ui/CastSync;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :cond_0
    return-object v0
.end method

.method public static getDeviceVolume()F
    .locals 6

    invoke-static {}, Lorg/telegram/ui/CastSync;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioManager;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr v2, v0

    int-to-float v1, v2

    sub-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v0

    return v0
.end method

.method public static getPosition()J
    .locals 2

    invoke-static {}, Lorg/telegram/ui/CastSync;->getClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSpeed()F
    .locals 2

    invoke-static {}, Lorg/telegram/ui/CastSync;->getClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getVolume()F
    .locals 2

    invoke-static {}, Lorg/telegram/ui/CastSync;->getClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamVolume()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static isActive()Z
    .locals 3

    invoke-static {}, Lorg/telegram/ui/CastSync;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/telegram/ui/CastSync;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->isConnecting()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :cond_3
    return v1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v1
.end method

.method public static isPlaying()Z
    .locals 2

    invoke-static {}, Lorg/telegram/ui/CastSync;->getClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget v1, Lorg/telegram/ui/CastSync;->type:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPaused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public static isUpdatePending()Z
    .locals 1

    sget-object v0, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$seekTo$0(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    sget-object p0, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method private static synthetic lambda$setPlaying$2(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    sget-object p0, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method private static synthetic lambda$setPlaying$3(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    sget-object p0, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method private static synthetic lambda$setSpeed$4(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    sget-object p0, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method private static synthetic lambda$setVolume$1(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    sget-object p0, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public static seekTo(J)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/CastSync;->getClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_1
    sget-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v1, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->setPosition(J)Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->build()Lcom/google/android/gms/cast/MediaSeekOptions;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(Lcom/google/android/gms/cast/MediaSeekOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p0

    new-instance p1, Lorg/telegram/ui/CastSync$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lorg/telegram/ui/CastSync$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/PendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    return-void
.end method

.method public static setPlaying(Z)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/CastSync;->getClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlaying()Z

    move-result v1

    if-eq p0, v1, :cond_3

    sget-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_1
    sget-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->play()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/CastSync$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/CastSync$$ExternalSyntheticLambda0;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/PendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->pause()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/CastSync$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/ui/CastSync$$ExternalSyntheticLambda1;-><init>()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static setSpeed(F)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/CastSync;->getClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_1
    sget-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->setPlaybackRate(D)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/CastSync$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/telegram/ui/CastSync$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/PendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    return-void
.end method

.method public static setVolume(F)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/CastSync;->getClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_1
    sget-object v1, Lorg/telegram/ui/CastSync;->pending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->setStreamVolume(D)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/CastSync$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/telegram/ui/CastSync$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/PendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    return-void
.end method

.method public static stop()V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/CastSync;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/telegram/ui/CastSync;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->endCurrentSession(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static syncInterface()V
    .locals 2

    sget v0, Lorg/telegram/ui/CastSync;->type:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->syncCastedPlayer()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->syncCastedPlayer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static syncPosition(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/ui/CastSync;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    :cond_1
    invoke-static {p0, p1}, Lorg/telegram/ui/CastSync;->seekTo(J)V

    :cond_2
    return-void
.end method
