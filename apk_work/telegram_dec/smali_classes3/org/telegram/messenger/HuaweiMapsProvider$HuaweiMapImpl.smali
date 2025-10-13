.class public final Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$IMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HuaweiMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HuaweiMapImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;,
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;
    }
.end annotation


# instance fields
.field private huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

.field private implToAbsCircleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/hms/maps/model/Circle;",
            "Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;",
            ">;"
        }
    .end annotation
.end field

.field private implToAbsMarkerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/hms/maps/model/Marker;",
            "Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VfdDvNoWdxPBdSRzpD3zgGDJMC4(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;Lcom/huawei/hms/maps/model/Marker;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->lambda$setOnMarkerClickListener$1(Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;Lcom/huawei/hms/maps/model/Marker;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zyYpMlLGFhTns4XdbrLTeQuVCxw(Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->lambda$setOnCameraMoveStartedListener$0(Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;I)V

    return-void
.end method

.method private constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->implToAbsMarkerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->implToAbsCircleMap:Ljava/util/Map;

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;-><init>(Lcom/huawei/hms/maps/HuaweiMap;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->implToAbsMarkerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->implToAbsCircleMap:Ljava/util/Map;

    return-object p0
.end method

.method private static synthetic lambda$setOnCameraMoveStartedListener$0(Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p0, v0}, Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;->onCameraMoveStarted(I)V

    return-void
.end method

.method private synthetic lambda$setOnMarkerClickListener$1(Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;Lcom/huawei/hms/maps/model/Marker;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->implToAbsMarkerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lcom/huawei/hms/maps/model/Marker;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    iget-object v1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->implToAbsMarkerMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;->onClick(Lorg/telegram/messenger/IMapsProvider$IMarker;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addCircle(Lorg/telegram/messenger/IMapsProvider$ICircleOptions;)Lorg/telegram/messenger/IMapsProvider$ICircle;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    check-cast p1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCircleOptions;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCircleOptions;->access$1200(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCircleOptions;)Lcom/huawei/hms/maps/model/CircleOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/HuaweiMap;->addCircle(Lcom/huawei/hms/maps/model/CircleOptions;)Lcom/huawei/hms/maps/model/Circle;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lcom/huawei/hms/maps/model/Circle;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    iget-object v1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->implToAbsCircleMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    check-cast p1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;->access$1000(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;)Lcom/huawei/hms/maps/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/HuaweiMap;->addMarker(Lcom/huawei/hms/maps/model/MarkerOptions;)Lcom/huawei/hms/maps/model/Marker;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lcom/huawei/hms/maps/model/Marker;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    iget-object v1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->implToAbsMarkerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    check-cast p1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;->access$1400(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;)Lcom/huawei/hms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/HuaweiMap;->animateCamera(Lcom/huawei/hms/maps/CameraUpdate;)V

    return-void
.end method

.method public animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;ILorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    check-cast p1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;->access$1400(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;)Lcom/huawei/hms/maps/CameraUpdate;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$2;

    invoke-direct {v1, p0, p3}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$2;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V

    move-object p3, v1

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hms/maps/HuaweiMap;->animateCamera(Lcom/huawei/hms/maps/CameraUpdate;ILcom/huawei/hms/maps/HuaweiMap$CancelableCallback;)V

    return-void
.end method

.method public animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    check-cast p1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;->access$1400(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;)Lcom/huawei/hms/maps/CameraUpdate;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$1;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V

    move-object p2, v1

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/maps/HuaweiMap;->animateCamera(Lcom/huawei/hms/maps/CameraUpdate;Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;)V

    return-void
.end method

.method public getCameraPosition()Lorg/telegram/messenger/IMapsProvider$CameraPosition;
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    invoke-virtual {v0}, Lcom/huawei/hms/maps/HuaweiMap;->getCameraPosition()Lcom/huawei/hms/maps/model/CameraPosition;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/IMapsProvider$CameraPosition;

    new-instance v2, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v3, v0, Lcom/huawei/hms/maps/model/CameraPosition;->target:Lcom/huawei/hms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    iget-wide v6, v3, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    iget v0, v0, Lcom/huawei/hms/maps/model/CameraPosition;->zoom:F

    invoke-direct {v1, v2, v0}, Lorg/telegram/messenger/IMapsProvider$CameraPosition;-><init>(Lorg/telegram/messenger/IMapsProvider$LatLng;F)V

    return-object v1
.end method

.method public getMaxZoomLevel()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    invoke-virtual {v0}, Lcom/huawei/hms/maps/HuaweiMap;->getMaxZoomLevel()F

    move-result v0

    return v0
.end method

.method public getMinZoomLevel()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    invoke-virtual {v0}, Lcom/huawei/hms/maps/HuaweiMap;->getMinZoomLevel()F

    move-result v0

    return v0
.end method

.method public getProjection()Lorg/telegram/messenger/IMapsProvider$IProjection;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiProjection;

    iget-object v1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    invoke-virtual {v1}, Lcom/huawei/hms/maps/HuaweiMap;->getProjection()Lcom/huawei/hms/maps/Projection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiProjection;-><init>(Lcom/huawei/hms/maps/Projection;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    return-object v0
.end method

.method public getUiSettings()Lorg/telegram/messenger/IMapsProvider$IUISettings;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiUISettings;

    iget-object v1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    invoke-virtual {v1}, Lcom/huawei/hms/maps/HuaweiMap;->getUiSettings()Lcom/huawei/hms/maps/UiSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiUISettings;-><init>(Lcom/huawei/hms/maps/UiSettings;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    return-object v0
.end method

.method public moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    check-cast p1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;->access$1400(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;)Lcom/huawei/hms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/HuaweiMap;->moveCamera(Lcom/huawei/hms/maps/CameraUpdate;)V

    return-void
.end method

.method public setMapStyle(Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapStyleOptions;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapStyleOptions;->access$900(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapStyleOptions;)Lcom/huawei/hms/maps/model/MapStyleOptions;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/HuaweiMap;->setMapStyle(Lcom/huawei/hms/maps/model/MapStyleOptions;)Z

    return-void
.end method

.method public setMapType(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Lcom/huawei/hms/maps/HuaweiMap;->setMapType(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    invoke-virtual {p1, v1}, Lcom/huawei/hms/maps/HuaweiMap;->setMapType(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/HuaweiMap;->setMyLocationEnabled(Z)V

    return-void
.end method

.method public setOnCameraIdleListener(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/HuaweiMap;->setOnCameraIdleListener(Lcom/huawei/hms/maps/HuaweiMap$OnCameraIdleListener;)V

    return-void
.end method

.method public setOnCameraMoveListener(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/HuaweiMap;->setOnCameraMoveListener(Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveListener;)V

    return-void
.end method

.method public setOnCameraMoveStartedListener(Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    new-instance v1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/HuaweiMap;->setOnCameraMoveStartedListener(Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveStartedListener;)V

    return-void
.end method

.method public setOnMapLoadedCallback(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/HuaweiMap;->setOnMapLoadedCallback(Lcom/huawei/hms/maps/HuaweiMap$OnMapLoadedCallback;)V

    return-void
.end method

.method public setOnMarkerClickListener(Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    new-instance v1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/HuaweiMap;->setOnMarkerClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnMarkerClickListener;)V

    return-void
.end method

.method public setOnMyLocationChangeListener(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->huaweiMap:Lcom/huawei/hms/maps/HuaweiMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/hms/maps/HuaweiMap;->setPadding(IIII)V

    return-void
.end method
