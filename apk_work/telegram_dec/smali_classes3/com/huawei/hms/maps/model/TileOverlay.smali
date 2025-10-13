.class public final Lcom/huawei/hms/maps/model/TileOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    return-void
.end method


# virtual methods
.method public clearTileCache()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->clearTileCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/huawei/hms/maps/model/TileOverlay;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    check-cast p1, Lcom/huawei/hms/maps/model/TileOverlay;

    iget-object p1, p1, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->equalsRemote(Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public getFadeIn()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->getFadeIn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getTransparency()F
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->getTransparency()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->getZIndex()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->hashCodeRemote()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isVisible()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->isVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->remove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setFadeIn(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->setFadeIn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setTransparency(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->setTransparency(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setVisible(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->setVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setZIndex(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlay;->a:Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;->setZIndex(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
