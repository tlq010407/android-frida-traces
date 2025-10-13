.class Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate$Stub;
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

    iput-object p1, p0, Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public equalsRemote(Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate;)Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate"

    const/4 v2, 0x5

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IInterface;Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public getActiveLevelIndex()I
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->b(Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultLevelIndex()I
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->b(Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate"

    return-object v0
.end method

.method public getLevels()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public hashCodeRemote()I
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->b(Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isUnderground()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IIndoorBuildingDelegate"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
