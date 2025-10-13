.class Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public changeDataSet(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/16 v2, 0xb

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public changeDataSetFromRes(I)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/16 v2, 0xc

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Integer;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->d(Landroid/os/IBinder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    return-object v0
.end method

.method public getRadiusUnit()I
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->b(Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setColor(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/util/Map;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setIntensity(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/16 v2, 0x8

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setIntensityMap(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/16 v2, 0x9

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/util/Map;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOpacity(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setOpacityMap(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/4 v2, 0x5

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/util/Map;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setRadius(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/4 v2, 0x6

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setRadiusMap(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/4 v2, 0x7

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/util/Map;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setRadiusUnit(I)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/16 v2, 0xa

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Integer;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IHeatMapDelegate"

    const/16 v2, 0xd

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method
