.class public Lcom/huawei/hms/maps/TextureMapView$maa;
.super Lcom/huawei/hms/maps/MapView$maa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/TextureMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "maa"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/maps/MapView$maa;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/huawei/hms/maps/internal/ICreator;Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;)Lcom/huawei/hms/maps/internal/IMapViewDelegate;
    .locals 2

    :try_start_0
    const-string v0, "TextureMapView"

    const-string v1, "createTextureMapViewDelegateRemote: "

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/maps/internal/ICreator;->newTextureMapViewDelegate(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/maps/HuaweiMapOptions;)Lcom/huawei/hms/maps/internal/IMapViewDelegate;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public bridge synthetic createDelegate(Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/huawei/hms/maps/MapView$maa;->createDelegate(Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;)V

    return-void
.end method
