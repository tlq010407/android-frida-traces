.class public final Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;,
        Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackActions;
    }
.end annotation


# static fields
.field public static final ALL_PLAYBACK_ACTIONS:J = 0x64034fL

.field private static final BASE_MEDIA_SESSION_FLAGS:I = 0x3

.field private static final BASE_PLAYBACK_ACTIONS:J = 0x640207L

.field public static final DEFAULT_PLAYBACK_ACTIONS:J = 0x24034fL

.field private static final EDITOR_MEDIA_SESSION_FLAGS:I = 0x7

.field public static final EXTRAS_SPEED:Ljava/lang/String; = "EXO_SPEED"

.field private static final METADATA_EMPTY:Landroid/support/v4/media/MediaMetadataCompat;


# instance fields
.field private captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

.field private clearMediaItemsOnStop:Z

.field private final commandReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final componentListener:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;

.field private customActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private customActionProviders:[Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

.field private final customCommandReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private customError:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private customErrorExtras:Landroid/os/Bundle;

.field private dispatchUnsupportedActionsEnabled:Z

.field private enabledPlaybackActions:J

.field private errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider;"
        }
    .end annotation
.end field

.field private final looper:Landroid/os/Looper;

.field private mapIdleToStopped:Z

.field private mediaButtonEventHandler:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;

.field private mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

.field public final mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private metadataDeduplicationEnabled:Z

.field private playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

.field private player:Lcom/google/android/exoplayer2/Player;

.field private queueEditor:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

.field private queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

