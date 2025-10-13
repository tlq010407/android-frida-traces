.class Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentListener"
.end annotation


# instance fields
.field private currentMediaItemIndex:I

.field private currentWindowCount:I

.field final synthetic this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)V

    return-void
.end method


# virtual methods
.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;->onAddQueueItem(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/MediaDescriptionCompat;)V

    :cond_0
    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;->onAddQueueItem(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/MediaDescriptionCompat;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public bridge synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1000(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1000(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;->onCommand(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1100(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1100(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;->onCommand(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public bridge synthetic onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public bridge synthetic onCues(Ljava/util/List;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$900(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$900(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;->onCustomAction(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public bridge synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 7

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->contains(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->currentMediaItemIndex:I

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onCurrentMediaItemIndexChanged(Lcom/google/android/exoplayer2/Player;)V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/Player$Events;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v4}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onTimelineChanged(Lcom/google/android/exoplayer2/Player;)V

    :cond_3
    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    iget v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->currentWindowCount:I

    if-ne v4, v0, :cond_3

    iget v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->currentMediaItemIndex:I

    if-eq v4, v2, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    iput v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->currentWindowCount:I

    const/4 v0, 0x1

    :cond_6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->currentMediaItemIndex:I

    const/16 p1, 0x8

    const/16 v2, 0xc

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x7

    filled-new-array {v4, v5, v6, p1, v2}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v3, 0x1

    :cond_7
    const/16 p1, 0x9

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionQueue()V

    goto :goto_4

    :cond_8
    move v1, v3

    :goto_4
    if-eqz v1, :cond_9

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    :cond_9
    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionMetadata()V

    :cond_a
    return-void
.end method

.method public onFastForward()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x40

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekForward()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onLoadingChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1900(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$2000(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;->onMediaButtonEvent(Lcom/google/android/exoplayer2/Player;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public bridge synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public bridge synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public bridge synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->pause()V

    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x4

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepare(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->prepare()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;Lcom/google/android/exoplayer2/Player;IJ)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->play()V

    :cond_3
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x400

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromMediaId(Ljava/lang/String;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x800

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x2000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromUri(Landroid/net/Uri;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public bridge synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public bridge synthetic onPlaybackStateChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public bridge synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public bridge synthetic onPlayerStateChanged(ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public bridge synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public onPrepare()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x4000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepare(Z)V

    :cond_0
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/32 v1, 0x8000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromMediaId(Ljava/lang/String;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/32 v1, 0x10000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/32 v1, 0x20000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromUri(Landroid/net/Uri;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;->onRemoveQueueItem(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/MediaDescriptionCompat;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public bridge synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onRewind()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x8

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->seekBack()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public bridge synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public bridge synthetic onSeekProcessed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x100

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;Lcom/google/android/exoplayer2/Player;IJ)V

    :cond_0
    return-void
.end method

.method public onSetCaptioningEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1700(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;->onSetCaptioningEnabled(Lcom/google/android/exoplayer2/Player;Z)V

    :cond_0
    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/32 v1, 0x400000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;->onSetRating(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/RatingCompat;)V

    :cond_0
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;->onSetRating(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/32 v1, 0x40000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    :cond_1
    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/32 v1, 0x200000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x20

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onSkipToNext(Lcom/google/android/exoplayer2/Player;)V

    :cond_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onSkipToPrevious(Lcom/google/android/exoplayer2/Player;)V

    :cond_0
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x1000

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onSkipToQueueItem(Lcom/google/android/exoplayer2/Player;J)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$700(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->clearMediaItems()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public bridge synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public bridge synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public bridge synthetic onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public bridge synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method
