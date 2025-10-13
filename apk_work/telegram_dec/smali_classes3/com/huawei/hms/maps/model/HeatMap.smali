.class public Lcom/huawei/hms/maps/model/HeatMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Object is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public changeDataSet(Landroid/content/Context;I)V
    .locals 0

    .line 0
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {p1, p2}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->changeDataSetFromRes(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public changeDataSet(Ljava/lang/String;)V
    .locals 1

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->changeDataSet(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getRadiusUnit()Lcom/huawei/hms/maps/model/HeatMapOptions$RadiusUnit;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->getRadiusUnit()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/huawei/hms/maps/model/HeatMapOptions$RadiusUnit;->METER:Lcom/huawei/hms/maps/model/HeatMapOptions$RadiusUnit;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/huawei/hms/maps/model/HeatMapOptions$RadiusUnit;->PIXEL:Lcom/huawei/hms/maps/model/HeatMapOptions$RadiusUnit;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public remove()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->remove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setColor(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/maps/model/HeatMap;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->setColor(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setIntensity(Ljava/lang/Float;)V
    .locals 1

    .line 0
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->setIntensity(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setIntensity(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/maps/model/HeatMap;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->setIntensityMap(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setOpacity(Ljava/lang/Float;)V
    .locals 2

    .line 0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->setOpacity(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Opacity must be in the range [0..1]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOpacity(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/maps/model/HeatMap;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->setOpacityMap(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setRadius(Ljava/lang/Float;)V
    .locals 1

    .line 0
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->setRadius(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setRadius(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/maps/model/HeatMap;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->setRadiusMap(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setRadiusUnit(Lcom/huawei/hms/maps/model/HeatMapOptions$RadiusUnit;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/huawei/hms/maps/model/HeatMapOptions$RadiusUnit;->METER:Lcom/huawei/hms/maps/model/HeatMapOptions$RadiusUnit;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->setRadiusUnit(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setVisible(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/HeatMap;->a:Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IHeatMapDelegate;->setVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/feature/dynamic/RuntimeRemoteException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