.field private ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.mediasession"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->METADATA_EMPTY:Landroid/support/v4/media/MediaMetadataCompat;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->looper:Landroid/os/Looper;

    new-instance v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->componentListener:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->commandReceivers:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customCommandReceivers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionProviders:[Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionMap:Ljava/util/Map;

    new-instance v3, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$DefaultMediaMetadataProvider;-><init>(Landroid/support/v4/media/session/MediaControllerCompat;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

    const-wide/32 v2, 0x24034f

    iput-wide v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->enabledPlaybackActions:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->clearMediaItemsOnStop:Z

    return-void
.end method

.method static synthetic access$100()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->METADATA_EMPTY:Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->commandReceivers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customCommandReceivers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchToPlaybackPreparer(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchSetRating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchQueueEdit()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueEditor:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchSetCaptioningEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchMediaButtonEvent()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaButtonEventHandler:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchPlaybackAction(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;Lcom/google/android/exoplayer2/Player;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->seekTo(Lcom/google/android/exoplayer2/Player;IJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->clearMediaItemsOnStop:Z

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->canDispatchToQueueNavigator(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionMap:Ljava/util/Map;

    return-object p0
.end method

.method private buildPlaybackActions(Lcom/google/android/exoplayer2/Player;)J
    .locals 8

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    if-eqz v6, :cond_1

    invoke-interface {v6, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;->hasCaptions(Lcom/google/android/exoplayer2/Player;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const-wide/32 v6, 0x640307

    goto :goto_2

    :cond_3
    const-wide/32 v6, 0x640207

    :goto_2
    if-eqz v2, :cond_4

    const-wide/16 v2, 0x40

    or-long/2addr v6, v2

    :cond_4
    if-eqz v1, :cond_5

    const-wide/16 v0, 0x8

    or-long/2addr v6, v0

    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->enabledPlaybackActions:J

    and-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    if-eqz v2, :cond_6

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->getSupportedQueueNavigatorActions(Lcom/google/android/exoplayer2/Player;)J

    move-result-wide v2

    const-wide/16 v6, 0x1030

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    :cond_6
    if-eqz v4, :cond_7

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    :cond_7
    if-eqz v5, :cond_8

    const-wide/32 v2, 0x100000

    or-long/2addr v0, v2

    :cond_8
    return-wide v0
.end method

.method private buildPrepareActions()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->getSupportedPrepareActions()J

    move-result-wide v0

    const-wide/32 v2, 0x3ec00

    and-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private canDispatchMediaButtonEvent()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaButtonEventHandler:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canDispatchPlaybackAction(J)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->enabledPlaybackActions:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->dispatchUnsupportedActionsEnabled:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private canDispatchQueueEdit()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueEditor:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canDispatchSetCaptioningEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canDispatchSetRating()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canDispatchToPlaybackPreparer(J)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->getSupportedPrepareActions()J

    move-result-wide v0

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->dispatchUnsupportedActionsEnabled:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private canDispatchToQueueNavigator(J)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->getSupportedQueueNavigatorActions(Lcom/google/android/exoplayer2/Player;)J

    move-result-wide v0

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->dispatchUnsupportedActionsEnabled:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getMediaSessionPlaybackState(IZ)I
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mapIdleToStopped:Z

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0

    :cond_3
    if-eqz p2, :cond_4

    const/4 v0, 0x6

    :cond_4
    return v0
.end method

.method private registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->commandReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->commandReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private seekTo(Lcom/google/android/exoplayer2/Player;IJ)V
    .locals 0

    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    return-void
.end method

.method private unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->commandReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final invalidateMediaSessionMetadata()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;->getMetadata(Lcom/google/android/exoplayer2/Player;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->METADATA_EMPTY:Landroid/support/v4/media/MediaMetadataCompat;

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->metadataDeduplicationEnabled:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;->sameAs(Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public final invalidateMediaSessionPlaybackState()V
    .locals 12

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->buildPrepareActions()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setShuffleMode(I)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionProviders:[Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    invoke-interface {v7, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;->getCustomAction(Lcom/google/android/exoplayer2/Player;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionMap:Ljava/util/Map;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customError:Landroid/util/Pair;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v4

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->getMediaSessionPlaybackState(IZ)I

    move-result v4

    move v6, v4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x7

    const/4 v6, 0x7

    :goto_3
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customError:Landroid/util/Pair;

    if-eqz v4, :cond_5

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customError:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customErrorExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_5
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    if-eqz v4, :cond_6

    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->getActiveQueueItemId(Lcom/google/android/exoplayer2/Player;)J

    move-result-wide v4

    goto :goto_4

    :cond_6
    const-wide/16 v4, -0x1

    :goto_4
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const-string v8, "EXO_SPEED"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_7

    move v9, v7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v8, v7, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v7, v7, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    const-string v8, "androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->buildPrepareActions()J

    move-result-wide v7

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->buildPlaybackActions(Lcom/google/android/exoplayer2/Player;)J

    move-result-wide v10

    or-long/2addr v7, v10

    invoke-virtual {v0, v7, v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActiveQueueItemId(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    const/4 v2, 0x2

    :cond_a
    :goto_6
    invoke-virtual {v4, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setRepeatMode(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setShuffleMode(I)V

    goto/16 :goto_0
.end method

.method public final invalidateMediaSessionQueue()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onTimelineChanged(Lcom/google/android/exoplayer2/Player;)V

    :cond_0
    return-void
.end method

.method public registerCustomCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customCommandReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customCommandReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setCaptionCallback(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    if-eq v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->captionCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    :cond_0
    return-void
.end method

.method public setClearMediaItemsOnStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->clearMediaItemsOnStop:Z

    return-void
.end method

.method public varargs setCustomActionProviders([Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customActionProviders:[Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 0
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setCustomErrorMessage(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setCustomErrorMessage(Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customError:Landroid/util/Pair;

    if-nez p1, :cond_1

    move-object p3, v0

    :cond_1
    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customErrorExtras:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    return-void
.end method

.method public setDispatchUnsupportedActionsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->dispatchUnsupportedActionsEnabled:Z

    return-void
.end method

.method public setEnabledPlaybackActions(J)V
    .locals 3

    const-wide/32 v0, 0x64034f

    and-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->enabledPlaybackActions:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->enabledPlaybackActions:J

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    :cond_0
    return-void
.end method

.method public setErrorMessageProvider(Lcom/google/android/exoplayer2/util/ErrorMessageProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    :cond_0
    return-void
.end method

.method public setMapStateIdleToSessionStateStopped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mapIdleToStopped:Z

    return-void
.end method

.method public setMediaButtonEventHandler(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaButtonEventHandler:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;

    return-void
.end method

.method public setMediaMetadataProvider(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaMetadataProvider:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionMetadata()V

    :cond_0
    return-void
.end method

.method public setMetadataDeduplicationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->metadataDeduplicationEnabled:Z

    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    if-eq v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->playbackPreparer:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    :cond_0
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->looper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->componentListener:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->componentListener:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionMetadata()V

    return-void
.end method

.method public setQueueEditor(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueEditor:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    if-eq v0, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueEditor:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    :cond_1
    return-void
.end method

.method public setQueueNavigator(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    if-eq v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->queueNavigator:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    :cond_0
    return-void
.end method

.method public setRatingCallback(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    if-eq v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->unregisterCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->ratingCallback:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->registerCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V

    :cond_0
    return-void
.end method

.method public unregisterCustomCommandReceiver(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->customCommandReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
