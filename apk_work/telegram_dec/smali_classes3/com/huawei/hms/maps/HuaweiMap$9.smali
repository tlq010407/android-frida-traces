.class Lcom/huawei/hms/maps/HuaweiMap$9;
.super Lcom/huawei/hms/maps/internal/IOnMarkerClickListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setOnMarkerClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnMarkerClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$OnMarkerClickListener;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMarkerClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$9;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$9;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMarkerClickListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnMarkerClickListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)Z
    .locals 1

    new-instance v0, Lcom/huawei/hms/maps/model/Marker;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/Marker;-><init>(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)V

    iget-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$9;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMarkerClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/huawei/hms/maps/HuaweiMap$OnMarkerClickListener;->onMarkerClick(Lcom/huawei/hms/maps/model/Marker;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
