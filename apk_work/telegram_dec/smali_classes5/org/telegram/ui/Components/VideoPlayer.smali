.class public Lorg/telegram/ui/Components/VideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;
.implements Lcom/google/android/exoplayer2/video/VideoListener;
.implements Lcom/google/android/exoplayer2/analytics/AnalyticsListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;,
        Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerRenderersFactory;,
        Lorg/telegram/ui/Components/VideoPlayer$Quality;,
        Lorg/telegram/ui/Components/VideoPlayer$VideoUri;,
        Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;,
        Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;
    }
.end annotation


# static fields
.field public static final activePlayers:Ljava/util/HashSet;

.field private static cachedSupportedCodec:Ljava/util/HashMap;

.field private static lastPlayerId:I

.field static playerCounter:I


# instance fields
.field public allowMultipleInstances:Z

.field audioDisabled:Z

.field private audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private audioPlayerReady:Z

.field private audioType:Ljava/lang/String;

.field audioUpdateHandler:Landroid/os/Handler;

.field private audioUri:Landroid/net/Uri;

.field private audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

.field private autoIsOriginal:Z

.field private autoplay:Z

.field private currentStreamIsHls:Z

.field private currentUri:Landroid/net/Uri;

.field dashMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

.field private delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

.field private eglParentContext:Landroid/opengl/EGLContext;

.field private fallbackDuration:J

.field private fallbackPosition:J

.field private handleAudioFocus:Z

.field hlsMediaSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

.field private isStory:Z

.field private isStreaming:Z

.field private lastReportedPlayWhenReady:Z

.field private lastReportedPlaybackState:I

.field private looper:Landroid/os/Looper;

.field private looping:Z

.field private loopingMediaSource:Z

.field private manifestUris:Ljava/util/ArrayList;

.field private mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

.field private mixedAudio:Z

.field private mixedPlayWhenReady:Z

.field private onQualityChangeListener:Ljava/lang/Runnable;

.field public player:Lcom/google/android/exoplayer2/ExoPlayer;

.field public final playerId:I

.field progressiveMediaSourceFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

.field private repeatCount:I

.field private final seekFinishedListeners:Ljava/util/ArrayList;

.field private selectedQualityIndex:I

.field private shouldPauseOther:Z

.field ssMediaSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

.field private surface:Landroid/view/Surface;

.field private surfaceView:Landroid/view/SurfaceView;

.field private textureView:Landroid/view/TextureView;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

.field private triedReinit:Z

.field private videoPlayerReady:Z

.field private videoQualities:Ljava/util/ArrayList;

.field private videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

.field private videoType:Ljava/lang/String;

.field private videoUri:Landroid/net/Uri;

