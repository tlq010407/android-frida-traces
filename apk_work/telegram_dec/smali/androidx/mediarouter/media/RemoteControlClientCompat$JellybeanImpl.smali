.class Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;
.super Landroidx/mediarouter/media/RemoteControlClientCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RemoteControlClientCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellybeanImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mRegistered:Z

.field private final mRouter:Landroid/media/MediaRouter;

.field private final mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

.field private final mUserRouteCategory:Landroid/media/MediaRouter$RouteCategory;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/RemoteControlClient;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/RemoteControlClientCompat;-><init>(Landroid/content/Context;Landroid/media/RemoteControlClient;)V

    const-string p2, "media_router"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mRouter:Landroid/media/MediaRouter;

    const-string p2, ""

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    return-void
.end method


# virtual methods
.method public setPlaybackInfo(Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    iget v1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    iget-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    iget v1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    iget-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    iget v1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    iget-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    iget v1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    iget-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    iget p1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    iget-boolean p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mRegistered:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mRegistered:Z

    iget-object p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    new-instance v0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;-><init>(Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;)V

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouterUtils;->createVolumeCallback(Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallback;)Landroid/media/MediaRouter$VolumeCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    iget-object p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    iget-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setRemoteControlClient(Landroid/media/RemoteControlClient;)V

    :cond_0
    return-void
.end method
