.class abstract Landroidx/mediarouter/media/MediaRouter2Utils$Api34Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter2Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api34Impl"
.end annotation


# direct methods
.method public static copyDescriptorVisibilityToBuilder(Landroid/media/MediaRoute2Info$Builder;Landroidx/mediarouter/media/MediaRouteDescriptor;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isVisibilityPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info$Builder;->setVisibilityPublic()Landroid/media/MediaRoute2Info$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getAllowedPackages()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2Info$Builder;->setVisibilityRestricted(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;

    :goto_0
    return-void
.end method

.method public static getDeduplicationIds(Landroid/media/MediaRoute2Info;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaRoute2Info;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Landroid/media/MediaRoute2Info;)I
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    return p0
.end method

.method public static setDeduplicationIds(Landroid/media/MediaRoute2Info$Builder;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaRoute2Info$Builder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2Info$Builder;->setDeduplicationIds(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;

    return-void
.end method

.method public static setDeviceType(Landroid/media/MediaRoute2Info$Builder;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    return-void
.end method
