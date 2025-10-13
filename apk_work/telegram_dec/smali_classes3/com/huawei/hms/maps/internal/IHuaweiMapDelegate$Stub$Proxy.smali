.class Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addCircle(Lcom/huawei/hms/maps/model/CircleOptions;)Lcom/huawei/hms/maps/model/internal/ICircleDelegate;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x19

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Parcelable;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/maps/model/internal/ICircleDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/model/internal/ICircleDelegate;

    move-result-object p1

    return-object p1
.end method

.method public addGroundOverlay(Lcom/huawei/hms/maps/model/GroundOverlayOptions;)Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x1c

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Parcelable;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate;

    move-result-object p1

    return-object p1
.end method

.method public addHeatMap(Ljava/lang/String;Lcom/huawei/hms/maps/model/HeatMapOptions;)Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, p1}, Lcom/huawei/hms/maps/model/HeatMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v2, 0x4a

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public addMarker(Lcom/huawei/hms/maps/model/MarkerOptions;)Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x18

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Parcelable;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;

    move-result-object p1

    return-object p1
.end method

.method public addPolygon(Lcom/huawei/hms/maps/model/PolygonOptions;)Lcom/huawei/hms/maps/model/internal/IPolygonDelegate;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x1a

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Parcelable;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/maps/model/internal/IPolygonDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/model/internal/IPolygonDelegate;

    move-result-object p1

    return-object p1
.end method

.method public addPolyline(Lcom/huawei/hms/maps/model/PolylineOptions;)Lcom/huawei/hms/maps/model/internal/IPolylineDelegate;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Parcelable;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/maps/model/internal/IPolylineDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/model/internal/IPolylineDelegate;

    move-result-object p1

    return-object p1
.end method

.method public addTileOverlay(Lcom/huawei/hms/maps/model/TileOverlayOptions;)Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Parcelable;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/model/internal/ITileOverlayDelegate;

    move-result-object p1

    return-object p1
.end method

.method public animateCamera(Lcom/huawei/hms/maps/model/CameraUpdateParam;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x21

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/Parcelable;)V

    return-void
.end method

