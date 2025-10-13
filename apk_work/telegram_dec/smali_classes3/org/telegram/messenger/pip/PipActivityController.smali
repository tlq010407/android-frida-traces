.class public Lorg/telegram/messenger/pip/PipActivityController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final activity:Landroid/app/Activity;

.field private final handler:Lorg/telegram/messenger/pip/PipActivityHandler;

.field private maxPrioritySource:Lorg/telegram/messenger/pip/PipSource;

.field private mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field mediaSessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

.field private pipContentView:Lorg/telegram/messenger/pip/PipActivityContentLayout;

.field private final sources:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->sources:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    new-instance v0, Lorg/telegram/messenger/pip/PipActivityHandler;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/pip/PipActivityHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->handler:Lorg/telegram/messenger/pip/PipActivityHandler;

    new-instance p1, Lorg/telegram/messenger/pip/PipActivityController$1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/pip/PipActivityController$1;-><init>(Lorg/telegram/messenger/pip/PipActivityController;)V

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/pip/PipActivityHandler;->addPipListener(Lorg/telegram/messenger/pip/activity/IPipActivityListener;)V

    new-instance p1, Lorg/telegram/messenger/pip/PipActivityController$2;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/pip/PipActivityController$2;-><init>(Lorg/telegram/messenger/pip/PipActivityController;)V

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/pip/PipActivityHandler;->addAnimationListener(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;)V

    return-void
.end method

