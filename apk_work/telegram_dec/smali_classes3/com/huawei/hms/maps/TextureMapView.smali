.class public Lcom/huawei/hms/maps/TextureMapView;
.super Lcom/huawei/hms/maps/MapView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/maps/TextureMapView$maa;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/huawei/hms/maps/TextureMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/hms/maps/TextureMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/huawei/hms/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/huawei/hms/maps/HuaweiMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/huawei/hms/maps/HuaweiMapOptions;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/maps/TextureMapView;->a(Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/hms/maps/MapView;-><init>(Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;Z)V

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/maps/TextureMapView;->a(Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hms/maps/MapsInitializer;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TextureMapView"

    const-string p2, "MapsInitializer is not initialized."

    invoke-static {p1, p2}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/huawei/hms/maps/utils/MapsAdvUtil;->containsMapsBasic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/huawei/hms/maps/common/util/maa;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/hms/maps/auth/AuthClient;->getInstance()Lcom/huawei/hms/maps/auth/AuthClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/auth/AuthClient;->startAuth(Landroid/content/Context;)V

    new-instance v0, Lcom/huawei/hms/maps/MapView$mab;

    new-instance v1, Lcom/huawei/hms/maps/provider/inhuawei/MapViewDelegate;

    invoke-direct {v1, p1, p2}, Lcom/huawei/hms/maps/provider/inhuawei/MapViewDelegate;-><init>(Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/huawei/hms/maps/MapView$mab;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/huawei/hms/maps/internal/IMapViewDelegate;)V

    :goto_0
    iput-object v0, p0, Lcom/huawei/hms/maps/MapView;->a:Lcom/huawei/hms/maps/MapLifecycleDelegate;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/huawei/hms/maps/TextureMapView$maa;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/hms/maps/TextureMapView$maa;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;)V

    goto :goto_0

    :goto_1
    return-void
.end method
