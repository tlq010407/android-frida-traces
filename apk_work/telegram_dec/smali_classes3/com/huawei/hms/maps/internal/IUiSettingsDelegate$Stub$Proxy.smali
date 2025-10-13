.class Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/internal/IUiSettingsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub;
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

    iput-object p1, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public getGestureScaleByMapCenter()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    return-object v0
.end method

.method public isCompassEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isIndoorLevelPickerEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isMapToolbarEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isMyLocationButtonEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isRotateGesturesEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isScrollGesturesEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isScrollGesturesEnabledDuringRotateOrZoom()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isTiltGesturesEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isZoomControlsEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isZoomGesturesEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0xb

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0xc

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setGestureScaleByMapCenter(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x16

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setIndoorLevelPickerEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0xd

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setLogoPadding(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

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

    const-string p1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 p2, 0x1c

    invoke-static {v0, p1, p2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Integer;)V

    return-void
.end method

.method public setLogoPosition(I)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x1b

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Integer;)V

    return-void
.end method

.method public setMapToolbarEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0xe

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setMarkerClusterColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x19

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Integer;)V

    return-void
.end method

.method public setMarkerClusterIcon(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x18

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/IBinder;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/IBinder;)V

    return-void
.end method

.method public setMarkerClusterTextColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x1a

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Integer;)V

    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0xf

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x10

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x11

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setScrollGesturesEnabledDuringRotateOrZoom(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x12

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setTiltGesturesEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x13

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x14

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IUiSettingsDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IUiSettingsDelegate"

    const/16 v2, 0x15

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method