.method private onMaxPrioritySourceChanged(Lorg/telegram/messenger/pip/PipSource;Lorg/telegram/messenger/pip/PipSource;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMaxPrioritySourceChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lorg/telegram/messenger/pip/PipSource;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PIP_DEBUG"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lorg/telegram/messenger/pip/utils/PipUtils;->applyPictureInPictureParams(Landroid/app/Activity;Lorg/telegram/messenger/pip/PipSource;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-boolean v3, p1, Lorg/telegram/messenger/pip/PipSource;->needMediaSession:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p2, :cond_2

    iget-boolean v4, p2, Lorg/telegram/messenger/pip/PipSource;->needMediaSession:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/pip/PipActivityController;->mediaSessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    iput-object v1, p0, Lorg/telegram/messenger/pip/PipActivityController;->mediaSessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/pip/PipActivityController;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    iget-object v3, p0, Lorg/telegram/messenger/pip/PipActivityController;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    iput-object v1, p0, Lorg/telegram/messenger/pip/PipActivityController;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    :cond_4
    if-eqz p2, :cond_5

    new-instance v3, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v4, p0, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    const-string v5, "pip-media-session"

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/pip/PipActivityController;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    iget-object v1, p0, Lorg/telegram/messenger/pip/PipActivityController;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    new-instance v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    iget-object v1, p0, Lorg/telegram/messenger/pip/PipActivityController;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->mediaSessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p1, Lorg/telegram/messenger/pip/PipSource;->state2:Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->onLoseMaxPriority()V

    :cond_6
    if-eqz p2, :cond_8

    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityController;->mediaSessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    if-eqz p1, :cond_7

    iget-object v0, p2, Lorg/telegram/messenger/pip/PipSource;->player:Lcom/google/android/exoplayer2/Player;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityController;->pipContentView:Lorg/telegram/messenger/pip/PipActivityContentLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p2, Lorg/telegram/messenger/pip/PipSource;->state2:Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;

    invoke-virtual {p1}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->onReceiveMaxPriority()V

    goto :goto_3

    :cond_8
    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isInPictureInPictureMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_9
    :goto_3
    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityController;->pipContentView:Lorg/telegram/messenger/pip/PipActivityContentLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateSources()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->maxPrioritySource:Lorg/telegram/messenger/pip/PipSource;

    iget-object v1, p0, Lorg/telegram/messenger/pip/PipActivityController;->sources:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/pip/PipSource;

    invoke-virtual {v3}, Lorg/telegram/messenger/pip/PipSource;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lorg/telegram/messenger/pip/PipSource;->state2:Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;

    invoke-virtual {v4}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->isAttachedToPip()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget v4, v3, Lorg/telegram/messenger/pip/PipSource;->priority:I

    iget v5, v2, Lorg/telegram/messenger/pip/PipSource;->priority:I

    if-le v4, v5, :cond_0

    :goto_1
    move-object v2, v3

    goto :goto_0

    :cond_3
    if-eq v0, v2, :cond_4

    iput-object v2, p0, Lorg/telegram/messenger/pip/PipActivityController;->maxPrioritySource:Lorg/telegram/messenger/pip/PipSource;

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/pip/PipActivityController;->onMaxPrioritySourceChanged(Lorg/telegram/messenger/pip/PipSource;Lorg/telegram/messenger/pip/PipSource;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public addActionListener(Ljava/lang/String;Lorg/telegram/messenger/pip/activity/IPipActivityActionListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->handler:Lorg/telegram/messenger/pip/PipActivityHandler;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/pip/PipActivityHandler;->addActionListener(Ljava/lang/String;Lorg/telegram/messenger/pip/activity/IPipActivityActionListener;)V

    return-void
.end method

.method public addAnimationListener(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->handler:Lorg/telegram/messenger/pip/PipActivityHandler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/pip/PipActivityHandler;->addAnimationListener(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;)V

    return-void
.end method

.method public addPipListener(Lorg/telegram/messenger/pip/activity/IPipActivityListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->handler:Lorg/telegram/messenger/pip/PipActivityHandler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/pip/PipActivityHandler;->addPipListener(Lorg/telegram/messenger/pip/activity/IPipActivityListener;)V

    return-void
.end method

.method dispatchSourceAvailabilityChanged(Lorg/telegram/messenger/pip/PipSource;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityController;->updateSources()V

    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityController;->pipContentView:Lorg/telegram/messenger/pip/PipActivityContentLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method dispatchSourceParamsChanged(Lorg/telegram/messenger/pip/PipSource;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->maxPrioritySource:Lorg/telegram/messenger/pip/PipSource;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lorg/telegram/messenger/pip/utils/PipUtils;->applyPictureInPictureParams(Landroid/app/Activity;Lorg/telegram/messenger/pip/PipSource;)V

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->mediaSessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/telegram/messenger/pip/PipSource;->player:Lcom/google/android/exoplayer2/Player;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityController;->pipContentView:Lorg/telegram/messenger/pip/PipActivityContentLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method dispatchSourceRegister(Lorg/telegram/messenger/pip/PipSource;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->sources:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/pip/PipSource;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityController;->updateSources()V

    return-void
.end method

.method dispatchSourceUnregister(Lorg/telegram/messenger/pip/PipSource;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->sources:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/messenger/pip/PipSource;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityController;->updateSources()V

    :cond_0
    return-void
.end method

.method public getHandler()Lorg/telegram/messenger/pip/activity/IPipActivityHandler;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->handler:Lorg/telegram/messenger/pip/PipActivityHandler;

    return-object v0
.end method

.method public getPipContentView()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->pipContentView:Lorg/telegram/messenger/pip/PipActivityContentLayout;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/pip/PipActivityContentLayout;

    iget-object v1, p0, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/pip/PipActivityContentLayout;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->pipContentView:Lorg/telegram/messenger/pip/PipActivityContentLayout;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->pipContentView:Lorg/telegram/messenger/pip/PipActivityContentLayout;

    return-object v0
.end method

.method public hasContentForPictureInPictureMode()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->maxPrioritySource:Lorg/telegram/messenger/pip/PipSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeActionListener(Ljava/lang/String;Lorg/telegram/messenger/pip/activity/IPipActivityActionListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->handler:Lorg/telegram/messenger/pip/PipActivityHandler;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/pip/PipActivityHandler;->removeActionListener(Ljava/lang/String;Lorg/telegram/messenger/pip/activity/IPipActivityActionListener;)V

    return-void
.end method

.method public removeAnimationListener(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->handler:Lorg/telegram/messenger/pip/PipActivityHandler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/pip/PipActivityHandler;->removeAnimationListener(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;)V

    return-void
.end method

.method public removePipListener(Lorg/telegram/messenger/pip/activity/IPipActivityListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityController;->handler:Lorg/telegram/messenger/pip/PipActivityHandler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/pip/PipActivityHandler;->removePipListener(Lorg/telegram/messenger/pip/activity/IPipActivityListener;)V

    return-void
.end method