.method public animateCameraWithCallback(Lcom/huawei/hms/maps/model/CameraUpdateParam;Lcom/huawei/hms/maps/internal/ICancelableCallback;)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/huawei/hms/maps/model/CameraUpdateParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 p2, 0x23

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public animateCameraWithDurationAndCallback(Lcom/huawei/hms/maps/model/CameraUpdateParam;ILcom/huawei/hms/maps/internal/ICancelableCallback;)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/huawei/hms/maps/model/CameraUpdateParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 p2, 0x24

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public getBitmapDescriptor()Lcom/huawei/hms/maps/model/internal/IBitmapDescriptorDelegate;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x44

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->j(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/model/internal/IBitmapDescriptorDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/model/internal/IBitmapDescriptorDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getCameraPosition()Lcom/huawei/hms/maps/model/CameraPosition;
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/huawei/hms/maps/model/CameraPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/maps/model/CameraPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getFocusedBuilding()Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->j(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    return-object v0
.end method

.method public getMapType()I
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->b(Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxZoomLevel()F
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->c(Landroid/os/IBinder;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getMinZoomLevel()F
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->c(Landroid/os/IBinder;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getProjection()Lcom/huawei/hms/maps/internal/IProjectionDelegate;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->j(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/IProjectionDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/internal/IProjectionDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getUiSettings()Lcom/huawei/hms/maps/internal/IUiSettingsDelegate;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->j(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/internal/IUiSettingsDelegate;

    move-result-object v0

    return-object v0
.end method

.method public isBuildingsEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isIndoorEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public moveCamera(Lcom/huawei/hms/maps/model/CameraUpdateParam;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x22

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/Parcelable;)V

    return-void
.end method

.method public previewId(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x48

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public resetMinMaxZoomPreference()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setBuildingsEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/4 v2, 0x6

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setCameraIdleListener(Lcom/huawei/hms/maps/internal/IOnCameraIdleListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x28

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setCameraMoveCanceledListener(Lcom/huawei/hms/maps/internal/IOnCameraMoveCanceledListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x27

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setCameraMoveListener(Lcom/huawei/hms/maps/internal/IOnCameraMoveListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x26

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setCameraMoveStartedListener(Lcom/huawei/hms/maps/internal/IOnCameraMoveStartedListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x25

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setCircleClickListener(Lcom/huawei/hms/maps/internal/IOnCircleClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x2a

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0xe

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setGcj02CoordinateEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x49

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setGeoPoliticalView(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x43

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setIndoorEnabled(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method public setInfoWindowAdapter(Lcom/huawei/hms/maps/internal/IInfoWindowAdapter;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x2d

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x45

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setLatLngBoundsForCameraTarget(Lcom/huawei/hms/maps/model/LatLngBounds;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x17

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/Parcelable;)V

    return-void
.end method

.method public setLiteMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x1f

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setLocationSource(Lcom/huawei/hms/maps/internal/ILocationSourceDelegate;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x3a

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setMapStyle(Lcom/huawei/hms/maps/model/MapStyleOptions;)Z
    .locals 5

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v4, 0x3b

    invoke-static {v0, p1, v4, v3, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;II[Landroid/os/Parcelable;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setMapType(I)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/4 v2, 0x7

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Integer;)V

    return-void
.end method

.method public setMarkerClickListener(Lcom/huawei/hms/maps/internal/IOnMarkerClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x33

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setMarkerDragListener(Lcom/huawei/hms/maps/internal/IOnMarkerDragListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x34

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setMarkersClustering(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x3c

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setMaxZoomPreference(F)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x10

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public setMinZoomPreference(F)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x11

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x8

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnGroundOverlayClickListener(Lcom/huawei/hms/maps/internal/IOnGroundOverlayClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x2f

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnIndoorStateChangeListener(Lcom/huawei/hms/maps/internal/IOnIndoorStateChangeListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x30

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/huawei/hms/maps/internal/IOnInfoWindowClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x2e

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnInfoWindowCloseListener(Lcom/huawei/hms/maps/internal/IOnInfoWindowCloseListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x31

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnInfoWindowLongClickListener(Lcom/huawei/hms/maps/internal/IOnInfoWindowLongClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x32

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnMapClickListener(Lcom/huawei/hms/maps/internal/IOnMapClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x36

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnMapLoadedCallback(Lcom/huawei/hms/maps/internal/IOnMapLoadedCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x1e

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnMapLongClickListener(Lcom/huawei/hms/maps/internal/IOnMapLongClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x35

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnMyLocationButtonClickListener(Lcom/huawei/hms/maps/internal/IOnMyLocationButtonClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x37

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnMyLocationChangeListener(Lcom/huawei/hms/maps/internal/IOnMyLocationChangeListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x38

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnMyLocationClickListener(Lcom/huawei/hms/maps/internal/IOnMyLocationClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x39

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnPoiClickListener(Lcom/huawei/hms/maps/internal/IOnPoiClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x3d

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnPolygonClickListener(Lcom/huawei/hms/maps/internal/IOnPolygonClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x3e

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOnPolylineClickListener(Lcom/huawei/hms/maps/internal/IOnPolylineClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x3f

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const-string p1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 p2, 0x12

    invoke-static {v0, p1, p2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Integer;)V

    return-void
.end method

.method public setPointToCenter(II)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 p2, 0x46

    invoke-static {v0, p1, p2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Integer;)V

    return-void
.end method

.method public setPolygonClickListener(Lcom/huawei/hms/maps/internal/IOnPolygonClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x2b

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setPolylineClickListener(Lcom/huawei/hms/maps/internal/IOnPolylineClickListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x2c

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setStyleId(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x47

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x13

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setWatermarkEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x14

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public snapshot(Lcom/huawei/hms/maps/internal/ISnapshotReadyCallback;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    iget-object p2, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x40

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/os/IBinder;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const-string p1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    invoke-static {p2, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/IBinder;)V

    return-void
.end method

.method public snapshotForTest(Lcom/huawei/hms/maps/internal/ISnapshotReadyCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x41

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public stopAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x42

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public useViewLifecycleWhenInFragment()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IHuaweiMapDelegate"

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
