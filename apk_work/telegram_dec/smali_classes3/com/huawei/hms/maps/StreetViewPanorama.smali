.class public Lcom/huawei/hms/maps/StreetViewPanorama;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;,
        Lcom/huawei/hms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;,
        Lcom/huawei/hms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;,
        Lcom/huawei/hms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaDelegate;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/internal/IStreetViewPanoramaDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanorama;->a:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaDelegate;

    return-void
.end method


# virtual methods
.method public animateTo(Lcom/huawei/hms/maps/model/StreetViewPanoramaCamera;J)V
    .locals 0

    return-void
.end method

.method public getLocation()Lcom/huawei/hms/maps/model/StreetViewPanoramaLocation;
    .locals 2

    const-string v0, "getLocation in StreetViewPanorama start"

    const-string v1, "StreetViewPanorama"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanorama;->a:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaDelegate;->getLocation()Lcom/huawei/hms/maps/model/StreetViewPanoramaLocation;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "RemoteException: "

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPanoramaCamera()Lcom/huawei/hms/maps/model/StreetViewPanoramaCamera;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanorama;->a:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaDelegate;->getPanoramaCamera()Lcom/huawei/hms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreetViewPanorama"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isPanningGesturesEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreetNamesEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUserNavigationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomGesturesEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public orientationToPoint(Lcom/huawei/hms/maps/model/StreetViewPanoramaOrientation;)Landroid/graphics/Point;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public pointToOrientation(Landroid/graphics/Point;)Lcom/huawei/hms/maps/model/StreetViewPanoramaOrientation;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanorama;->a:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaDelegate;->pointToOrientation(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Lcom/huawei/hms/maps/model/StreetViewPanoramaOrientation;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StreetViewPanorama"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final setOnStreetViewPanoramaCameraChangeListener(Lcom/huawei/hms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;)V
    .locals 0

    return-void
.end method

.method public final setOnStreetViewPanoramaChangeListener(Lcom/huawei/hms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;)V
    .locals 0

    return-void
.end method

.method public final setOnStreetViewPanoramaClickListener(Lcom/huawei/hms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;)V
    .locals 0

    return-void
.end method

.method public final setOnStreetViewPanoramaLongClickListener(Lcom/huawei/hms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;)V
    .locals 0

    return-void
.end method

.method public setPanningGesturesEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setPosition(Lcom/huawei/hms/maps/model/LatLng;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setPosition(Lcom/huawei/hms/maps/model/LatLng;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public setPosition(Lcom/huawei/hms/maps/model/LatLng;ILcom/huawei/hms/maps/model/StreetViewSource;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setPosition(Lcom/huawei/hms/maps/model/LatLng;Lcom/huawei/hms/maps/model/StreetViewSource;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setStreetNamesEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setUserNavigationEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 0

    return-void
.end method
