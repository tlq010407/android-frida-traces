.class Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate$1;
.super Lcom/huawei/hms/maps/internal/IOnStreetViewPanoramaReadyCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;

.field final synthetic b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate$1;->b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;

    iput-object p2, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate$1;->a:Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnStreetViewPanoramaReadyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreetViewPanoramaReadyCallback(Lcom/huawei/hms/maps/internal/IStreetViewPanoramaDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate$1;->a:Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;

    new-instance v1, Lcom/huawei/hms/maps/StreetViewPanorama;

    invoke-direct {v1, p1}, Lcom/huawei/hms/maps/StreetViewPanorama;-><init>(Lcom/huawei/hms/maps/internal/IStreetViewPanoramaDelegate;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;->onStreetViewPanoramaReady(Lcom/huawei/hms/maps/StreetViewPanorama;)V

    return-void
.end method
