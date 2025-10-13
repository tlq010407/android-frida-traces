.class Lcom/huawei/hms/maps/SupportMapFragment$mab$1;
.super Lcom/huawei/hms/maps/internal/IOnMapReadyCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/SupportMapFragment$mab;->a(Lcom/huawei/hms/maps/OnMapReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/OnMapReadyCallback;

.field final synthetic b:Lcom/huawei/hms/maps/SupportMapFragment$mab;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/SupportMapFragment$mab;Lcom/huawei/hms/maps/OnMapReadyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab$1;->b:Lcom/huawei/hms/maps/SupportMapFragment$mab;

    iput-object p2, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab$1;->a:Lcom/huawei/hms/maps/OnMapReadyCallback;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnMapReadyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab$1;->a:Lcom/huawei/hms/maps/OnMapReadyCallback;

    const-string v1, "SupportMapFragment"

    if-eqz v0, :cond_1

    const-string v0, "onMapReady: mapReadyCallback is not null"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/maps/utils/MapsAdvUtil;->containsMapsAdvance()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onMapReady: fullsdk "

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/huawei/hms/maps/provider/inhuawei/IHuaweiMapDelegate;

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab$1;->b:Lcom/huawei/hms/maps/SupportMapFragment$mab;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/mab;->a(Lcom/huawei/hms/maps/provider/inhuawei/IHuaweiMapDelegate;)Lcom/huawei/hms/maps/HuaweiMap;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab$1;->a:Lcom/huawei/hms/maps/OnMapReadyCallback;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/OnMapReadyCallback;->onMapReady(Lcom/huawei/hms/maps/HuaweiMap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab$1;->a:Lcom/huawei/hms/maps/OnMapReadyCallback;

    new-instance v1, Lcom/huawei/hms/maps/HuaweiMap;

    invoke-direct {v1, p1}, Lcom/huawei/hms/maps/HuaweiMap;-><init>(Lcom/huawei/hms/maps/internal/IHuaweiMapDelegate;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/OnMapReadyCallback;->onMapReady(Lcom/huawei/hms/maps/HuaweiMap;)V

    goto :goto_0

    :cond_1
    const-string p1, "onMapReady: mapReadyCallback is null"

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
