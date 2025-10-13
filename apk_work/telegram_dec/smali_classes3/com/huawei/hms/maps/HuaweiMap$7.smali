.class Lcom/huawei/hms/maps/HuaweiMap$7;
.super Lcom/huawei/hms/maps/internal/IInfoWindowAdapter$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setInfoWindowAdapter(Lcom/huawei/hms/maps/HuaweiMap$InfoWindowAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$InfoWindowAdapter;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$InfoWindowAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$7;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$7;->a:Lcom/huawei/hms/maps/HuaweiMap$InfoWindowAdapter;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IInfoWindowAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$7;->a:Lcom/huawei/hms/maps/HuaweiMap$InfoWindowAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/huawei/hms/maps/model/Marker;-><init>(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/HuaweiMap$InfoWindowAdapter;->getInfoContents(Lcom/huawei/hms/maps/model/Marker;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getInfoWindow(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$7;->a:Lcom/huawei/hms/maps/HuaweiMap$InfoWindowAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/huawei/hms/maps/model/Marker;-><init>(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/HuaweiMap$InfoWindowAdapter;->getInfoWindow(Lcom/huawei/hms/maps/model/Marker;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    :goto_0
    return-object p1
.end method
