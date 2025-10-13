.class public Lorg/telegram/messenger/HuaweiMapsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;,
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;,
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;,
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBoundsBuilder;,
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapStyleOptions;,
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;,
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCircleOptions;,
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiUISettings;,
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiProjection;,
        Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/HuaweiMapsProvider;->initializeMaps(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getInstallMapsString()I
    .locals 1

    const v0, 0x7f0f10f2

    return v0
.end method

.method public getMapsAppPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.maps.app"

    return-object v0
.end method

.method public initializeMaps(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/huawei/hms/maps/MapsInitializer;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public loadRawResourceStyle(Landroid/content/Context;I)Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapStyleOptions;

    invoke-static {p1, p2}, Lcom/huawei/hms/maps/model/MapStyleOptions;->loadRawResourceStyle(Landroid/content/Context;I)Lcom/huawei/hms/maps/model/MapStyleOptions;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapStyleOptions;-><init>(Lcom/huawei/hms/maps/model/MapStyleOptions;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    return-object v0
.end method

.method public newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 6

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;

    new-instance v1, Lcom/huawei/hms/maps/model/LatLng;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/hms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1}, Lcom/huawei/hms/maps/CameraUpdateFactory;->newLatLng(Lcom/huawei/hms/maps/model/LatLng;)Lcom/huawei/hms/maps/CameraUpdate;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;-><init>(Lcom/huawei/hms/maps/CameraUpdate;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    return-object v0
.end method

.method public newCameraUpdateLatLngBounds(Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;I)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;

    check-cast p1, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;->access$200(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;)Lcom/huawei/hms/maps/model/LatLngBounds;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/huawei/hms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/huawei/hms/maps/model/LatLngBounds;I)Lcom/huawei/hms/maps/CameraUpdate;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;-><init>(Lcom/huawei/hms/maps/CameraUpdate;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    return-object v0
.end method

.method public newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 6

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;

    new-instance v1, Lcom/huawei/hms/maps/model/LatLng;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/hms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1, p2}, Lcom/huawei/hms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/huawei/hms/maps/model/LatLng;F)Lcom/huawei/hms/maps/CameraUpdate;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCameraUpdate;-><init>(Lcom/huawei/hms/maps/CameraUpdate;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    return-object v0
.end method

.method public onCreateCircleOptions()Lorg/telegram/messenger/IMapsProvider$ICircleOptions;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCircleOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiCircleOptions;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    return-object v0
.end method

.method public onCreateLatLngBoundsBuilder()Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBoundsBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBoundsBuilder;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    return-object v0
.end method

.method public onCreateMapView(Landroid/content/Context;)Lorg/telegram/messenger/IMapsProvider$IMapView;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;-><init>(Landroid/content/Context;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    return-object v0
.end method

.method public onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    return-object v0
.end method
