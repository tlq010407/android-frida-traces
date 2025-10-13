.class public Lcom/huawei/hms/maps/HuaweiMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/maps/HuaweiMap$SnapshotReadyCallback;,
        Lcom/huawei/hms/maps/HuaweiMap$OnMapLoadedCallback;,
        Lcom/huawei/hms/maps/HuaweiMap$OnPoiClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowLongClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowCloseListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnIndoorStateChangeListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnGroundOverlayClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationButtonClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnMapClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnMapLongClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnPolygonClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnPolylineClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnCircleClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnMarkerDragListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnMarkerClickListener;,
        Lcom/huawei/hms/maps/HuaweiMap$InfoWindowAdapter;,
        Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnCameraIdleListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveCanceledListener;,
        Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveStartedListener;,
        Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;
    }
.end annotation


# static fields
.field public static final MAP_TYPE_HYBRID:I = 0x4

.field public static final MAP_TYPE_NONE:I = 0x0

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2

.field public static final MAP_TYPE_TERRAIN:I = 0x3


# instance fields
.field private a:Z

.field private b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

.field private c:Lcom/huawei/hms/maps/UiSettings;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->a:Z

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    :try_start_0
    invoke-interface {p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->getBitmapDescriptor()Lcom/huawei/hms/maps/model/internal/IBitmapDescriptorDelegate;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/maps/model/BitmapDescriptorFactory;->setIBitmapDescriptorDelegate(Lcom/huawei/hms/maps/model/internal/IBitmapDescriptorDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "HuaweiMap"

    const-string v0, "getBitmapDescriptor RemoteException: "

    invoke-static {p1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addCircle(Lcom/huawei/hms/maps/model/CircleOptions;)Lcom/huawei/hms/maps/model/Circle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->addCircle(Lcom/huawei/hms/maps/model/CircleOptions;)Lcom/huawei/hms/maps/model/internal/ICircleDelegate;

    move-result-object p1

    new-instance v0, Lcom/huawei/hms/maps/model/Circle;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/Circle;-><init>(Lcom/huawei/hms/maps/model/internal/ICircleDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCircle RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public addGroundOverlay(Lcom/huawei/hms/maps/model/GroundOverlayOptions;)Lcom/huawei/hms/maps/model/GroundOverlay;
    .locals 3

    invoke-virtual {p1}, Lcom/huawei/hms/maps/model/GroundOverlayOptions;->getImage()Lcom/huawei/hms/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v1, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->addGroundOverlay(Lcom/huawei/hms/maps/model/GroundOverlayOptions;)Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/huawei/hms/maps/model/GroundOverlay;

    invoke-direct {v1, p1}, Lcom/huawei/hms/maps/model/GroundOverlay;-><init>(Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addGroundOverlay RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HuaweiMap"

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GroundOverlayOptions image must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeatMap(Ljava/lang/String;Lcom/huawei/hms/maps/model/HeatMapOptions;)Lcom/huawei/hms/maps/model/HeatMap;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->addHeatMap(Ljava/lang/String;Lcom/huawei/hms/maps/model/HeatMapOptions;)Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    move-result-object p1

    new-instance p2, Lcom/huawei/hms/maps/model/HeatMap;

    invoke-direct {p2, p1}, Lcom/huawei/hms/maps/model/HeatMap;-><init>(Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HuaweiMap"

    invoke-static {p2, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public addMarker(Lcom/huawei/hms/maps/model/MarkerOptions;)Lcom/huawei/hms/maps/model/Marker;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->addMarker(Lcom/huawei/hms/maps/model/MarkerOptions;)Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    move-result-object p1

    new-instance v0, Lcom/huawei/hms/maps/model/Marker;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/Marker;-><init>(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)V
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

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public addPolygon(Lcom/huawei/hms/maps/model/PolygonOptions;)Lcom/huawei/hms/maps/model/Polygon;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->addPolygon(Lcom/huawei/hms/maps/model/PolygonOptions;)Lcom/huawei/hms/maps/model/internal/IPolygonDelegate;

    move-result-object p1

    new-instance v0, Lcom/huawei/hms/maps/model/Polygon;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/Polygon;-><init>(Lcom/huawei/hms/maps/model/internal/IPolygonDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPolygon RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public addPolyline(Lcom/huawei/hms/maps/model/PolylineOptions;)Lcom/huawei/hms/maps/model/Polyline;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->addPolyline(Lcom/huawei/hms/maps/model/PolylineOptions;)Lcom/huawei/hms/maps/model/internal/IPolylineDelegate;

    move-result-object p1

    new-instance v0, Lcom/huawei/hms/maps/model/Polyline;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/Polyline;-><init>(Lcom/huawei/hms/maps/model/internal/IPolylineDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPolyline RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public addTileOverlay(Lcom/huawei/hms/maps/model/TileOverlayOptions;)Lcom/huawei/hms/maps/model/TileOverlay;
    .locals 2

    invoke-virtual {p1}, Lcom/huawei/hms/maps/model/TileOverlayOptions;->getTileProvider()Lcom/huawei/hms/maps/model/TileProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->addTileOverlay(Lcom/huawei/hms/maps/model/TileOverlayOptions;)Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    move-result-object p1

    new-instance v0, Lcom/huawei/hms/maps/model/TileOverlay;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/TileOverlay;-><init>(Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTileOverlay RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TileProvider must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public animateCamera(Lcom/huawei/hms/maps/CameraUpdate;)V
    .locals 3

    .line 0
    const-string v0, "HuaweiMap"

    :try_start_0
    const-string v1, "animateCamera begin"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-virtual {p1}, Lcom/huawei/hms/maps/CameraUpdate;->getCameraUpdate()Lcom/huawei/hms/maps/model/CameraUpdateParam;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->animateCamera(Lcom/huawei/hms/maps/model/CameraUpdateParam;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public animateCamera(Lcom/huawei/hms/maps/CameraUpdate;ILcom/huawei/hms/maps/HuaweiMap$CancelableCallback;)V
    .locals 2

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-virtual {p1}, Lcom/huawei/hms/maps/CameraUpdate;->getCameraUpdate()Lcom/huawei/hms/maps/model/CameraUpdateParam;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$6;

    invoke-direct {v1, p0, p3}, Lcom/huawei/hms/maps/HuaweiMap$6;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;)V

    move-object p3, v1

    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->animateCameraWithDurationAndCallback(Lcom/huawei/hms/maps/model/CameraUpdateParam;ILcom/huawei/hms/maps/internal/ICancelableCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HuaweiMap"

    invoke-static {p2, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public animateCamera(Lcom/huawei/hms/maps/CameraUpdate;Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;)V
    .locals 3

    .line 0
    const-string v0, "animateCamera(update,callback)"

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-virtual {p1}, Lcom/huawei/hms/maps/CameraUpdate;->getCameraUpdate()Lcom/huawei/hms/maps/model/CameraUpdateParam;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$5;

    invoke-direct {v2, p0, p2}, Lcom/huawei/hms/maps/HuaweiMap$5;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;)V

    move-object p2, v2

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->animateCameraWithCallback(Lcom/huawei/hms/maps/model/CameraUpdateParam;Lcom/huawei/hms/maps/internal/ICancelableCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public clear()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getCameraPosition()Lcom/huawei/hms/maps/model/CameraPosition;
    .locals 4

    const-string v0, "HuaweiMap"

    :try_start_0
    const-string v1, "getCameraPosition begin"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->getCameraPosition()Lcom/huawei/hms/maps/model/CameraPosition;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFocusedBuilding()Lcom/huawei/hms/maps/model/IndoorBuilding;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->getFocusedBuilding()Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/model/IndoorBuilding;

    invoke-direct {v2, v1}, Lcom/huawei/hms/maps/model/IndoorBuilding;-><init>(Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusedBuilding RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HuaweiMap"

    invoke-static {v2, v1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getMapType()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->getMapType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMapType RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMaxZoomLevel()F
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->getMaxZoomLevel()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxZoomLevel RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMinZoomLevel()F
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->getMinZoomLevel()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMinZoomLevel RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProjection()Lcom/huawei/hms/maps/Projection;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->getProjection()Lcom/huawei/hms/maps/internal/IProjectionDelegate;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/maps/Projection;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/Projection;-><init>(Lcom/huawei/hms/maps/internal/IProjectionDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProjection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getUiSettings()Lcom/huawei/hms/maps/UiSettings;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/huawei/hms/maps/UiSettings;

    iget-object v1, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->getUiSettings()Lcom/huawei/hms/maps/internal/IUiSettingsDelegate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hms/maps/UiSettings;-><init>(Lcom/huawei/hms/maps/internal/IUiSettingsDelegate;)V

    iput-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->c:Lcom/huawei/hms/maps/UiSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUiSettings RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isBuildingsEnabled()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->isBuildingsEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBuildingsEnabled RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIndoorEnabled()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->isIndoorEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIndoorEnabled RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->isMyLocationEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMyLocationEnabled RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->isTrafficEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTrafficEnabled RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveCamera(Lcom/huawei/hms/maps/CameraUpdate;)V
    .locals 3

    const-string v0, "HuaweiMap"

    :try_start_0
    const-string v1, "moveCamera begin"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-virtual {p1}, Lcom/huawei/hms/maps/CameraUpdate;->getCameraUpdate()Lcom/huawei/hms/maps/model/CameraUpdateParam;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->moveCamera(Lcom/huawei/hms/maps/model/CameraUpdateParam;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public previewId(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->previewId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "previewId RemoteException = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resetMinMaxZoomPreference()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->resetMinMaxZoomPreference()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetMinMaxZoomPreference RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBuildingsEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setBuildingsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBuildingsEnabled RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setContentDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContentDescription RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setGcj02CoordinateEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setGcj02CoordinateEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGcj02CoordinateEnabled RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setGeoPoliticalView(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "HuaweiMap"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGeoPoliticalView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v1, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setGeoPoliticalView(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGeoPoliticalView RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setIndoorEnabled(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setIndoorEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIndoorEnabled RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setInfoWindowAdapter(Lcom/huawei/hms/maps/HuaweiMap$InfoWindowAdapter;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setInfoWindowAdapter(Lcom/huawei/hms/maps/internal/IInfoWindowAdapter;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$7;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$7;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$InfoWindowAdapter;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setInfoWindowAdapter(Lcom/huawei/hms/maps/internal/IInfoWindowAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HuaweiMap"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v1, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLanguage RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLatLngBoundsForCameraTarget(Lcom/huawei/hms/maps/model/LatLngBounds;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setLatLngBoundsForCameraTarget(Lcom/huawei/hms/maps/model/LatLngBounds;)V
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

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLocationSource(Lcom/huawei/hms/maps/LocationSource;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/huawei/hms/maps/HuaweiMap;->a:Z

    iget-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setLocationSource(Lcom/huawei/hms/maps/internal/ILocationSourceDelegate;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->a:Z

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    new-instance v1, Lcom/huawei/hms/maps/internal/mab;

    invoke-direct {v1, p1}, Lcom/huawei/hms/maps/internal/mab;-><init>(Lcom/huawei/hms/maps/LocationSource;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setLocationSource(Lcom/huawei/hms/maps/internal/ILocationSourceDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final setMapStyle(Lcom/huawei/hms/maps/model/MapStyleOptions;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setMapStyle(Lcom/huawei/hms/maps/model/MapStyleOptions;)Z

    move-result p1
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

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setMapType(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setMapType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMapType RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setMarkersClustering(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setMarkersClustering(Z)V
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

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setMaxZoomPreference(F)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setMaxZoomPreference(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxZoomPreference RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setMinZoomPreference(F)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setMinZoomPreference(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMinZoomPreference RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/huawei/hms/maps/MapClientIdentify;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "the permission is not granted, my location requires permission ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMyLocationEnabled RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnCameraIdleListener(Lcom/huawei/hms/maps/HuaweiMap$OnCameraIdleListener;)V
    .locals 3

    const-string v0, "setOnCameraIdleListener: "

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$2;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$2;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnCameraIdleListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setCameraIdleListener(Lcom/huawei/hms/maps/internal/IOnCameraIdleListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnCameraMoveCanceledListener(Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveCanceledListener;)V
    .locals 3

    const-string v0, "HuaweiMap does not support "

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$4;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$4;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveCanceledListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setCameraMoveCanceledListener(Lcom/huawei/hms/maps/internal/IOnCameraMoveCanceledListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnCameraMoveListener(Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveListener;)V
    .locals 3

    const-string v0, "setCameraMoveListener: "

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$3;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$3;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setCameraMoveListener(Lcom/huawei/hms/maps/internal/IOnCameraMoveListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnCameraMoveStartedListener(Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveStartedListener;)V
    .locals 3

    const-string v0, "setOnCameraMoveStartedListener: "

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$1;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$1;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveStartedListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setCameraMoveStartedListener(Lcom/huawei/hms/maps/internal/IOnCameraMoveStartedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnCircleClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnCircleClickListener;)V
    .locals 3

    const-string v0, "onCircleClick setListener start: "

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$11;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$11;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnCircleClickListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setCircleClickListener(Lcom/huawei/hms/maps/internal/IOnCircleClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnGroundOverlayClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnGroundOverlayClickListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$22;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$22;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnGroundOverlayClickListener;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setOnGroundOverlayClickListener(Lcom/huawei/hms/maps/internal/IOnGroundOverlayClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnGroundOverlayClickListener RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnIndoorStateChangeListener(Lcom/huawei/hms/maps/HuaweiMap$OnIndoorStateChangeListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$23;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$23;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnIndoorStateChangeListener;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setOnIndoorStateChangeListener(Lcom/huawei/hms/maps/internal/IOnIndoorStateChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnIndoorStateChangeListener RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowClickListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$21;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$21;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowClickListener;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setOnInfoWindowClickListener(Lcom/huawei/hms/maps/internal/IOnInfoWindowClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnInfoWindowCloseListener(Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowCloseListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$24;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$24;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowCloseListener;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setOnInfoWindowCloseListener(Lcom/huawei/hms/maps/internal/IOnInfoWindowCloseListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnInfoWindowCloseListener RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnInfoWindowLongClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowLongClickListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$25;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$25;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowLongClickListener;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setOnInfoWindowLongClickListener(Lcom/huawei/hms/maps/internal/IOnInfoWindowLongClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnInfoWindowLongClickListener RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnMapClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnMapClickListener;)V
    .locals 3

    const-string v0, "setOnMapClickListener: "

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$14;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$14;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMapClickListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setOnMapClickListener(Lcom/huawei/hms/maps/internal/IOnMapClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnMapLoadedCallback(Lcom/huawei/hms/maps/HuaweiMap$OnMapLoadedCallback;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$8;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$8;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMapLoadedCallback;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setOnMapLoadedCallback(Lcom/huawei/hms/maps/internal/IOnMapLoadedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnMapLoadedCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOnMapLongClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnMapLongClickListener;)V
    .locals 3

    const-string v0, "setOnMapLongClickListener"

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$15;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$15;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMapLongClickListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setOnMapLongClickListener(Lcom/huawei/hms/maps/internal/IOnMapLongClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnMarkerClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnMarkerClickListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$9;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$9;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMarkerClickListener;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setMarkerClickListener(Lcom/huawei/hms/maps/internal/IOnMarkerClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnMarkerDragListener(Lcom/huawei/hms/maps/HuaweiMap$OnMarkerDragListener;)V
    .locals 3

    const-string v0, "onMarkerDrag setListener start: "

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$10;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$10;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMarkerDragListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setMarkerDragListener(Lcom/huawei/hms/maps/internal/IOnMarkerDragListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnMyLocationButtonClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationButtonClickListener;)V
    .locals 3

    const-string v0, "setOnMyLocationButtonClickListener: "

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$16;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$16;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationButtonClickListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setOnMyLocationButtonClickListener(Lcom/huawei/hms/maps/internal/IOnMyLocationButtonClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "RemoteException: "

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnMyLocationClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationClickListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$19;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$19;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationClickListener;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setOnMyLocationClickListener(Lcom/huawei/hms/maps/internal/IOnMyLocationClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "HuaweiMap"

    const-string v0, "setOnMyLocationClickListener RemoteException"

    invoke-static {p1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnPoiClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnPoiClickListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$20;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$20;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnPoiClickListener;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setOnPoiClickListener(Lcom/huawei/hms/maps/internal/IOnPoiClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnPoiClickListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnPolygonClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnPolygonClickListener;)V
    .locals 3

    const-string v0, "setOnPolygonClickListener: "

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$13;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$13;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnPolygonClickListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setPolygonClickListener(Lcom/huawei/hms/maps/internal/IOnPolygonClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setOnPolylineClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnPolylineClickListener;)V
    .locals 3

    const-string v0, "setOnPolylineClickListener: "

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/huawei/hms/maps/HuaweiMap$12;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$12;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnPolylineClickListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setPolylineClickListener(Lcom/huawei/hms/maps/internal/IOnPolylineClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setPadding(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setPadding RemoteException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HuaweiMap"

    invoke-static {p2, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setPointToCenter(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setPointToCenter(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPointToCenter RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HuaweiMap"

    invoke-static {p2, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setStyleId(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setStyleId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStyleId RemoteException = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setTrafficEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTrafficEnabled RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setWatermarkEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->setWatermarkEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWatermarkEnabled RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public snapshot(Lcom/huawei/hms/maps/HuaweiMap$SnapshotReadyCallback;)V
    .locals 2

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$18;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$18;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$SnapshotReadyCallback;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->snapshotForTest(Lcom/huawei/hms/maps/internal/ISnapshotReadyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snapshot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiMap"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public snapshot(Lcom/huawei/hms/maps/HuaweiMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap$17;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/HuaweiMap$17;-><init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$SnapshotReadyCallback;)V

    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->snapshot(Lcom/huawei/hms/maps/internal/ISnapshotReadyCallback;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "snapshot"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HuaweiMap"

    invoke-static {p2, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->stopAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAnimation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public useViewLifecycleWhenInFragment()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap;->b:Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;->useViewLifecycleWhenInFragment()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useViewLifecycleWhenInFragment RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiMap"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method
