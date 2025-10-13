.class Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/internal/IMapViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub;
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

    iput-object p1, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.hms.maps.internal.IMapViewDelegate"

    return-object v0
.end method

.method public getMap()Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->j(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getMapAsync(Lcom/huawei/hms/maps/internal/IOnMapReadyCallback;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0xd

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/IBinder;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/IBinder;)V

    return-void
.end method

.method public getView()Lcom/huawei/hms/feature/dynamic/IObjectWrapper;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->j(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/feature/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/Parcelable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public onEnterAmbient(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/Parcelable;)V

    return-void
.end method

.method public onExitAmbient()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public onLowMemory()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0xa

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/Parcelable;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setActivity(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0xf

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/IBinder;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/IBinder;)V

    return-void
.end method

.method public zOrderOnTop(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/internal/IMapViewDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.internal.IMapViewDelegate"

    const/16 v2, 0xe

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method
