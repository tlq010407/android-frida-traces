.class final Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/mediarouter/media/MediaRouterUtils$VolumeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VolumeCallbackWrapper"
.end annotation


# instance fields
.field private final mImplWeak:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;->mImplWeak:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;->mImplWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat;->mVolumeCallback:Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;->onVolumeSetRequest(I)V

    :cond_0
    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;->mImplWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat;->mVolumeCallback:Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroidx/mediarouter/media/RemoteControlClientCompat$VolumeCallback;->onVolumeUpdateRequest(I)V

    :cond_0
    return-void
.end method