.field private workerQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method public static synthetic $r8$lambda$DkLLozkleufQswFqKGIJpbK2dc8(Lorg/telegram/ui/Components/VideoPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->lambda$onPlayerError$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$MlwaPkXg_Kc8fKs71zxZ91eGN1I(Lorg/telegram/ui/Components/VideoPlayer;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->lambda$onPlayerError$1(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoPlayer;->activePlayers:Ljava/util/HashSet;

    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/Components/VideoPlayer;->playerCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/telegram/ui/Components/VideoPlayer;->lastPlayerId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/Components/VideoPlayer;->lastPlayerId:I

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->playerId:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUpdateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackDuration:J

    iput-wide v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackPosition:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->seekFinishedListeners:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->handleAudioFocus:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioDisabled:Z

    new-instance v0, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->shouldPauseOther:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_1
    sget p1, Lorg/telegram/ui/Components/VideoPlayer;->playerCounter:I

    add-int/2addr p1, v1

    sput p1, Lorg/telegram/ui/Components/VideoPlayer;->playerCounter:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/VideoPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/VideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->checkPlayersReady()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/VideoPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    return p0
.end method

.method private checkPlayersReady()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_0
    return-void
.end method

.method private ensurePlayerCreated()V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/VideoPlayer;->isStory:Z

    const/high16 v2, 0x10000

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/DefaultLoadControl;

    new-instance v5, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-direct {v5, v3, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v6, 0xc350

    const v7, 0xc350

    const/16 v8, 0x3e8

    const/16 v9, 0x3e8

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZIZ)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/DefaultLoadControl;

    new-instance v15, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-direct {v15, v3, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v16, 0xc350

    const v17, 0xc350

    const/16 v18, 0x64

    const/16 v19, 0x1388

    const/16 v20, -0x1

    const/16 v21, 0x0

    move-object v14, v1

    invoke-direct/range {v14 .. v23}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;IIIIIZIZ)V

    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerRenderersFactory;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerRenderersFactory;-><init>(Lorg/telegram/ui/Components/VideoPlayer;Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoPlayer;->looper:Landroid/os/Looper;

    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/VideoPlayer;->eglParentContext:Landroid/opengl/EGLContext;

    if-eqz v4, :cond_3

    iput-object v4, v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->eglContext:Landroid/opengl/EGLContext;

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    if-eqz v2, :cond_4

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/Player;->setVideoSurface(Landroid/view/Surface;)V

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v2, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_6
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/VideoPlayer;->autoplay:Z

    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/VideoPlayer;->looping:Z

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    :cond_8
    iget-boolean v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v2, :cond_9

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/VideoPlayer$1;-><init>(Lorg/telegram/ui/Components/VideoPlayer;)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/VideoPlayer;->autoplay:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_9
    return-void
.end method

.method public static getCachedQuality(Ljava/util/ArrayList;)Lorg/telegram/ui/Components/VideoPlayer$VideoUri;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object v1, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    return-object v0
.end method

.method public static getLooping(Lorg/telegram/messenger/MessageObject;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "media_saved_pos"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "loop"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getQualities(ILorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 6

    .line 0
    const/4 v5, 0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/VideoPlayer;->getQualities(ILorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;IZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getQualities(ILorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;IZZ)Ljava/util/ArrayList;
    .locals 9

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->videoIgnoreAltDocuments:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "application/x-mpegurl"

    const/4 v5, 0x1

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_name_fixed:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v6, "mtproto"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_name_fixed:Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "application/x-tgstoryboard"

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "application/x-tgstoryboardmap"

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p2, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p0, v6, v7, p3, p5}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->of(ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;IZ)Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    move-result-object v7

    iget v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    if-lez v8, :cond_8

    iget v8, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    if-gtz v8, :cond_6

    goto :goto_5

    :cond_6
    if-ne v6, p1, :cond_7

    iput-boolean v5, v7, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    goto :goto_3

    :catch_1
    move-exception v6

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_4
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    if-eqz p2, :cond_d

    const-string p3, "av01"

    const-string p5, "av1"

    const-string v0, "vp9"

    if-eqz p4, :cond_b

    const-string v3, "avc"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    const-string v3, "h264"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    const-string v0, "vp8"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    :cond_a
    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_7

    :cond_b
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    const-string p3, "hevc"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    const-string p3, "h265"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_c
    iget-object p2, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_8
    invoke-static {p1}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->group(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getQualities(ILorg/telegram/tgnet/TLRPC$MessageMedia;Z)Ljava/util/ArrayList;
    .locals 6

    .line 0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/VideoPlayer;->getQualities(ILorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;IZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getQualityForPlayer(Ljava/util/ArrayList;)Lorg/telegram/ui/Components/VideoPlayer$VideoUri;
    .locals 9

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object v1, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object v2, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    if-nez v4, :cond_4

    iget-object v4, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_5

    iget v4, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v5, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v4, v4, v5

    iget v5, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v6, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v5, v5, v6

    if-gt v4, v5, :cond_5

    if-ne v4, v5, :cond_4

    iget-wide v4, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    iget-wide v6, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    cmpg-double v8, v4, v6

    if-gez v8, :cond_4

    :cond_5
    move-object v1, v3

    goto :goto_0

    :cond_6
    if-nez v1, :cond_a

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object v0, v0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    if-eqz v1, :cond_9

    iget v3, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v4, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v3, v3, v4

    iget v4, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v5, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v4, v4, v5

    if-gt v3, v4, :cond_9

    iget-wide v3, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    iget-wide v5, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    cmpg-double v7, v3, v5

    if-gez v7, :cond_8

    :cond_9
    move-object v1, v2

    goto :goto_1

    :cond_a
    return-object v1
.end method

.method public static getQualityForThumb(Ljava/util/ArrayList;)Lorg/telegram/ui/Components/VideoPlayer$VideoUri;
    .locals 9

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object v1, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object v2, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    if-nez v4, :cond_4

    if-eqz v1, :cond_5

    iget v4, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v5, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v4, v4, v5

    iget v5, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v6, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v5, v5, v6

    if-gt v4, v5, :cond_5

    iget-wide v4, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    iget-wide v6, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    cmpg-double v8, v4, v6

    if-gez v8, :cond_4

    :cond_5
    iget v4, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    const/16 v5, 0x384

    if-gt v4, v5, :cond_4

    iget v4, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    if-gt v4, v5, :cond_4

    move-object v1, v3

    goto :goto_0

    :cond_6
    if-nez v1, :cond_a

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object v0, v0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    if-eqz v1, :cond_9

    iget v3, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v4, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v3, v3, v4

    iget v4, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v5, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v4, v4, v5

    if-gt v3, v4, :cond_9

    iget-wide v3, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    iget-wide v5, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    cmpg-double v7, v3, v5

    if-gez v7, :cond_8

    :cond_9
    move-object v1, v2

    goto :goto_1

    :cond_a
    return-object v1
.end method

.method private getQualityTrackSelection(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    .locals 11

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->manifestUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    iget v6, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    iget v8, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v8, :cond_2

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v9, v8, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    const/4 v9, -0x1

    :goto_3
    if-ltz v9, :cond_0

    if-ne v0, v9, :cond_0

    :try_start_2
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    invoke-direct {p1, v6, v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_0
    iget v9, v8, Lcom/google/android/exoplayer2/Format;->width:I

    iget v10, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    if-ne v9, v10, :cond_1

    iget v8, v8, Lcom/google/android/exoplayer2/Format;->height:I

    iget v9, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    if-ne v8, v9, :cond_1

    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    invoke-direct {p1, v6, v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getSavedQuality(Ljava/util/ArrayList;JI)Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 3

    .line 0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "media_saved_pos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "q2"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v2, p3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz v2, :cond_2

    const-string v2, "s"

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p3

    :cond_3
    return-object v0
.end method

.method public static getSavedQuality(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 2

    .line 0
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lorg/telegram/ui/Components/VideoPlayer;->getSavedQuality(Ljava/util/ArrayList;JI)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onPlayerError$0()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Ljava/util/ArrayList;Lorg/telegram/ui/Components/VideoPlayer$Quality;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->loopingMediaSource:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayerLoop(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onPlayerError$1(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "av1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "av01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p1, "av1 codec failed, we think this codec is not supported"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "unsupport_video/av01"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object p1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->filterByCodec(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Ljava/util/ArrayList;Lorg/telegram/ui/Components/VideoPlayer$Quality;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    if-eqz v1, :cond_a

    iget-boolean v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->triedReinit:Z

    if-nez v3, :cond_4

    instance-of v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v3, :cond_5

    :cond_4
    instance-of v0, v0, Lcom/google/android/exoplayer2/video/SurfaceNotValidException;

    if-eqz v0, :cond_a

    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->triedReinit:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->workerQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz p1, :cond_7

    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/VideoPlayer;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Ljava/util/ArrayList;Lorg/telegram/ui/Components/VideoPlayer$Quality;)V

    goto :goto_0

    :cond_8
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->loopingMediaSource:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayerLoop(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onError(Lorg/telegram/ui/Components/VideoPlayer;Ljava/lang/Exception;)V

    :cond_b
    :goto_1
    return-void
.end method

.method private maybeReportPlayerState()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlayWhenReady:Z

    if-ne v2, v0, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    if-eq v2, v1, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v2, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onStateChanged(ZI)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlayWhenReady:Z

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    :cond_2
    return-void
.end method

.method private mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "dash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "hls"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->progressiveMediaSourceFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    if-nez p2, :cond_3

    new-instance p2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->progressiveMediaSourceFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->progressiveMediaSourceFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->dashMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    if-nez p2, :cond_4

    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->dashMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->dashMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->hlsMediaSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    if-nez p2, :cond_5

    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->hlsMediaSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->hlsMediaSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->ssMediaSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    if-nez p2, :cond_6

    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->ssMediaSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->ssMediaSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xe60 -> :sswitch_2
        0x193ef -> :sswitch_1
        0x2eef92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static saveLooping(ZLorg/telegram/messenger/MessageObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "media_saved_pos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "loop"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveQuality(Lorg/telegram/ui/Components/VideoPlayer$Quality;JI)V
    .locals 4

    .line 0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "media_saved_pos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "q2"

    const-string v2, "_"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz p0, :cond_1

    const-string p0, "s"

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveQuality(Lorg/telegram/ui/Components/VideoPlayer$Quality;Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lorg/telegram/ui/Components/VideoPlayer;->saveQuality(Lorg/telegram/ui/Components/VideoPlayer$Quality;JI)V

    return-void
.end method

.method private setSelectedQuality(ZLorg/telegram/ui/Components/VideoPlayer$Quality;)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    if-nez p1, :cond_1

    iput-wide v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackPosition:J

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackDuration:J

    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    const-string v3, "hls"

    const-string v4, "other"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/VideoPlayer;->makeManifest(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getOriginalQuality()Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v8, v7, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v5, :cond_2

    iget-object v8, v7, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v8

    if-eqz v8, :cond_2

    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    iput-boolean v5, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    iput-object v7, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->getDownloadUri()Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    invoke-interface {p2, v3, v6}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    goto/16 :goto_6

    :cond_2
    if-eqz p2, :cond_4

    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearOverrides()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    if-nez v4, :cond_3

    iput-boolean v5, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {p0, p2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p2

    invoke-interface {v4, p2, v6}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    goto/16 :goto_6

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_4
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/VideoPlayer;->getHighestQuality(Ljava/lang/Boolean;)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object p2

    if-nez p2, :cond_5

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/VideoPlayer;->getHighestQuality(Ljava/lang/Boolean;)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object p2

    :cond_5
    if-eqz p2, :cond_7

    iget-object v3, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-boolean v3, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->getDownloadUri()Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, p2, v4}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p2

    invoke-interface {v3, p2, v6}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    goto/16 :goto_6

    :cond_7
    :goto_1
    return-void

    :cond_8
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    iget-object v7, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    return-void

    :cond_9
    iget-object v7, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v5, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/VideoPlayer;->makeManifest(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_2

    :cond_a
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_f

    iget-object v8, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v5, :cond_f

    iget-object v8, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v8

    if-nez v8, :cond_b

    goto :goto_5

    :cond_b
    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    if-nez v4, :cond_c

    iput-boolean v5, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {p0, v7, v3}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    invoke-interface {v4, v3, v6}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearOverrides()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v3

    iget-object p2, p2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/VideoPlayer;->getQualityTrackSelection(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    move-result-object v4

    if-nez v4, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->addOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    goto :goto_4

    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    goto :goto_6

    :cond_f
    :goto_5
    iput-boolean v6, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    goto/16 :goto_0

    :goto_6
    if-eqz v5, :cond_12

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player;->prepare()V

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    if-eqz v0, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->onQualityChangeListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_11

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_11
    sget-object p1, Lorg/telegram/ui/Components/VideoPlayer;->activePlayers:Ljava/util/HashSet;

    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->playerId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public static supportsHardwareDecoder(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/telegram/ui/Components/VideoPlayer;->toMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupport_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_8

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_7

    aget-object v5, v3, v4

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    sget-object v1, Lorg/telegram/ui/Components/VideoPlayer;->cachedSupportedCodec:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_4
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static toMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "hevc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "h265"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "h264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "av01"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "vp9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "vp8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "avc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "av1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "video/hevc"

    return-object p0

    :pswitch_1
    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    :pswitch_2
    const-string p0, "video/x-vnd.on2.vp8"

    return-object p0

    :pswitch_3
    const-string p0, "video/avc"

    return-object p0

    :pswitch_4
    const-string p0, "video/av01"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17a9c -> :sswitch_7
        0x17ace -> :sswitch_6
        0x1c8be -> :sswitch_5
        0x1c8bf -> :sswitch_4
        0x2dd8f6 -> :sswitch_3
        0x300908 -> :sswitch_2
        0x300909 -> :sswitch_1
        0x30d06a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createdWithAudioTrack()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/ui/Components/VideoPlayer;

    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->allowMultipleInstances:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->isStreaming:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getCurrentChromecastMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    const-string v1, "video/mp4"

    const-string v2, "/mtproto_"

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    const-string v2, "mime"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->fromUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->setTitle(Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->setSubtitle(Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->build()Lorg/telegram/messenger/chromecast/ChromecastMedia;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;->of(Lorg/telegram/messenger/chromecast/ChromecastMedia;)Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;

    invoke-direct {p1}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->docId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_4

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v7, v1

    :cond_5
    iget-object v8, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->fromUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->setTitle(Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->setSubtitle(Ljava/lang/String;)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object v6

    iget v7, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v5, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    invoke-virtual {v6, v7, v5}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->setSize(II)Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->build()Lorg/telegram/messenger/chromecast/ChromecastMedia;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;->add(Lorg/telegram/messenger/chromecast/ChromecastMedia;)Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lorg/telegram/messenger/chromecast/ChromecastMediaVariations$Builder;->build()Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-wide v2, v0, Lcom/google/android/exoplayer2/Format;->documentId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object v3, v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-wide v5, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->docId:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/Format;->documentId:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    iget-object v0, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getCurrentPosition()J
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackPosition:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getCurrentQuality()Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentQualityIndex()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/VideoPlayer;->getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentQualityIndex()I
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/VideoPlayer;->getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v4

    iget-boolean v5, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-nez v5, :cond_4

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v6, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    if-ne v5, v6, :cond_4

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v6, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    if-ne v5, v6, :cond_4

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-wide v6, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int v4, v6

    if-ne v5, v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v1

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    return v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDuration()J
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackDuration:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getHDRStaticInfo(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;
    .locals 6

    const-string v0, "color-range"

    const-string v1, "color-standard"

    const-string v2, "color-transfer"

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/ExoPlayer;->getRenderer(I)Lcom/google/android/exoplayer2/Renderer;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;

    iget-object v3, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v4, "hdr-static-info"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    int-to-float v5, v5

    iput v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->maxlum:F

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    int-to-float v4, v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float v4, v4, v5

    iput v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->minlum:F

    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_4

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorTransfer:I

    :cond_2
    invoke-virtual {v3, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorStandard:I

    :cond_3
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->minlum:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->maxlum:F

    :cond_4
    :goto_0
    return-object p1
.end method

.method public getHighestQuality(Ljava/lang/Boolean;)Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-boolean v3, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget v3, v0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    iget v4, v0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    mul-int v3, v3, v4

    iget v4, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    iget v5, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    mul-int v4, v4, v5

    if-ge v3, v4, :cond_2

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getLowestFile()Ljava/io/File;
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object v2, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->updateCached(Z)V

    :cond_1
    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalQuality()Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/VideoPlayer;->getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v1

    iget-boolean v2, v1, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackSpeed()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getQualitiesCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->getHighestQuality(Ljava/lang/Boolean;)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    return-object p1

    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->getHighestQuality(Ljava/lang/Boolean;)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedQuality()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    return v0
.end method

.method public isBuffering()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHDR()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :catch_0
    :cond_3
    :goto_0
    return v1
.end method

.method public isLooping()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->looping:Z

    return v0
.end method

.method public isMuted()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVolume()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayerPrepared()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeManifest(Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#EXTM3U\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#EXT-X-VERSION:6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#EXT-X-INDEPENDENT-SEGMENTS\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->manifestUris:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iget-object v3, v3, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    iget-wide v6, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->docId:J

    iget-object v8, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7, v8}, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;->putDocumentUri(JLandroid/net/Uri;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;

    iget-wide v6, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->manifestDocId:J

    iget-object v8, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->m3u8uri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7, v8}, Lorg/telegram/messenger/secretmedia/ExtendedDefaultDataSourceFactory;->putDocumentUri(JLandroid/net/Uri;)V

    iget-object v5, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->m3u8uri:Landroid/net/Uri;

    if-eqz v5, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->manifestUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#EXT-X-STREAM-INF:BANDWIDTH="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",RESOLUTION="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/ui/Components/VideoPlayer;->toMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    if-eqz v5, :cond_2

    const-string v7, ",MIME=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isManifestCached()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, ",CACHED=\"true\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v5, ",DOCID=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->docId:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",ACCOUNT=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->currentAccount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isManifestCached()Z

    move-result v5

    const-string v6, "\n\n"

    if-eqz v5, :cond_4

    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->m3u8uri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v5, "mtproto:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->manifestDocId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    if-nez v2, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const-string p1, ""

    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:application/x-mpegurl;base64,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method public synthetic onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public synthetic onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/VideoPlayer;Lcom/google/android/exoplayer2/PlaybackException;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 5

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->maybeReportPlayerState()V

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->isMuted()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->shouldPauseOther:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    if-nez p1, :cond_1

    if-ne p2, v2, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->checkPlayersReady()V

    :cond_1
    if-eq p2, v2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUpdateHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0, v1, p2}, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;->onVisualizerUpdate(ZZ[F)V

    :cond_2
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    .line 0
    if-nez p3, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->repeatCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->repeatCount:I

    :cond_0
    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onRenderedFirstFrame()V

    return-void
.end method

.method public onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    .line 0
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackPosition:J

    iput-wide p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->fallbackDuration:J

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    :cond_0
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public onSeekProcessed(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSeekFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->seekFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->seekFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    :cond_0
    return-void
.end method

.method public synthetic onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result p1

    return p1
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Tracks;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->onQualityChangeListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public synthetic onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    iget v1, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    iget v4, p1, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onVideoSizeChanged(IIIF)V

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method

.method public synthetic onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method

.method public pause()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3, v2}, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;->onVisualizerUpdate(ZZ[F)V

    :cond_2
    return-void
.end method

.method public play()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    if-nez v1, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_5

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_5
    return-void
.end method

.method public preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method

.method public preparePlayer(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 3

    .line 0
    const/4 p3, 0x0

    iput-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->loopingMediaSource:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    :cond_0
    const/4 v1, 0x1

    if-eqz p3, :cond_1

    const-string v2, "file"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->isStreaming:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->ensurePlayerCreated()V

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    return-void
.end method

.method public preparePlayer(Ljava/util/ArrayList;Lorg/telegram/ui/Components/VideoPlayer$Quality;)V
    .locals 2

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    const-string v0, "hls"

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUri:Landroid/net/Uri;

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->loopingMediaSource:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentUri:Landroid/net/Uri;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->isStreaming:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->ensurePlayerCreated()V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setSelectedQuality(ZLorg/telegram/ui/Components/VideoPlayer$Quality;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoIsOriginal:Z

    if-eqz p1, :cond_2

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    :cond_2
    return-void
.end method

.method public preparePlayerLoop(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualityToSelect:Lorg/telegram/ui/Components/VideoPlayer$Quality;

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoUri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioUri:Landroid/net/Uri;

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoType:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioType:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->loopingMediaSource:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->currentStreamIsHls:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->ensurePlayerCreated()V

    move-object v2, v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    if-nez v3, :cond_0

    move-object v4, p1

    move-object v5, p2

    goto :goto_1

    :cond_0
    move-object v4, p3

    move-object v5, p4

    :goto_1
    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->mediaSourceFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v4

    new-instance v5, Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    if-nez v3, :cond_1

    move-object v0, v5

    goto :goto_2

    :cond_1
    move-object v2, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    sget-object p1, Lorg/telegram/ui/Components/VideoPlayer;->activePlayers:Ljava/util/HashSet;

    iget p2, p0, Lorg/telegram/ui/Components/VideoPlayer;->playerId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public releasePlayer(Z)V
    .locals 1

    sget-object p1, Lorg/telegram/ui/Components/VideoPlayer;->activePlayers:Ljava/util/HashSet;

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->playerId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->release()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->release()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->shouldPauseOther:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_2
    sget p1, Lorg/telegram/ui/Components/VideoPlayer;->playerCounter:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lorg/telegram/ui/Components/VideoPlayer;->playerCounter:I

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    return-void
.end method

.method public seekTo(JZ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    sget-object p3, Lcom/google/android/exoplayer2/SeekParameters;->CLOSEST_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/google/android/exoplayer2/SeekParameters;->EXACT:Lcom/google/android/exoplayer2/SeekParameters;

    :goto_0
    invoke-interface {v0, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public seekTo(JZLjava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->seekFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p3, :cond_1

    sget-object p3, Lcom/google/android/exoplayer2/SeekParameters;->CLOSEST_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/google/android/exoplayer2/SeekParameters;->EXACT:Lcom/google/android/exoplayer2/SeekParameters;

    :goto_0
    invoke-interface {p4, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :cond_2
    return-void
.end method

.method public setAudioVisualizerDelegate(Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioVisualizerDelegate:Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    return-void
.end method

.method public setIsStory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->isStory:Z

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->looping:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->looping:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    :cond_1
    return-void
.end method

.method public setMute(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    :cond_3
    return-void
.end method

.method public setOnQualityChangeListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->onQualityChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedPlayWhenReady:Z

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->mixedAudio:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayerReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoPlayerReady:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_2
    return-void

    :cond_3
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoplay:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_5
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    const v2, 0x3f7ae148    # 0.98f

    :cond_0
    invoke-direct {v1, p1, v2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public setSelectedQuality(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->selectedQualityIndex:I

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->videoQualities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSelectedQuality(ZLorg/telegram/ui/Components/VideoPlayer$Quality;)V

    :cond_2
    return-void
.end method

.method public setStreamType(I)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    if-nez p1, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->handleAudioFocus:Z

    invoke-interface {v0, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3

    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    :cond_3
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->surface:Landroid/view/Surface;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->surfaceView:Landroid/view/SurfaceView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->surfaceView:Landroid/view/SurfaceView;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->audioPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    :cond_1
    return-void
.end method

.method public setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->workerQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method
