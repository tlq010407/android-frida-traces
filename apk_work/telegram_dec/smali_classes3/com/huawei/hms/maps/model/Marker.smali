.class public Lcom/huawei/hms/maps/model/Marker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Object is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/huawei/hms/maps/model/animation/Animation;)V
    .locals 2

    :try_start_0
    instance-of v0, p1, Lcom/huawei/hms/maps/model/animation/AnimationSet;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/maps/model/animation/AnimationSet;

    invoke-virtual {v0}, Lcom/huawei/hms/maps/model/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/maps/model/animation/Animation;

    invoke-direct {p0, v1}, Lcom/huawei/hms/maps/model/Marker;->a(Lcom/huawei/hms/maps/model/animation/Animation;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/maps/model/animation/Animation;->getListener()Lcom/huawei/hms/maps/model/animation/Animation$AnimationListener;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/huawei/hms/maps/model/Marker$1;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/model/Marker$1;-><init>(Lcom/huawei/hms/maps/model/Marker;Lcom/huawei/hms/maps/model/animation/Animation$AnimationListener;)V

    move-object p1, v1

    :goto_1
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setAnimationListener(Lcom/huawei/hms/maps/internal/IAnimationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/huawei/hms/maps/model/Marker;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    check-cast p1, Lcom/huawei/hms/maps/model/Marker;

    iget-object p1, p1, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->equalsRemote(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final getAlpha()F
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->getAlpha()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final getPosition()Lcom/huawei/hms/maps/model/LatLng;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->getPosition()Lcom/huawei/hms/maps/model/LatLng;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final getRotation()F
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->getRotation()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->getSnippet()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->getTag()Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final getZIndex()F
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->getZIndex()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->hashCodeRemote()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final hideInfoWindow()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->hideInfoWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public isClusterable()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->isClusterable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final isDraggable()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->isDraggable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final isFlat()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->isFlat()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final isInfoWindowShown()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->isInfoWindowShown()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final isVisible()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->isVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final remove()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->remove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final setAlpha(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setAlpha(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final setAnchor(FF)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setAnchor(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setAnimation(Lcom/huawei/hms/maps/model/animation/Animation;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/maps/model/Marker;->a(Lcom/huawei/hms/maps/model/animation/Animation;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setAnimation(Lcom/huawei/hms/maps/model/animation/Animation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "animation cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDraggable(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setDraggable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final setFlat(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setFlat(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final setIcon(Lcom/huawei/hms/maps/model/BitmapDescriptor;)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setIcon(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-virtual {p1}, Lcom/huawei/hms/maps/model/BitmapDescriptor;->getObject()Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setIcon(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final setInfoWindowAnchor(FF)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setInfoWindowAnchor(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public final setMarkerAnchor(FF)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setMarkerAnchor(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public final setPosition(Lcom/huawei/hms/maps/model/LatLng;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setPosition(Lcom/huawei/hms/maps/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "latlng cannot be null - a position is required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRotation(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setRotation(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final setSnippet(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setSnippet(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setTag(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final setVisible(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final setZIndex(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->setZIndex(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final showInfoWindow()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->showInfoWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startAnimation()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker;->a:Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;->startAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
