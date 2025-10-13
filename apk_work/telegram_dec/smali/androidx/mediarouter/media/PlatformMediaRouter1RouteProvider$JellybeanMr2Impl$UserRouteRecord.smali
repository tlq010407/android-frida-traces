.class public final Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "UserRouteRecord"
.end annotation


# instance fields
.field public final mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object p2, p0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;->mUserRoute:Landroid/media/MediaRouter$UserRouteInfo;

    return-void
.end method
