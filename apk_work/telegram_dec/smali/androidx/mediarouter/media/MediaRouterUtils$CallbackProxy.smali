.class Landroidx/mediarouter/media/MediaRouterUtils$CallbackProxy;
.super Landroid/media/MediaRouter$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation


# instance fields
.field protected final mCallback:Landroidx/mediarouter/media/MediaRouterUtils$Callback;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouterUtils$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouterUtils$CallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$Callback;

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouterUtils$CallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$Callback;

    invoke-interface {p1, p2}, Landroidx/mediarouter/media/MediaRouterUtils$Callback;->onRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouterUtils$CallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$Callback;

    invoke-interface {p1, p2}, Landroidx/mediarouter/media/MediaRouterUtils$Callback;->onRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouterUtils$CallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$Callback;

    invoke-interface {p1, p2, p3, p4}, Landroidx/mediarouter/media/MediaRouterUtils$Callback;->onRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    return-void
.end method

.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouterUtils$CallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$Callback;

    invoke-interface {p1, p2}, Landroidx/mediarouter/media/MediaRouterUtils$Callback;->onRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouterUtils$CallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$Callback;

    invoke-interface {p1, p2}, Landroidx/mediarouter/media/MediaRouterUtils$Callback;->onRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouterUtils$CallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$Callback;

    invoke-interface {p1, p2, p3}, Landroidx/mediarouter/media/MediaRouterUtils$Callback;->onRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouterUtils$CallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$Callback;

    invoke-interface {p1, p2, p3}, Landroidx/mediarouter/media/MediaRouterUtils$Callback;->onRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouterUtils$CallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$Callback;

    invoke-interface {p1, p2, p3}, Landroidx/mediarouter/media/MediaRouterUtils$Callback;->onRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouterUtils$CallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterUtils$Callback;

    invoke-interface {p1, p2}, Landroidx/mediarouter/media/MediaRouterUtils$Callback;->onRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method
